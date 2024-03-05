import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'drift/app_database.dart';
import 'drift/provider.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final queryExecutor = await AppDatabase.openConnection();

  runApp(
    ProviderScope(
      overrides: [
        driftDatabaseProvider.overrideWithValue(AppDatabase(queryExecutor)),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    ),
  );
}

