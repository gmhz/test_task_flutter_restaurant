part of '../app_database.dart';

class Goods extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text()();

  IntColumn get price => integer()();

  IntColumn get categoryId => integer().withDefault(const Constant(0))();
}

@DriftAccessor(tables: [Goods])
class GoodsDao extends DatabaseAccessor<AppDatabase> with _$GoodsDaoMixin {
  GoodsDao(super.db);

  Future<void> generate5Items({int categoryId = 0}) async {
    final items = [
      0,
      ...(await select(db.goodCategories).get()).map((e) => e.id),
    ];
    var randomNames = RandomNames();
    return batch((b) async {
      for (var i = 0; i < 5; i++) {
        b.insert(
          goods,
          GoodsCompanion(
            title: Value(randomNames.fullName()),
            price: Value(Random().nextInt(800) + 100),
            categoryId: Value(items.elementAt(Random().nextInt(items.length))),
          ),
        );
      }
    });
  }

  Stream<List<Good>> watchAll({int categoryId = 0}) {
    return (select(goods)..where((t) => t.categoryId.equals(categoryId))).watch();
  }

  Stream<List<(Good, int)>> watchGoodsWithCountByIds(int orderId) {
    final query = select(goods).join([
      innerJoin(
        db.orderGoods,
        db.orderGoods.goodId.equalsExp(goods.id),
        useColumns: true,
      ),
    ])
      ..where(db.orderGoods.orderId.equals(orderId));

    print('query: ${query.constructQuery().sql}');
    return query.watch().map((rows) {
      return rows.map((row) {
        return (row.readTable(goods), row.readTable(db.orderGoods).goodCount);
      }).toList();
    });
  }
}
