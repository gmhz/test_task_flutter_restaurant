import 'dart:io';
import 'dart:math';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:random_name_generator/random_name_generator.dart';

part 'app_database.g.dart';

part 'tables/good.dart';

part 'tables/good_category.dart';

part 'tables/order_place.dart';

part 'tables/orders.dart';

part 'tables/order_goods.dart';

@DriftDatabase(
  tables: [
    Goods,
    GoodCategories,
    OrderPlaces,
    Orders,
    OrderGoods,
  ],
  daos: [
    GoodsDao,
    GoodCategoriesDao,
    OrderGoodsDao,
    OrderPlacesDao,
    OrdersDao,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor queryExecutor) : super(queryExecutor);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
    );
  }

  static Future<QueryExecutor> openConnection() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'red_pay.sqlite'));
    final db = NativeDatabase.createInBackground(file);
    return db;
  }
}
