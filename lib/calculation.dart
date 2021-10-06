
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';


class CalculatorCubit extends Cubit<String>{
  CalculatorCubit() : super('0');

  var _num1 = '';
  var _operator = '';
  var _num2 = '';
  var _result = '0';
  var _pressedEqual = false;

  // deal with all operators' logic
  void operators(String op){
    if(_num1.isNotEmpty&&_num2.isNotEmpty&&_operator.isNotEmpty){
      equal();
      _pressedEqual =false;
      _operator = op;
      emit(_result+=_operator);

    }else if(_num1.isNotEmpty) {
      _operator = op;
      _result = _num1 + op;
    }
      emit(_result);
  }

  //number from 0 to 9
  void numbers(String num){
    if((_num1.isEmpty|| _num1 == '0') && num == '0'){
      return;
    }
    if(_pressedEqual){
      _num1 = num;
      _result = _num1;
      _pressedEqual =false;
      emit(_result);
      return;
    }
    if(_operator.isEmpty){
      _num1+=num;
      _result = _num1;
    }else{
      _result += num;
      _num2 = num;
    }
    emit(_result);
  }

  void clean(){
    _num1 = '';
    _num2 ='';
    _operator = '';
    _result = '0';
    _pressedEqual = false;
    emit(_result);
  }

  //depend on the operator sign to calculate the final answer
  void equal(){
    if(_num1.isNotEmpty&&_num2.isNotEmpty&&_operator.isNotEmpty){
      switch(_operator){
        case '+':
          _num1= (double.parse(_num1) + double.parse(_num2)).toStringAsFixed(1);
          break;

        case '-':
          _num1 = (double.parse(_num1) - double.parse(_num2)).toStringAsFixed(1);
          debugPrint(_num1);
          break;

        case 'x':
          _num1 = (double.parse(_num1) * double.parse(_num2)).toStringAsFixed(1);
          break;

        case '/':
          _num1 = (double.parse(_num1) / double.parse(_num2)).toStringAsFixed(1);
          break;
      }
      _result = _num1;
      _operator ='';
      _num2 = '';
      _pressedEqual = true;
      emit(_result);
    }
  }
}