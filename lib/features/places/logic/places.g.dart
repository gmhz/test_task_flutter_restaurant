// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$placesHash() => r'794784d4768e687bfd841a776c4367e214144000';

/// See also [Places].
@ProviderFor(Places)
final placesProvider =
    AutoDisposeStreamNotifierProvider<Places, List<OrderPlace>>.internal(
  Places.new,
  name: r'placesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$placesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Places = AutoDisposeStreamNotifier<List<OrderPlace>>;
String _$selectedPlaceIdHash() => r'7f7d44ac97c851a45f0b283e04bf91fa793e9a32';

/// See also [SelectedPlaceId].
@ProviderFor(SelectedPlaceId)
final selectedPlaceIdProvider = NotifierProvider<SelectedPlaceId, int>.internal(
  SelectedPlaceId.new,
  name: r'selectedPlaceIdProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedPlaceIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedPlaceId = Notifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
