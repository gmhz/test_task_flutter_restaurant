import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_task/drift/app_database.dart';
import 'package:test_task/drift/provider.dart';

part 'goods.g.dart';

@riverpod
class Goods extends _$Goods {
  @override
  Stream<List<Good>> build({int categoryId = 0}) {
    return ref.watch(driftDatabaseProvider).goodsDao.watchAll(categoryId: categoryId);
  }
}

@Riverpod(keepAlive: true)
class SelectedGoods extends _$SelectedGoods {
  @override
  IMap<Good, int> build() {
    return IMap();
  }

  void update(Good good, int count) {
    if (state[good] == null) {
      state = state.add(good, 1);
      return;
    } else {
      state = state.add(good, state[good]! + 1);
    }
  }

  void decrease(Good good) {
    if (state[good] == null) {
      return;
    } else {
      if (state[good]! <= 1) {
        state = state.remove(good);
      } else {
        state = state.add(good, state[good]! - 1);
      }
    }
  }

  void increase(Good good) {
    if (state[good] == null) {
      return;
    } else {
      state = state.add(good, state[good]! + 1);
    }
  }

  void clear() {
    state = IMap();
  }
}
