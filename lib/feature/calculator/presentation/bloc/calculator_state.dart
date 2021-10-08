part of 'calculator_bloc.dart';

@freezed
abstract class  CalculatorState with _$CalculatorState{
  const factory CalculatorState.result(String result) = _result;
}