import 'package:flutter/cupertino.dart';

class CalculatorUseCase{

  var _num1 = '';
  var _operator = '';
  var _num2 = '';
  var _result = '0';
  var _pressedEqual = false;



  String numbers(String num){
    debugPrint('use_case  $num');
    if ((_num1.isEmpty || _num1 == '0') && num == '0') {
      return _result;
    }
    if (_pressedEqual) {
      _num1 = num;
      _result = _num1;
      _num2 = '';
      _pressedEqual = false;

      return _result;
    }
    if (_operator.isEmpty) {
      _num1 += num;
      _result = _num1;
    } else {
      _result += num;
      _num2 = num;
    }


    return _result;
  }

  String operators(String op){
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
      _operator = op;
      return _result += _operator;

    } else if (_num1.isNotEmpty) {
      _operator = op;
      _result = _num1 + op;
    }
    return _result;

  }

  String clear(){
    _num1 = '';
    _num2 = '';
    _pressedEqual = false;
    _operator = '';
    _result = '0';
    return _result;
  }

  String equal(){
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

    }
    return _result;
  }


}