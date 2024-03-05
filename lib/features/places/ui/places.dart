import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_task/features/categories/logic/categories.dart';
import 'package:test_task/features/goods/ui/goods.dart';

import '../logic/places.dart';

class PlacesPage extends ConsumerWidget {
  const PlacesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final places = ref.watch(placesProvider);

    Widget current = places.when(
      data: (places) {
        return ListView.builder(
          itemCount: places.length,
          itemBuilder: (context, index) {
            final place = places[index];
            return ListTile(
              title: Text(place.title),
              trailing: Text('${place.id}'),
              onTap: () {
                ref.read(selectedPlaceIdProvider.notifier).select(place.id);
                ref.read(selectedCategoryProvider.notifier).select(0);

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const GoodsPage(),
                  ),
                );
              },
            );
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
        title: const Text('Places'),
      ),
      body: current,
    );
  }
}
