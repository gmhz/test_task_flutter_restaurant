part of '../app_database.dart';

class OrderPlaces extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text()();

  IntColumn get parentCategoryId => integer().withDefault(const Constant(0))();
}

@DriftAccessor(tables: [OrderPlaces])
class OrderPlacesDao extends DatabaseAccessor<AppDatabase> with _$OrderPlacesDaoMixin {
  OrderPlacesDao(super.db);

  Future<void> generate7Items({int parentCategoryId = 0}) async {
    var randomNames = RandomNames();
    return batch((b) async {
      for (var i = 0; i < 7; i++) {
        b.insert(
          orderPlaces,
          OrderPlacesCompanion(
            title: Value(randomNames.name()),
            parentCategoryId: Value(parentCategoryId),
          ),
        );
      }
    });
  }

  Stream<List<OrderPlace>> watchAll() {
    return select(orderPlaces).watch();
  }
}
