import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_task/drift/app_database.dart';
import 'package:test_task/drift/provider.dart';

part 'categories.g.dart';

@riverpod
class GetCategories extends _$GetCategories {
  @override
  Stream<List<GoodCategory>> build({int parentId = 0}) {
    return ref.watch(driftDatabaseProvider).goodCategoriesDao.watchAll(parentId: parentId);
  }
}

@riverpod
class GetCategory extends _$GetCategory {
  @override
  Stream<GoodCategory?> build({int categoryId = 0}) {
    return ref.watch(driftDatabaseProvider).goodCategoriesDao.watchById(id: categoryId);
  }
}

@Riverpod(keepAlive: true)
class SelectedCategory extends _$SelectedCategory {
  @override
  int build() {
    return 0;
  }

  void select(int categoryId) {
    state = categoryId;
  }
}
