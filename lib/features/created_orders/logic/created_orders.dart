import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_task/drift/app_database.dart';
import 'package:test_task/drift/provider.dart';

part 'created_orders.g.dart';

@riverpod
class CreatedOrders extends _$CreatedOrders {
  @override
  Stream<List<Order>> build() {
    return ref.watch(driftDatabaseProvider).ordersDao.watchAll();
  }
}

@riverpod
class GetGoodsByOrderId extends _$GetGoodsByOrderId {
  @override
  Stream<List<(Good, int)>> build(int orderId) {
    print('GetGoodsByOrderId orderId: $orderId');
    return ref.watch(driftDatabaseProvider).goodsDao.watchGoodsWithCountByIds(orderId);
  }
}
