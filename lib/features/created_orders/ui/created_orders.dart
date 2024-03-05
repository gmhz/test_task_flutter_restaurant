import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_task/drift/app_database.dart';

import '../logic/created_orders.dart';

class CreatedOrdersPage extends ConsumerWidget {
  const CreatedOrdersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orders = ref.watch(createdOrdersProvider);

    Widget current = orders.when(
      data: (createdOrders) {
        return ListView.builder(
          itemCount: createdOrders.length,
          itemBuilder: (context, index) {
            final order = createdOrders[index];
            return _Item(order);
          },
        );
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, stackTrace) {
        return Center(
          child: Text('Error: $error'),
        );
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Created orders'),
      ),
      body: current,
    );
  }
}

class _Item extends ConsumerWidget {
  const _Item(this.order);

  final Order order;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goods = ref.watch(getGoodsByOrderIdProvider(order.id)).valueOrNull;

    print('goods: ${goods}');
    print('goods.length: ${goods?.length}');
    return ListTile(
      title: Text('Order #${order.id}'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: goods != null
            ? goods.map((e) {
                final good = e.$1;
                final count = e.$2;
                print('${good.title}, ${good.price} x $count');
                return Text('${good.title}, ${good.price} x $count');
              }).toList()
            : [],
      ),
      trailing: Text('Total: ${order.totalPrice}'),
    );
  }
}
