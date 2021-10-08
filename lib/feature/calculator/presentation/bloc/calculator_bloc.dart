import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calculator/feature/calculator/domain/usecases/calculator_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculator_bloc.freezed.dart';

part 'calculator_event.dart';

part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  final CalculatorUseCase _calculatorUseCase;

  String _result = '0';

  CalculatorBloc({required CalculatorUseCase calculatorUseCase})
      : _calculatorUseCase = calculatorUseCase,
        super(const CalculatorState.result('0'));




}
