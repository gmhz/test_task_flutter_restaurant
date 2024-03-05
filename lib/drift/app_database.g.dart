// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $GoodsTable extends Goods with TableInfo<$GoodsTable, Good> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GoodsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<int> price = GeneratedColumn<int>(
      'price', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns => [id, title, price, categoryId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'goods';
  @override
  VerificationContext validateIntegrity(Insertable<Good> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Good map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Good(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}price'])!,
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id'])!,
    );
  }

  @override
  $GoodsTable createAlias(String alias) {
    return $GoodsTable(attachedDatabase, alias);
  }
}

class Good extends DataClass implements Insertable<Good> {
  final int id;
  final String title;
  final int price;
  final int categoryId;
  const Good(
      {required this.id,
      required this.title,
      required this.price,
      required this.categoryId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['price'] = Variable<int>(price);
    map['category_id'] = Variable<int>(categoryId);
    return map;
  }

  GoodsCompanion toCompanion(bool nullToAbsent) {
    return GoodsCompanion(
      id: Value(id),
      title: Value(title),
      price: Value(price),
      categoryId: Value(categoryId),
    );
  }

  factory Good.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Good(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      price: serializer.fromJson<int>(json['price']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'price': serializer.toJson<int>(price),
      'categoryId': serializer.toJson<int>(categoryId),
    };
  }

  Good copyWith({int? id, String? title, int? price, int? categoryId}) => Good(
        id: id ?? this.id,
        title: title ?? this.title,
        price: price ?? this.price,
        categoryId: categoryId ?? this.categoryId,
      );
  @override
  String toString() {
    return (StringBuffer('Good(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('price: $price, ')
          ..write('categoryId: $categoryId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, price, categoryId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Good &&
          other.id == this.id &&
          other.title == this.title &&
          other.price == this.price &&
          other.categoryId == this.categoryId);
}

class GoodsCompanion extends UpdateCompanion<Good> {
  final Value<int> id;
  final Value<String> title;
  final Value<int> price;
  final Value<int> categoryId;
  const GoodsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.price = const Value.absent(),
    this.categoryId = const Value.absent(),
  });
  GoodsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required int price,
    this.categoryId = const Value.absent(),
  })  : title = Value(title),
        price = Value(price);
  static Insertable<Good> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<int>? price,
    Expression<int>? categoryId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (price != null) 'price': price,
      if (categoryId != null) 'category_id': categoryId,
    });
  }

  GoodsCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<int>? price,
      Value<int>? categoryId}) {
    return GoodsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
      categoryId: categoryId ?? this.categoryId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (price.present) {
      map['price'] = Variable<int>(price.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GoodsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('price: $price, ')
          ..write('categoryId: $categoryId')
          ..write(')'))
        .toString();
  }
}

class $GoodCategoriesTable extends GoodCategories
    with TableInfo<$GoodCategoriesTable, GoodCategory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GoodCategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _parentCategoryIdMeta =
      const VerificationMeta('parentCategoryId');
  @override
  late final GeneratedColumn<int> parentCategoryId = GeneratedColumn<int>(
      'parent_category_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns => [id, title, parentCategoryId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'good_categories';
  @override
  VerificationContext validateIntegrity(Insertable<GoodCategory> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('parent_category_id')) {
      context.handle(
          _parentCategoryIdMeta,
          parentCategoryId.isAcceptableOrUnknown(
              data['parent_category_id']!, _parentCategoryIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GoodCategory map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GoodCategory(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      parentCategoryId: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}parent_category_id'])!,
    );
  }

  @override
  $GoodCategoriesTable createAlias(String alias) {
    return $GoodCategoriesTable(attachedDatabase, alias);
  }
}

class GoodCategory extends DataClass implements Insertable<GoodCategory> {
  final int id;
  final String title;
  final int parentCategoryId;
  const GoodCategory(
      {required this.id, required this.title, required this.parentCategoryId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['parent_category_id'] = Variable<int>(parentCategoryId);
    return map;
  }

  GoodCategoriesCompanion toCompanion(bool nullToAbsent) {
    return GoodCategoriesCompanion(
      id: Value(id),
      title: Value(title),
      parentCategoryId: Value(parentCategoryId),
    );
  }

  factory GoodCategory.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GoodCategory(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      parentCategoryId: serializer.fromJson<int>(json['parentCategoryId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'parentCategoryId': serializer.toJson<int>(parentCategoryId),
    };
  }

  GoodCategory copyWith({int? id, String? title, int? parentCategoryId}) =>
      GoodCategory(
        id: id ?? this.id,
        title: title ?? this.title,
        parentCategoryId: parentCategoryId ?? this.parentCategoryId,
      );
  @override
  String toString() {
    return (StringBuffer('GoodCategory(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('parentCategoryId: $parentCategoryId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, parentCategoryId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GoodCategory &&
          other.id == this.id &&
          other.title == this.title &&
          other.parentCategoryId == this.parentCategoryId);
}

class GoodCategoriesCompanion extends UpdateCompanion<GoodCategory> {
  final Value<int> id;
  final Value<String> title;
  final Value<int> parentCategoryId;
  const GoodCategoriesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.parentCategoryId = const Value.absent(),
  });
  GoodCategoriesCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.parentCategoryId = const Value.absent(),
  }) : title = Value(title);
  static Insertable<GoodCategory> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<int>? parentCategoryId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (parentCategoryId != null) 'parent_category_id': parentCategoryId,
    });
  }

  GoodCategoriesCompanion copyWith(
      {Value<int>? id, Value<String>? title, Value<int>? parentCategoryId}) {
    return GoodCategoriesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      parentCategoryId: parentCategoryId ?? this.parentCategoryId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (parentCategoryId.present) {
      map['parent_category_id'] = Variable<int>(parentCategoryId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GoodCategoriesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('parentCategoryId: $parentCategoryId')
          ..write(')'))
        .toString();
  }
}

