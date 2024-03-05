import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_task/drift/provider.dart';

import 'features/categories/logic/categories.dart';
import 'features/created_orders/ui/created_orders.dart';
import 'features/goods/logic/goods.dart';
import 'features/places/logic/places.dart';
import 'features/places/ui/places.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(getCategoriesProvider()).value;
    final availableGoods = ref.watch(goodsProvider()).value;
    final availablePlaces = ref.watch(placesProvider).value;

    print('categories.length: ${categories?.length}');
    print('availableGoods.length: ${availableGoods?.length}');
    print('availablePlaces.length: ${availablePlaces?.length}');

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity),
          ElevatedButton(
            onPressed: () {
              ref.read(driftDatabaseProvider).goodCategoriesDao.generate3Items();
            },
            child: const Text('Generate CATEGORIES'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              ref.read(driftDatabaseProvider).goodsDao.generate5Items();
            },
            child: const Text('Generate GOODS'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              ref.read(driftDatabaseProvider).orderPlacesDao.generate7Items();
            },
            child: const Text('Generate PLACES'),
          ),
          const SizedBox(height: 16),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const PlacesPage(),
                ),
              );
            },
            child: const Text('ShowPlaces'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CreatedOrdersPage(),
                ),
              );
            },
            child: const Text('ShowCreatedOrders'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              final db = ref.read(driftDatabaseProvider);
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DriftDbViewer(db)),
              );
            },
            child: const Text('Show DB'),
          ),
        ],
      ),
    );
  }
}
