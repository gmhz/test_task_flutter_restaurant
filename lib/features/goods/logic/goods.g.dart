// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goods.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$goodsHash() => r'8ad98c64d58637d6db380a7b1461ceb3af475935';

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

abstract class _$Goods extends BuildlessAutoDisposeStreamNotifier<List<Good>> {
  late final int categoryId;

  Stream<List<Good>> build({
    int categoryId = 0,
  });
}

/// See also [Goods].
@ProviderFor(Goods)
const goodsProvider = GoodsFamily();

/// See also [Goods].
class GoodsFamily extends Family<AsyncValue<List<Good>>> {
  /// See also [Goods].
  const GoodsFamily();

  /// See also [Goods].
  GoodsProvider call({
    int categoryId = 0,
  }) {
    return GoodsProvider(
      categoryId: categoryId,
    );
  }

  @override
  GoodsProvider getProviderOverride(
    covariant GoodsProvider provider,
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
  String? get name => r'goodsProvider';
}

/// See also [Goods].
class GoodsProvider
    extends AutoDisposeStreamNotifierProviderImpl<Goods, List<Good>> {
  /// See also [Goods].
  GoodsProvider({
    int categoryId = 0,
  }) : this._internal(
          () => Goods()..categoryId = categoryId,
          from: goodsProvider,
          name: r'goodsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$goodsHash,
          dependencies: GoodsFamily._dependencies,
          allTransitiveDependencies: GoodsFamily._allTransitiveDependencies,
          categoryId: categoryId,
        );

  GoodsProvider._internal(
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
  Stream<List<Good>> runNotifierBuild(
    covariant Goods notifier,
  ) {
    return notifier.build(
      categoryId: categoryId,
    );
  }

  @override
  Override overrideWith(Goods Function() create) {
    return ProviderOverride(
      origin: this,
      override: GoodsProvider._internal(
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
  AutoDisposeStreamNotifierProviderElement<Goods, List<Good>> createElement() {
    return _GoodsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GoodsProvider && other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GoodsRef on AutoDisposeStreamNotifierProviderRef<List<Good>> {
  /// The parameter `categoryId` of this provider.
  int get categoryId;
}

class _GoodsProviderElement
    extends AutoDisposeStreamNotifierProviderElement<Goods, List<Good>>
    with GoodsRef {
  _GoodsProviderElement(super.provider);

  @override
  int get categoryId => (origin as GoodsProvider).categoryId;
}

String _$selectedGoodsHash() => r'b6fbbaa04e48f039d0ab4ea35a0d855176a0a4b3';

/// See also [SelectedGoods].
@ProviderFor(SelectedGoods)
final selectedGoodsProvider =
    NotifierProvider<SelectedGoods, IMap<Good, int>>.internal(
  SelectedGoods.new,
  name: r'selectedGoodsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedGoodsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedGoods = Notifier<IMap<Good, int>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
