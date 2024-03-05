part of '../app_database.dart';

class Orders extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get totalPrice => integer()();
}

@DriftAccessor(tables: [Orders])
class OrdersDao extends DatabaseAccessor<AppDatabase> with _$OrdersDaoMixin {
  OrdersDao(super.db);

  Future<void> createOrder(IMap<Good, int> mapGoodAndCounts) async {
    final totalPrice =
        mapGoodAndCounts.entries.map((e) => e.key.price * e.value).reduce((a, b) => a + b);
    final orderId = await into(orders).insert(
      OrdersCompanion.insert(totalPrice: totalPrice),
    );

    await db.orderGoodsDao.createOrderGood(mapGoodAndCounts, orderId);
  }

  Stream<List<Order>> watchAll() {
    return select(orders).watch();
  }
}
