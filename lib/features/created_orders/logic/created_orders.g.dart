// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_orders.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createdOrdersHash() => r'0483488936416c39a74437b3034ccd61323a9380';

/// See also [CreatedOrders].
@ProviderFor(CreatedOrders)
final createdOrdersProvider =
    AutoDisposeStreamNotifierProvider<CreatedOrders, List<Order>>.internal(
  CreatedOrders.new,
  name: r'createdOrdersProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$createdOrdersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CreatedOrders = AutoDisposeStreamNotifier<List<Order>>;
String _$getGoodsByOrderIdHash() => r'75744a5cb1e30eaef4251c295bd7eec96dacc6ec';

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

abstract class _$GetGoodsByOrderId
    extends BuildlessAutoDisposeStreamNotifier<List<(Good, int)>> {
  late final int orderId;

  Stream<List<(Good, int)>> build(
    int orderId,
  );
}

/// See also [GetGoodsByOrderId].
@ProviderFor(GetGoodsByOrderId)
const getGoodsByOrderIdProvider = GetGoodsByOrderIdFamily();

/// See also [GetGoodsByOrderId].
class GetGoodsByOrderIdFamily extends Family<AsyncValue<List<(Good, int)>>> {
  /// See also [GetGoodsByOrderId].
  const GetGoodsByOrderIdFamily();

  /// See also [GetGoodsByOrderId].
  GetGoodsByOrderIdProvider call(
    int orderId,
  ) {
    return GetGoodsByOrderIdProvider(
      orderId,
    );
  }

  @override
  GetGoodsByOrderIdProvider getProviderOverride(
    covariant GetGoodsByOrderIdProvider provider,
  ) {
    return call(
      provider.orderId,
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
  String? get name => r'getGoodsByOrderIdProvider';
}

/// See also [GetGoodsByOrderId].
class GetGoodsByOrderIdProvider extends AutoDisposeStreamNotifierProviderImpl<
    GetGoodsByOrderId, List<(Good, int)>> {
  /// See also [GetGoodsByOrderId].
  GetGoodsByOrderIdProvider(
    int orderId,
  ) : this._internal(
          () => GetGoodsByOrderId()..orderId = orderId,
          from: getGoodsByOrderIdProvider,
          name: r'getGoodsByOrderIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getGoodsByOrderIdHash,
          dependencies: GetGoodsByOrderIdFamily._dependencies,
          allTransitiveDependencies:
              GetGoodsByOrderIdFamily._allTransitiveDependencies,
          orderId: orderId,
        );

  GetGoodsByOrderIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.orderId,
  }) : super.internal();

  final int orderId;

  @override
  Stream<List<(Good, int)>> runNotifierBuild(
    covariant GetGoodsByOrderId notifier,
  ) {
    return notifier.build(
      orderId,
    );
  }

  @override
  Override overrideWith(GetGoodsByOrderId Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetGoodsByOrderIdProvider._internal(
        () => create()..orderId = orderId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        orderId: orderId,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<GetGoodsByOrderId, List<(Good, int)>>
      createElement() {
    return _GetGoodsByOrderIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetGoodsByOrderIdProvider && other.orderId == orderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, orderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetGoodsByOrderIdRef
    on AutoDisposeStreamNotifierProviderRef<List<(Good, int)>> {
  /// The parameter `orderId` of this provider.
  int get orderId;
}

class _GetGoodsByOrderIdProviderElement
    extends AutoDisposeStreamNotifierProviderElement<GetGoodsByOrderId,
        List<(Good, int)>> with GetGoodsByOrderIdRef {
  _GetGoodsByOrderIdProviderElement(super.provider);

  @override
  int get orderId => (origin as GetGoodsByOrderIdProvider).orderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
