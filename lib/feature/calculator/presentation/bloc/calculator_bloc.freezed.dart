// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'calculator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CalculatorEventTearOff {
  const _$CalculatorEventTearOff();

  _Numbers numbers(String num) {
    return _Numbers(
      num,
    );
  }

  _Operators operators(String op) {
    return _Operators(
      op,
    );
  }

  _Equal equal() {
    return const _Equal();
  }

  _Clear clear() {
    return const _Clear();
  }
}

/// @nodoc
const $CalculatorEvent = _$CalculatorEventTearOff();

/// @nodoc
mixin _$CalculatorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String num) numbers,
    required TResult Function(String op) operators,
    required TResult Function() equal,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String num)? numbers,
    TResult Function(String op)? operators,
    TResult Function()? equal,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Numbers value) numbers,
    required TResult Function(_Operators value) operators,
    required TResult Function(_Equal value) equal,
    required TResult Function(_Clear value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Numbers value)? numbers,
    TResult Function(_Operators value)? operators,
    TResult Function(_Equal value)? equal,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorEventCopyWith<$Res> {
  factory $CalculatorEventCopyWith(
          CalculatorEvent value, $Res Function(CalculatorEvent) then) =
      _$CalculatorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalculatorEventCopyWithImpl<$Res>
    implements $CalculatorEventCopyWith<$Res> {
  _$CalculatorEventCopyWithImpl(this._value, this._then);

  final CalculatorEvent _value;
  // ignore: unused_field
  final $Res Function(CalculatorEvent) _then;
}

/// @nodoc
abstract class _$NumbersCopyWith<$Res> {
  factory _$NumbersCopyWith(_Numbers value, $Res Function(_Numbers) then) =
      __$NumbersCopyWithImpl<$Res>;
  $Res call({String num});
}

/// @nodoc
class __$NumbersCopyWithImpl<$Res> extends _$CalculatorEventCopyWithImpl<$Res>
    implements _$NumbersCopyWith<$Res> {
  __$NumbersCopyWithImpl(_Numbers _value, $Res Function(_Numbers) _then)
      : super(_value, (v) => _then(v as _Numbers));

  @override
  _Numbers get _value => super._value as _Numbers;

  @override
  $Res call({
    Object? num = freezed,
  }) {
    return _then(_Numbers(
      num == freezed ? _value.num : num as String,
    ));
  }
}

/// @nodoc
class _$_Numbers implements _Numbers {
  const _$_Numbers(this.num);

  @override
  final String num;

  @override
  String toString() {
    return 'CalculatorEvent.numbers(num: $num)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Numbers &&
            (identical(other.num, num) ||
                const DeepCollectionEquality().equals(other.num, num)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(num);

  @JsonKey(ignore: true)
  @override
  _$NumbersCopyWith<_Numbers> get copyWith =>
      __$NumbersCopyWithImpl<_Numbers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String num) numbers,
    required TResult Function(String op) operators,
    required TResult Function() equal,
    required TResult Function() clear,
  }) {
    return numbers(num);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String num)? numbers,
    TResult Function(String op)? operators,
    TResult Function()? equal,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (numbers != null) {
      return numbers(num);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Numbers value) numbers,
    required TResult Function(_Operators value) operators,
    required TResult Function(_Equal value) equal,
    required TResult Function(_Clear value) clear,
  }) {
    return numbers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Numbers value)? numbers,
    TResult Function(_Operators value)? operators,
    TResult Function(_Equal value)? equal,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (numbers != null) {
      return numbers(this);
    }
    return orElse();
  }
}

abstract class _Numbers implements CalculatorEvent {
  const factory _Numbers(String num) = _$_Numbers;

  String get num => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NumbersCopyWith<_Numbers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OperatorsCopyWith<$Res> {
  factory _$OperatorsCopyWith(
          _Operators value, $Res Function(_Operators) then) =
      __$OperatorsCopyWithImpl<$Res>;
  $Res call({String op});
}

/// @nodoc
class __$OperatorsCopyWithImpl<$Res> extends _$CalculatorEventCopyWithImpl<$Res>
    implements _$OperatorsCopyWith<$Res> {
  __$OperatorsCopyWithImpl(_Operators _value, $Res Function(_Operators) _then)
      : super(_value, (v) => _then(v as _Operators));

  @override
  _Operators get _value => super._value as _Operators;

  @override
  $Res call({
    Object? op = freezed,
  }) {
    return _then(_Operators(
      op == freezed ? _value.op : op as String,
    ));
  }
}

/// @nodoc
class _$_Operators implements _Operators {
  const _$_Operators(this.op);

  @override
  final String op;

  @override
  String toString() {
    return 'CalculatorEvent.operators(op: $op)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Operators &&
            (identical(other.op, op) ||
                const DeepCollectionEquality().equals(other.op, op)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(op);

  @JsonKey(ignore: true)
  @override
  _$OperatorsCopyWith<_Operators> get copyWith =>
      __$OperatorsCopyWithImpl<_Operators>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String num) numbers,
    required TResult Function(String op) operators,
    required TResult Function() equal,
    required TResult Function() clear,
  }) {
    return operators(op);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String num)? numbers,
    TResult Function(String op)? operators,
    TResult Function()? equal,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (operators != null) {
      return operators(op);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Numbers value) numbers,
    required TResult Function(_Operators value) operators,
    required TResult Function(_Equal value) equal,
    required TResult Function(_Clear value) clear,
  }) {
    return operators(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Numbers value)? numbers,
    TResult Function(_Operators value)? operators,
    TResult Function(_Equal value)? equal,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (operators != null) {
      return operators(this);
    }
    return orElse();
  }
}