class $OrderPlacesTable extends OrderPlaces
    with TableInfo<$OrderPlacesTable, OrderPlace> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderPlacesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _parentCategoryIdMeta =
      const VerificationMeta('parentCategoryId');
  @override
  late final GeneratedColumn<int> parentCategoryId = GeneratedColumn<int>(
      'parent_category_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns => [id, title, parentCategoryId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_places';
  @override
  VerificationContext validateIntegrity(Insertable<OrderPlace> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('parent_category_id')) {
      context.handle(
          _parentCategoryIdMeta,
          parentCategoryId.isAcceptableOrUnknown(
              data['parent_category_id']!, _parentCategoryIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OrderPlace map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderPlace(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      parentCategoryId: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}parent_category_id'])!,
    );
  }

  @override
  $OrderPlacesTable createAlias(String alias) {
    return $OrderPlacesTable(attachedDatabase, alias);
  }
}

class OrderPlace extends DataClass implements Insertable<OrderPlace> {
  final int id;
  final String title;
  final int parentCategoryId;
  const OrderPlace(
      {required this.id, required this.title, required this.parentCategoryId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['parent_category_id'] = Variable<int>(parentCategoryId);
    return map;
  }

  OrderPlacesCompanion toCompanion(bool nullToAbsent) {
    return OrderPlacesCompanion(
      id: Value(id),
      title: Value(title),
      parentCategoryId: Value(parentCategoryId),
    );
  }

  factory OrderPlace.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderPlace(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      parentCategoryId: serializer.fromJson<int>(json['parentCategoryId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'parentCategoryId': serializer.toJson<int>(parentCategoryId),
    };
  }

  OrderPlace copyWith({int? id, String? title, int? parentCategoryId}) =>
      OrderPlace(
        id: id ?? this.id,
        title: title ?? this.title,
        parentCategoryId: parentCategoryId ?? this.parentCategoryId,
      );
  @override
  String toString() {
    return (StringBuffer('OrderPlace(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('parentCategoryId: $parentCategoryId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, parentCategoryId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderPlace &&
          other.id == this.id &&
          other.title == this.title &&
          other.parentCategoryId == this.parentCategoryId);
}

class OrderPlacesCompanion extends UpdateCompanion<OrderPlace> {
  final Value<int> id;
  final Value<String> title;
  final Value<int> parentCategoryId;
  const OrderPlacesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.parentCategoryId = const Value.absent(),
  });
  OrderPlacesCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.parentCategoryId = const Value.absent(),
  }) : title = Value(title);
  static Insertable<OrderPlace> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<int>? parentCategoryId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (parentCategoryId != null) 'parent_category_id': parentCategoryId,
    });
  }

  OrderPlacesCompanion copyWith(
      {Value<int>? id, Value<String>? title, Value<int>? parentCategoryId}) {
    return OrderPlacesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      parentCategoryId: parentCategoryId ?? this.parentCategoryId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (parentCategoryId.present) {
      map['parent_category_id'] = Variable<int>(parentCategoryId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderPlacesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('parentCategoryId: $parentCategoryId')
          ..write(')'))
        .toString();
  }
}

class $OrdersTable extends Orders with TableInfo<$OrdersTable, Order> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrdersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _totalPriceMeta =
      const VerificationMeta('totalPrice');
  @override
  late final GeneratedColumn<int> totalPrice = GeneratedColumn<int>(
      'total_price', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, totalPrice];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'orders';
  @override
  VerificationContext validateIntegrity(Insertable<Order> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('total_price')) {
      context.handle(
          _totalPriceMeta,
          totalPrice.isAcceptableOrUnknown(
              data['total_price']!, _totalPriceMeta));
    } else if (isInserting) {
      context.missing(_totalPriceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Order map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Order(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      totalPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_price'])!,
    );
  }

  @override
  $OrdersTable createAlias(String alias) {
    return $OrdersTable(attachedDatabase, alias);
  }
}

