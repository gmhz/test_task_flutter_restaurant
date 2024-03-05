part of '../app_database.dart';

@TableIndex(name: 'order_goods_order_id_idx', columns: {#orderId})
class OrderGoods extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get goodId => integer()();

  IntColumn get goodCount => integer().withDefault(const Constant(1))();

  IntColumn get orderId => integer().withDefault(const Constant(0))();
}

@DriftAccessor(tables: [OrderGoods])
class OrderGoodsDao extends DatabaseAccessor<AppDatabase> with _$OrderGoodsDaoMixin {
  OrderGoodsDao(super.db);

  Future<void> createOrderGood(IMap<Good, int> mapGoodAndCounts, int orderId) async {
    await batch((b) {
      for (var entry in mapGoodAndCounts.entries) {
        final goodId = entry.key.id;
        final count = entry.value;
        b.insert(
          orderGoods,
          OrderGoodsCompanion.insert(
            orderId: Value(orderId),
            goodId: goodId,
            goodCount: Value(count),
          ),
        );
      }
    });
  }

  Stream<List<OrderGood>> watchAll() {
    return select(orderGoods).watch();
  }
}
