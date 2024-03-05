import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_task/drift/app_database.dart';
import 'package:test_task/drift/provider.dart';

part 'places.g.dart';

@riverpod
class Places extends _$Places {
  @override
  Stream<List<OrderPlace>> build() {
    return ref.watch(driftDatabaseProvider).orderPlacesDao.watchAll();
  }
}

@Riverpod(
  keepAlive: true
)
class SelectedPlaceId extends _$SelectedPlaceId {
  @override
  int build() {
    return 0;
  }

  void select(int placeId) {
    state = placeId;
  }
}
