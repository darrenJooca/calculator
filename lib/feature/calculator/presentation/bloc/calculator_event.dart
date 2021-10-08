part of 'calculator_bloc.dart';

@freezed
abstract class CalculatorEvent with _$CalculatorEvent{
  const factory CalculatorEvent.numbers(String num) = _Numbers;
  const factory CalculatorEvent.operators(String op) = _Operators;
  const factory CalculatorEvent.equal() = _Equal;
  const factory CalculatorEvent.clear() = _Clear;
}