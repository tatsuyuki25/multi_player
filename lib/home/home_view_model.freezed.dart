// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  Uri get uri => throw _privateConstructorUsedError;
  double get playbackSpeed => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  List<double> get playbackSpeeds => throw _privateConstructorUsedError;
  AppLifecycleState? get currentLifecycleState =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Uri uri,
      double playbackSpeed,
      bool isPlaying,
      List<double> playbackSpeeds,
      AppLifecycleState? currentLifecycleState});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? playbackSpeed = null,
    Object? isPlaying = null,
    Object? playbackSpeeds = null,
    Object? currentLifecycleState = freezed,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      playbackSpeed: null == playbackSpeed
          ? _value.playbackSpeed
          : playbackSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      playbackSpeeds: null == playbackSpeeds
          ? _value.playbackSpeeds
          : playbackSpeeds // ignore: cast_nullable_to_non_nullable
              as List<double>,
      currentLifecycleState: freezed == currentLifecycleState
          ? _value.currentLifecycleState
          : currentLifecycleState // ignore: cast_nullable_to_non_nullable
              as AppLifecycleState?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri uri,
      double playbackSpeed,
      bool isPlaying,
      List<double> playbackSpeeds,
      AppLifecycleState? currentLifecycleState});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? playbackSpeed = null,
    Object? isPlaying = null,
    Object? playbackSpeeds = null,
    Object? currentLifecycleState = freezed,
  }) {
    return _then(_$HomeStateImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      playbackSpeed: null == playbackSpeed
          ? _value.playbackSpeed
          : playbackSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      playbackSpeeds: null == playbackSpeeds
          ? _value._playbackSpeeds
          : playbackSpeeds // ignore: cast_nullable_to_non_nullable
              as List<double>,
      currentLifecycleState: freezed == currentLifecycleState
          ? _value.currentLifecycleState
          : currentLifecycleState // ignore: cast_nullable_to_non_nullable
              as AppLifecycleState?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.uri,
      required this.playbackSpeed,
      required this.isPlaying,
      required final List<double> playbackSpeeds,
      this.currentLifecycleState})
      : _playbackSpeeds = playbackSpeeds;

  @override
  final Uri uri;
  @override
  final double playbackSpeed;
  @override
  final bool isPlaying;
  final List<double> _playbackSpeeds;
  @override
  List<double> get playbackSpeeds {
    if (_playbackSpeeds is EqualUnmodifiableListView) return _playbackSpeeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playbackSpeeds);
  }

  @override
  final AppLifecycleState? currentLifecycleState;

  @override
  String toString() {
    return 'HomeState(uri: $uri, playbackSpeed: $playbackSpeed, isPlaying: $isPlaying, playbackSpeeds: $playbackSpeeds, currentLifecycleState: $currentLifecycleState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.playbackSpeed, playbackSpeed) ||
                other.playbackSpeed == playbackSpeed) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            const DeepCollectionEquality()
                .equals(other._playbackSpeeds, _playbackSpeeds) &&
            (identical(other.currentLifecycleState, currentLifecycleState) ||
                other.currentLifecycleState == currentLifecycleState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uri,
      playbackSpeed,
      isPlaying,
      const DeepCollectionEquality().hash(_playbackSpeeds),
      currentLifecycleState);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final Uri uri,
      required final double playbackSpeed,
      required final bool isPlaying,
      required final List<double> playbackSpeeds,
      final AppLifecycleState? currentLifecycleState}) = _$HomeStateImpl;

  @override
  Uri get uri;
  @override
  double get playbackSpeed;
  @override
  bool get isPlaying;
  @override
  List<double> get playbackSpeeds;
  @override
  AppLifecycleState? get currentLifecycleState;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
