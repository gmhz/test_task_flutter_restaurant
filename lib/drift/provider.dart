import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'app_database.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
AppDatabase driftDatabase(DriftDatabaseRef ref) => throw ('Need override');
