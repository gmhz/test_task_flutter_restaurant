part of '../app_database.dart';

class GoodCategories extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text()();

  IntColumn get parentCategoryId => integer().withDefault(const Constant(0))();
}

@DriftAccessor(tables: [GoodCategories])
class GoodCategoriesDao extends DatabaseAccessor<AppDatabase> with _$GoodCategoriesDaoMixin {
  GoodCategoriesDao(super.db);

  Future<void> generate3Items({int parentCategoryId = 0}) async {
    final items = [
      0,
      ...(await select(db.goodCategories).get()).map((e) => e.id),
    ];
    var randomNames = RandomNames();
    return batch((b) async {
      for (var i = 0; i < 3; i++) {
        b.insert(
          goodCategories,
          GoodCategoriesCompanion(
            title: Value(randomNames.name()),
            parentCategoryId: Value(items.elementAt(Random().nextInt(items.length))),
          ),
        );
      }
    });
  }

  Stream<List<GoodCategory>> watchAll({int parentId = 0}) {
    return (select(goodCategories)..where((t) => t.parentCategoryId.equals(parentId))).watch();
  }

  Stream<GoodCategory?> watchById({int id = 0}) {
    return (select(goodCategories)..where((t) => t.id.equals(id)))
        .watchSingleOrNull();
  }
}
