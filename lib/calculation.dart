import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

abstract class CalculatorEvent {
  const CalculatorEvent();
}

class Operators extends CalculatorEvent {
  final String op;

  const Operators({required this.op});
}

class Equal extends CalculatorEvent {}

class Clear extends CalculatorEvent {}

class Number extends CalculatorEvent {
  final String num;

  const Number({required this.num});
}

class CalculatorBloc extends Bloc<CalculatorEvent, String> {
  var _num1 = '';
  var _operator = '';
  var _num2 = '';
  var _result = '0';
  var _pressedEqual = false;

  CalculatorBloc() : super('0') {
    on<Operators>((event, emit) {
      if (_num1.isNotEmpty && _num2.isNotEmpty && _operator.isNotEmpty) {
        switch (_operator) {
          case '+':
            _num1 =
                (double.parse(_num1) + double.parse(_num2)).toStringAsFixed(1);
            break;

          case '-':
            _num1 =
                (double.parse(_num1) - double.parse(_num2)).toStringAsFixed(1);
            debugPrint(_num1);
            break;

          case 'x':
            _num1 =
                (double.parse(_num1) * double.parse(_num2)).toStringAsFixed(1);
            break;

          case '/':
            _num1 =
                (double.parse(_num1) / double.parse(_num2)).toStringAsFixed(1);
            break;
        }
        _result = _num1;
        _operator = event.op;
        emit(_result += _operator);
      } else if (_num1.isNotEmpty) {
        _operator = event.op;
        _result = _num1 + event.op;
      }
      emit(_result);
    });

    on<Number>((event, emit) {
      debugPrint('Bloc' + event.num);
      if ((_num1.isEmpty || _num1 == '0') && event.num == '0') {
        return;
      }
      if (_pressedEqual) {
        _num1 = event.num;
        _result = _num1;
        _num2 = '';
        _pressedEqual = false;
        emit(_result);
        return;
      }
      if (_operator.isEmpty) {
        _num1 += event.num;
        _result = _num1;
      } else {
        _result += event.num;
        _num2 = event.num;
      }
      emit(_result);
    });

    on<Equal>((event, emit) {
      if (_num1.isNotEmpty && _num2.isNotEmpty && _operator.isNotEmpty) {
        switch (_operator) {
          case '+':
            _num1 =
                (double.parse(_num1) + double.parse(_num2)).toStringAsFixed(1);
            break;

          case '-':
            _num1 =
                (double.parse(_num1) - double.parse(_num2)).toStringAsFixed(1);
            debugPrint(_num1);
            break;

          case 'x':
            _num1 =
                (double.parse(_num1) * double.parse(_num2)).toStringAsFixed(1);
            break;

          case '/':
            _num1 =
                (double.parse(_num1) / double.parse(_num2)).toStringAsFixed(1);
            break;
        }
        _result = _num1;
        _operator = '';
        _num2 = '';
        _pressedEqual = true;
        emit(_result);
      }
    });

    on<Clear>((event, emit) {
      _num1 = '';
      _num2 = '';
      _pressedEqual = false;
      _operator = '';
      _result = '0';
      emit(_result);
    });
  }
}
