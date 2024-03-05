import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_task/drift/provider.dart';
import 'package:test_task/features/categories/logic/categories.dart';

import '../logic/goods.dart';

class GoodsPage extends ConsumerWidget {
  const GoodsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final halfScreenHeight = MediaQuery.of(context).size.height / 2;

    final selectedCategoryId = ref.watch(selectedCategoryProvider);
    final categories = ref.watch(getCategoriesProvider(parentId: selectedCategoryId)).value;
    final availableGoods = ref.watch(goodsProvider(categoryId: selectedCategoryId)).value;

    final selectedGoods = ref.watch(selectedGoodsProvider);
    final selectedCategory = ref.watch(getCategoryProvider(categoryId: selectedCategoryId)).value;

    Widget current = CustomScrollView(
      slivers: [
        if (selectedGoods.isNotEmpty)
          SliverPersistentHeader(
            delegate: _AddedItemsHeaderDelegate(
              maxHeight: (selectedGoods.length * 80.0).clamp(80, halfScreenHeight),
            ),
            floating: true,
            pinned: true,
          ),
        if (selectedCategory != null)
          SliverToBoxAdapter(
            child: ListTile(
              leading: const Icon(Icons.arrow_back),
              title: const Text('..'),
              onTap: () => ref
                  .read(selectedCategoryProvider.notifier)
                  .select(selectedCategory.parentCategoryId),
            ),
          ),
        if (categories != null)
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final good = categories[index];
                return ListTile(
                  title: Text(good.title),
                  leading: const Icon(Icons.folder),
                  onTap: () {
                    ref.read(selectedCategoryProvider.notifier).select(good.id);
                  },
                );
              },
              childCount: categories.length,
            ),
          ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 24),
        ),
        if (availableGoods != null)
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final good = availableGoods[index];
                return ListTile(
                  title: Text(good.title),
                  leading: const Icon(Icons.fastfood),
                  trailing: const Icon(Icons.add),
                  onTap: () {
                    ref.read(selectedGoodsProvider.notifier).update(good, 1);
                  },
                );
              },
              childCount: availableGoods.length,
            ),
          ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Goods'),
      ),
      body: current,
    );
  }
}

class _AddedItemsHeaderDelegate extends SliverPersistentHeaderDelegate {
  const _AddedItemsHeaderDelegate({
    this.maxHeight = 120,
  });

  final double maxHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final goods = ref.watch(selectedGoodsProvider);
        Widget current = ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            if (goods.length == index) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: () async {
                    await ref.read(driftDatabaseProvider).ordersDao.createOrder(goods);
                    ref.read(selectedGoodsProvider.notifier).clear();
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  child: const Text("Create order"),
                ),
              );
            }

            final item = goods.entries.elementAt(index);
            return ListTile(
              title: Text(item.key.title),
              leading: const Icon(Icons.fastfood),
              subtitle: Row(
                children: [
                  IconButton(
                    onPressed: () => ref.read(selectedGoodsProvider.notifier).decrease(item.key),
                    icon: const Icon(Icons.remove),
                  ),
                  Text('${item.value}'),
                  IconButton(
                    onPressed: () => ref.read(selectedGoodsProvider.notifier).increase(item.key),
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            );
          },
          itemCount: goods.length + 1,
        );

        current = DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            color: Colors.white,
          ),
          child: current,
        );

        current = Stack(
          children: [
            Positioned.fill(
              child: current,
            ),
            Positioned(
              top: 4,
              right: 4,
              child: Text('Total: ${goods.entries.map((e) => e.value).reduce((a, b) => a + b)}'),
            ),
          ],
        );

        return current;
      },
    );
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