class Order extends DataClass implements Insertable<Order> {
  final int id;
  final int totalPrice;
  const Order({required this.id, required this.totalPrice});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['total_price'] = Variable<int>(totalPrice);
    return map;
  }

  OrdersCompanion toCompanion(bool nullToAbsent) {
    return OrdersCompanion(
      id: Value(id),
      totalPrice: Value(totalPrice),
    );
  }

  factory Order.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Order(
      id: serializer.fromJson<int>(json['id']),
      totalPrice: serializer.fromJson<int>(json['totalPrice']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'totalPrice': serializer.toJson<int>(totalPrice),
    };
  }

  Order copyWith({int? id, int? totalPrice}) => Order(
        id: id ?? this.id,
        totalPrice: totalPrice ?? this.totalPrice,
      );
  @override
  String toString() {
    return (StringBuffer('Order(')
          ..write('id: $id, ')
          ..write('totalPrice: $totalPrice')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, totalPrice);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Order &&
          other.id == this.id &&
          other.totalPrice == this.totalPrice);
}

class OrdersCompanion extends UpdateCompanion<Order> {
  final Value<int> id;
  final Value<int> totalPrice;
  const OrdersCompanion({
    this.id = const Value.absent(),
    this.totalPrice = const Value.absent(),
  });
  OrdersCompanion.insert({
    this.id = const Value.absent(),
    required int totalPrice,
  }) : totalPrice = Value(totalPrice);
  static Insertable<Order> custom({
    Expression<int>? id,
    Expression<int>? totalPrice,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (totalPrice != null) 'total_price': totalPrice,
    });
  }

  OrdersCompanion copyWith({Value<int>? id, Value<int>? totalPrice}) {
    return OrdersCompanion(
      id: id ?? this.id,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (totalPrice.present) {
      map['total_price'] = Variable<int>(totalPrice.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrdersCompanion(')
          ..write('id: $id, ')
          ..write('totalPrice: $totalPrice')
          ..write(')'))
        .toString();
  }
}

class $OrderGoodsTable extends OrderGoods
    with TableInfo<$OrderGoodsTable, OrderGood> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderGoodsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _goodIdMeta = const VerificationMeta('goodId');
  @override
  late final GeneratedColumn<int> goodId = GeneratedColumn<int>(
      'good_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _goodCountMeta =
      const VerificationMeta('goodCount');
  @override
  late final GeneratedColumn<int> goodCount = GeneratedColumn<int>(
      'good_count', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  static const VerificationMeta _orderIdMeta =
      const VerificationMeta('orderId');
  @override
  late final GeneratedColumn<int> orderId = GeneratedColumn<int>(
      'order_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns => [id, goodId, goodCount, orderId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_goods';
  @override
  VerificationContext validateIntegrity(Insertable<OrderGood> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('good_id')) {
      context.handle(_goodIdMeta,
          goodId.isAcceptableOrUnknown(data['good_id']!, _goodIdMeta));
    } else if (isInserting) {
      context.missing(_goodIdMeta);
    }
    if (data.containsKey('good_count')) {
      context.handle(_goodCountMeta,
          goodCount.isAcceptableOrUnknown(data['good_count']!, _goodCountMeta));
    }
    if (data.containsKey('order_id')) {
      context.handle(_orderIdMeta,
          orderId.isAcceptableOrUnknown(data['order_id']!, _orderIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OrderGood map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderGood(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      goodId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}good_id'])!,
      goodCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}good_count'])!,
      orderId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_id'])!,
    );
  }

  @override
  $OrderGoodsTable createAlias(String alias) {
    return $OrderGoodsTable(attachedDatabase, alias);
  }
}

class OrderGood extends DataClass implements Insertable<OrderGood> {
  final int id;
  final int goodId;
  final int goodCount;
  final int orderId;
  const OrderGood(
      {required this.id,
      required this.goodId,
      required this.goodCount,
      required this.orderId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['good_id'] = Variable<int>(goodId);
    map['good_count'] = Variable<int>(goodCount);
    map['order_id'] = Variable<int>(orderId);
    return map;
  }

  OrderGoodsCompanion toCompanion(bool nullToAbsent) {
    return OrderGoodsCompanion(
      id: Value(id),
      goodId: Value(goodId),
      goodCount: Value(goodCount),
      orderId: Value(orderId),
    );
  }

  factory OrderGood.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderGood(
      id: serializer.fromJson<int>(json['id']),
      goodId: serializer.fromJson<int>(json['goodId']),
      goodCount: serializer.fromJson<int>(json['goodCount']),
      orderId: serializer.fromJson<int>(json['orderId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'goodId': serializer.toJson<int>(goodId),
      'goodCount': serializer.toJson<int>(goodCount),
      'orderId': serializer.toJson<int>(orderId),
    };
  }

  OrderGood copyWith({int? id, int? goodId, int? goodCount, int? orderId}) =>
      OrderGood(
        id: id ?? this.id,
        goodId: goodId ?? this.goodId,
        goodCount: goodCount ?? this.goodCount,
        orderId: orderId ?? this.orderId,
      );
  @override
  String toString() {
    return (StringBuffer('OrderGood(')
          ..write('id: $id, ')
          ..write('goodId: $goodId, ')
          ..write('goodCount: $goodCount, ')
          ..write('orderId: $orderId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, goodId, goodCount, orderId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderGood &&
          other.id == this.id &&
          other.goodId == this.goodId &&
          other.goodCount == this.goodCount &&
          other.orderId == this.orderId);
}

class OrderGoodsCompanion extends UpdateCompanion<OrderGood> {
  final Value<int> id;
  final Value<int> goodId;
  final Value<int> goodCount;
  final Value<int> orderId;
  const OrderGoodsCompanion({
    this.id = const Value.absent(),
    this.goodId = const Value.absent(),
    this.goodCount = const Value.absent(),
    this.orderId = const Value.absent(),
  });
  OrderGoodsCompanion.insert({
    this.id = const Value.absent(),
    required int goodId,
    this.goodCount = const Value.absent(),
    this.orderId = const Value.absent(),
  }) : goodId = Value(goodId);
  static Insertable<OrderGood> custom({
    Expression<int>? id,
    Expression<int>? goodId,
    Expression<int>? goodCount,
    Expression<int>? orderId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (goodId != null) 'good_id': goodId,
      if (goodCount != null) 'good_count': goodCount,
      if (orderId != null) 'order_id': orderId,
    });
  }

  OrderGoodsCompanion copyWith(
      {Value<int>? id,
      Value<int>? goodId,
      Value<int>? goodCount,
      Value<int>? orderId}) {
    return OrderGoodsCompanion(
      id: id ?? this.id,
      goodId: goodId ?? this.goodId,
      goodCount: goodCount ?? this.goodCount,
      orderId: orderId ?? this.orderId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (goodId.present) {
      map['good_id'] = Variable<int>(goodId.value);
    }
    if (goodCount.present) {
      map['good_count'] = Variable<int>(goodCount.value);
    }
    if (orderId.present) {
      map['order_id'] = Variable<int>(orderId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderGoodsCompanion(')
          ..write('id: $id, ')
          ..write('goodId: $goodId, ')
          ..write('goodCount: $goodCount, ')
          ..write('orderId: $orderId')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $GoodsTable goods = $GoodsTable(this);
  late final $GoodCategoriesTable goodCategories = $GoodCategoriesTable(this);
  late final $OrderPlacesTable orderPlaces = $OrderPlacesTable(this);
  late final $OrdersTable orders = $OrdersTable(this);
  late final $OrderGoodsTable orderGoods = $OrderGoodsTable(this);
  late final Index orderGoodsOrderIdIdx = Index('order_goods_order_id_idx',
      'CREATE INDEX order_goods_order_id_idx ON order_goods (order_id)');
  late final GoodsDao goodsDao = GoodsDao(this as AppDatabase);
  late final GoodCategoriesDao goodCategoriesDao =
      GoodCategoriesDao(this as AppDatabase);
  late final OrderGoodsDao orderGoodsDao = OrderGoodsDao(this as AppDatabase);
  late final OrderPlacesDao orderPlacesDao =
      OrderPlacesDao(this as AppDatabase);
  late final OrdersDao ordersDao = OrdersDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        goods,
        goodCategories,
        orderPlaces,
        orders,
        orderGoods,
        orderGoodsOrderIdIdx
      ];
}

mixin _$GoodsDaoMixin on DatabaseAccessor<AppDatabase> {
  $GoodsTable get goods => attachedDatabase.goods;
}
mixin _$GoodCategoriesDaoMixin on DatabaseAccessor<AppDatabase> {
  $GoodCategoriesTable get goodCategories => attachedDatabase.goodCategories;
}
mixin _$OrderGoodsDaoMixin on DatabaseAccessor<AppDatabase> {
  $OrderGoodsTable get orderGoods => attachedDatabase.orderGoods;
}
mixin _$OrderPlacesDaoMixin on DatabaseAccessor<AppDatabase> {
  $OrderPlacesTable get orderPlaces => attachedDatabase.orderPlaces;
}
mixin _$OrdersDaoMixin on DatabaseAccessor<AppDatabase> {
  $OrdersTable get orders => attachedDatabase.orders;
}