abstract class _Operators implements CalculatorEvent {
  const factory _Operators(String op) = _$_Operators;

  String get op => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OperatorsCopyWith<_Operators> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EqualCopyWith<$Res> {
  factory _$EqualCopyWith(_Equal value, $Res Function(_Equal) then) =
      __$EqualCopyWithImpl<$Res>;
}

/// @nodoc
class __$EqualCopyWithImpl<$Res> extends _$CalculatorEventCopyWithImpl<$Res>
    implements _$EqualCopyWith<$Res> {
  __$EqualCopyWithImpl(_Equal _value, $Res Function(_Equal) _then)
      : super(_value, (v) => _then(v as _Equal));

  @override
  _Equal get _value => super._value as _Equal;
}

/// @nodoc
class _$_Equal implements _Equal {
  const _$_Equal();

  @override
  String toString() {
    return 'CalculatorEvent.equal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Equal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String num) numbers,
    required TResult Function(String op) operators,
    required TResult Function() equal,
    required TResult Function() clear,
  }) {
    return equal();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String num)? numbers,
    TResult Function(String op)? operators,
    TResult Function()? equal,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (equal != null) {
      return equal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Numbers value) numbers,
    required TResult Function(_Operators value) operators,
    required TResult Function(_Equal value) equal,
    required TResult Function(_Clear value) clear,
  }) {
    return equal(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Numbers value)? numbers,
    TResult Function(_Operators value)? operators,
    TResult Function(_Equal value)? equal,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (equal != null) {
      return equal(this);
    }
    return orElse();
  }
}

abstract class _Equal implements CalculatorEvent {
  const factory _Equal() = _$_Equal;
}

/// @nodoc
abstract class _$ClearCopyWith<$Res> {
  factory _$ClearCopyWith(_Clear value, $Res Function(_Clear) then) =
      __$ClearCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearCopyWithImpl<$Res> extends _$CalculatorEventCopyWithImpl<$Res>
    implements _$ClearCopyWith<$Res> {
  __$ClearCopyWithImpl(_Clear _value, $Res Function(_Clear) _then)
      : super(_value, (v) => _then(v as _Clear));

  @override
  _Clear get _value => super._value as _Clear;
}

/// @nodoc
class _$_Clear implements _Clear {
  const _$_Clear();

  @override
  String toString() {
    return 'CalculatorEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Clear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String num) numbers,
    required TResult Function(String op) operators,
    required TResult Function() equal,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String num)? numbers,
    TResult Function(String op)? operators,
    TResult Function()? equal,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Numbers value) numbers,
    required TResult Function(_Operators value) operators,
    required TResult Function(_Equal value) equal,
    required TResult Function(_Clear value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Numbers value)? numbers,
    TResult Function(_Operators value)? operators,
    TResult Function(_Equal value)? equal,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements CalculatorEvent {
  const factory _Clear() = _$_Clear;
}

/// @nodoc
class _$CalculatorStateTearOff {
  const _$CalculatorStateTearOff();

  _result result(String result) {
    return _result(
      result,
    );
  }
}

/// @nodoc
const $CalculatorState = _$CalculatorStateTearOff();

/// @nodoc
mixin _$CalculatorState {
  String get result => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String result) result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String result)? result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_result value) result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_result value)? result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalculatorStateCopyWith<CalculatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorStateCopyWith<$Res> {
  factory $CalculatorStateCopyWith(
          CalculatorState value, $Res Function(CalculatorState) then) =
      _$CalculatorStateCopyWithImpl<$Res>;
  $Res call({String result});
}

/// @nodoc
class _$CalculatorStateCopyWithImpl<$Res>
    implements $CalculatorStateCopyWith<$Res> {
  _$CalculatorStateCopyWithImpl(this._value, this._then);

  final CalculatorState _value;
  // ignore: unused_field
  final $Res Function(CalculatorState) _then;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed ? _value.result : result as String,
    ));
  }
}

/// @nodoc
abstract class _$resultCopyWith<$Res>
    implements $CalculatorStateCopyWith<$Res> {
  factory _$resultCopyWith(_result value, $Res Function(_result) then) =
      __$resultCopyWithImpl<$Res>;
  @override
  $Res call({String result});
}

/// @nodoc
class __$resultCopyWithImpl<$Res> extends _$CalculatorStateCopyWithImpl<$Res>
    implements _$resultCopyWith<$Res> {
  __$resultCopyWithImpl(_result _value, $Res Function(_result) _then)
      : super(_value, (v) => _then(v as _result));

  @override
  _result get _value => super._value as _result;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_result(
      result == freezed ? _value.result : result as String,
    ));
  }
}

/// @nodoc
class _$_result implements _result {
  const _$_result(this.result);

  @override
  final String result;

  @override
  String toString() {
    return 'CalculatorState.result(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _result &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$resultCopyWith<_result> get copyWith =>
      __$resultCopyWithImpl<_result>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String result) result,
  }) {
    return result(this.result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String result)? result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this.result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_result value) result,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_result value)? result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class _result implements CalculatorState {
  const factory _result(String result) = _$_result;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$resultCopyWith<_result> get copyWith => throw _privateConstructorUsedError;
}
