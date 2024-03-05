// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCategoriesHash() => r'67239fc7445d67df088697495647950927395305';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$GetCategories
    extends BuildlessAutoDisposeStreamNotifier<List<GoodCategory>> {
  late final int parentId;

  Stream<List<GoodCategory>> build({
    int parentId = 0,
  });
}

/// See also [GetCategories].
@ProviderFor(GetCategories)
const getCategoriesProvider = GetCategoriesFamily();

/// See also [GetCategories].
class GetCategoriesFamily extends Family<AsyncValue<List<GoodCategory>>> {
  /// See also [GetCategories].
  const GetCategoriesFamily();

  /// See also [GetCategories].
  GetCategoriesProvider call({
    int parentId = 0,
  }) {
    return GetCategoriesProvider(
      parentId: parentId,
    );
  }

  @override
  GetCategoriesProvider getProviderOverride(
    covariant GetCategoriesProvider provider,
  ) {
    return call(
      parentId: provider.parentId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getCategoriesProvider';
}

/// See also [GetCategories].
class GetCategoriesProvider extends AutoDisposeStreamNotifierProviderImpl<
    GetCategories, List<GoodCategory>> {
  /// See also [GetCategories].
  GetCategoriesProvider({
    int parentId = 0,
  }) : this._internal(
          () => GetCategories()..parentId = parentId,
          from: getCategoriesProvider,
          name: r'getCategoriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCategoriesHash,
          dependencies: GetCategoriesFamily._dependencies,
          allTransitiveDependencies:
              GetCategoriesFamily._allTransitiveDependencies,
          parentId: parentId,
        );

  GetCategoriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
  }) : super.internal();

  final int parentId;

  @override
  Stream<List<GoodCategory>> runNotifierBuild(
    covariant GetCategories notifier,
  ) {
    return notifier.build(
      parentId: parentId,
    );
  }

  @override
  Override overrideWith(GetCategories Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetCategoriesProvider._internal(
        () => create()..parentId = parentId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        parentId: parentId,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<GetCategories, List<GoodCategory>>
      createElement() {
    return _GetCategoriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCategoriesProvider && other.parentId == parentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetCategoriesRef
    on AutoDisposeStreamNotifierProviderRef<List<GoodCategory>> {
  /// The parameter `parentId` of this provider.
  int get parentId;
}

class _GetCategoriesProviderElement
    extends AutoDisposeStreamNotifierProviderElement<GetCategories,
        List<GoodCategory>> with GetCategoriesRef {
  _GetCategoriesProviderElement(super.provider);

  @override
  int get parentId => (origin as GetCategoriesProvider).parentId;
}

String _$getCategoryHash() => r'609e0f29faa8172548952f554e2c829b036f8dcc';

abstract class _$GetCategory
    extends BuildlessAutoDisposeStreamNotifier<GoodCategory?> {
  late final int categoryId;

  Stream<GoodCategory?> build({
    int categoryId = 0,
  });
}

/// See also [GetCategory].
@ProviderFor(GetCategory)
const getCategoryProvider = GetCategoryFamily();

/// See also [GetCategory].
class GetCategoryFamily extends Family<AsyncValue<GoodCategory?>> {
  /// See also [GetCategory].
  const GetCategoryFamily();

  /// See also [GetCategory].
  GetCategoryProvider call({
    int categoryId = 0,
  }) {
    return GetCategoryProvider(
      categoryId: categoryId,
    );
  }

  @override
  GetCategoryProvider getProviderOverride(
    covariant GetCategoryProvider provider,
  ) {
    return call(
      categoryId: provider.categoryId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getCategoryProvider';
}

/// See also [GetCategory].
class GetCategoryProvider
    extends AutoDisposeStreamNotifierProviderImpl<GetCategory, GoodCategory?> {
  /// See also [GetCategory].
  GetCategoryProvider({
    int categoryId = 0,
  }) : this._internal(
          () => GetCategory()..categoryId = categoryId,
          from: getCategoryProvider,
          name: r'getCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCategoryHash,
          dependencies: GetCategoryFamily._dependencies,
          allTransitiveDependencies:
              GetCategoryFamily._allTransitiveDependencies,
          categoryId: categoryId,
        );

  GetCategoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryId,
  }) : super.internal();

  final int categoryId;

  @override
  Stream<GoodCategory?> runNotifierBuild(
    covariant GetCategory notifier,
  ) {
    return notifier.build(
      categoryId: categoryId,
    );
  }

  @override
  Override overrideWith(GetCategory Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetCategoryProvider._internal(
        () => create()..categoryId = categoryId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryId: categoryId,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<GetCategory, GoodCategory?>
      createElement() {
    return _GetCategoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCategoryProvider && other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetCategoryRef on AutoDisposeStreamNotifierProviderRef<GoodCategory?> {
  /// The parameter `categoryId` of this provider.
  int get categoryId;
}

class _GetCategoryProviderElement
    extends AutoDisposeStreamNotifierProviderElement<GetCategory, GoodCategory?>
    with GetCategoryRef {
  _GetCategoryProviderElement(super.provider);

  @override
  int get categoryId => (origin as GetCategoryProvider).categoryId;
}

String _$selectedCategoryHash() => r'f2698efa4296d10063a0a8c4928a4f7914b97971';

/// See also [SelectedCategory].
@ProviderFor(SelectedCategory)
final selectedCategoryProvider =
    NotifierProvider<SelectedCategory, int>.internal(
  SelectedCategory.new,
  name: r'selectedCategoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedCategoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedCategory = Notifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
