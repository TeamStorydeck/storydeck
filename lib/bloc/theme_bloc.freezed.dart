// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ThemeEventTearOff {
  const _$ThemeEventTearOff();

  _SetTheme setTheme(ThemeMode mode) {
    return _SetTheme(
      mode,
    );
  }

  _SyncTheme syncTheme() {
    return const _SyncTheme();
  }
}

/// @nodoc
const $ThemeEvent = _$ThemeEventTearOff();

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode mode) setTheme,
    required TResult Function() syncTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode mode)? setTheme,
    TResult Function()? syncTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTheme value) setTheme,
    required TResult Function(_SyncTheme value) syncTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTheme value)? setTheme,
    TResult Function(_SyncTheme value)? syncTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res> implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  final ThemeEvent _value;
  // ignore: unused_field
  final $Res Function(ThemeEvent) _then;
}

/// @nodoc
abstract class _$SetThemeCopyWith<$Res> {
  factory _$SetThemeCopyWith(_SetTheme value, $Res Function(_SetTheme) then) =
      __$SetThemeCopyWithImpl<$Res>;
  $Res call({ThemeMode mode});
}

/// @nodoc
class __$SetThemeCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements _$SetThemeCopyWith<$Res> {
  __$SetThemeCopyWithImpl(_SetTheme _value, $Res Function(_SetTheme) _then)
      : super(_value, (v) => _then(v as _SetTheme));

  @override
  _SetTheme get _value => super._value as _SetTheme;

  @override
  $Res call({
    Object? mode = freezed,
  }) {
    return _then(_SetTheme(
      mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
class _$_SetTheme implements _SetTheme {
  const _$_SetTheme(this.mode);

  @override
  final ThemeMode mode;

  @override
  String toString() {
    return 'ThemeEvent.setTheme(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetTheme &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mode);

  @JsonKey(ignore: true)
  @override
  _$SetThemeCopyWith<_SetTheme> get copyWith =>
      __$SetThemeCopyWithImpl<_SetTheme>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode mode) setTheme,
    required TResult Function() syncTheme,
  }) {
    return setTheme(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode mode)? setTheme,
    TResult Function()? syncTheme,
    required TResult orElse(),
  }) {
    if (setTheme != null) {
      return setTheme(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTheme value) setTheme,
    required TResult Function(_SyncTheme value) syncTheme,
  }) {
    return setTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTheme value)? setTheme,
    TResult Function(_SyncTheme value)? syncTheme,
    required TResult orElse(),
  }) {
    if (setTheme != null) {
      return setTheme(this);
    }
    return orElse();
  }
}

abstract class _SetTheme implements ThemeEvent {
  const factory _SetTheme(ThemeMode mode) = _$_SetTheme;

  ThemeMode get mode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetThemeCopyWith<_SetTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SyncThemeCopyWith<$Res> {
  factory _$SyncThemeCopyWith(
          _SyncTheme value, $Res Function(_SyncTheme) then) =
      __$SyncThemeCopyWithImpl<$Res>;
}

/// @nodoc
class __$SyncThemeCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements _$SyncThemeCopyWith<$Res> {
  __$SyncThemeCopyWithImpl(_SyncTheme _value, $Res Function(_SyncTheme) _then)
      : super(_value, (v) => _then(v as _SyncTheme));

  @override
  _SyncTheme get _value => super._value as _SyncTheme;
}

/// @nodoc
class _$_SyncTheme implements _SyncTheme {
  const _$_SyncTheme();

  @override
  String toString() {
    return 'ThemeEvent.syncTheme()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SyncTheme);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode mode) setTheme,
    required TResult Function() syncTheme,
  }) {
    return syncTheme();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode mode)? setTheme,
    TResult Function()? syncTheme,
    required TResult orElse(),
  }) {
    if (syncTheme != null) {
      return syncTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTheme value) setTheme,
    required TResult Function(_SyncTheme value) syncTheme,
  }) {
    return syncTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTheme value)? setTheme,
    TResult Function(_SyncTheme value)? syncTheme,
    required TResult orElse(),
  }) {
    if (syncTheme != null) {
      return syncTheme(this);
    }
    return orElse();
  }
}

abstract class _SyncTheme implements ThemeEvent {
  const factory _SyncTheme() = _$_SyncTheme;
}

/// @nodoc
class _$ThemeStateTearOff {
  const _$ThemeStateTearOff();

  _Initial initial(ThemeMode mode) {
    return _Initial(
      mode,
    );
  }
}

/// @nodoc
const $ThemeState = _$ThemeStateTearOff();

/// @nodoc
mixin _$ThemeState {
  ThemeMode get mode => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode mode) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode mode)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
  $Res call({ThemeMode mode});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;

  @override
  $Res call({
    Object? mode = freezed,
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({ThemeMode mode});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? mode = freezed,
  }) {
    return _then(_Initial(
      mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial(this.mode);

  @override
  final ThemeMode mode;

  @override
  String toString() {
    return 'ThemeState.initial(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mode);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode mode) initial,
  }) {
    return initial(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode mode)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ThemeState {
  const factory _Initial(ThemeMode mode) = _$_Initial;

  @override
  ThemeMode get mode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
