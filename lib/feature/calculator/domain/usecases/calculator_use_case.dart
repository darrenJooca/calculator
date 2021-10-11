

class CalculatorUseCase{

  var _num1 = '';
  var _operator = '';
  var _num2 = '';
  var _result = '0';
  var _pressedEqual = false;



  String numbers(String num){
    //only can show 0 on the result, 00 or 000 is not allow.
    if ((_num1.isEmpty || _num1 == '0') && num == '0') {
      return _result;
    }
    //if user already pressed equal button, then result will be reset when pressing number button.
    if (_pressedEqual && _operator =='' && _num2 == '') {
      _num1 = num;
      _result = _num1;
      _num2 = '';
      _pressedEqual = false;
      return _result;

    }//update _num2 value
    else if(_num1.isNotEmpty && _operator.isNotEmpty&& _num2.isNotEmpty){
      if(_num2 == '0') return _result;

      _num2 +=num;
      return _result= _num1 + _operator + _num2;
    }//update _num1 value
    else if (_operator.isEmpty) {
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
      equal();
      _result = _num1;
      _operator = op;
      _pressedEqual = false;
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
          break;

        case 'x':
          _num1 =
              (double.parse(_num1) * double.parse(_num2)).toStringAsFixed(1);
          break;

        case '/':
          if(_num2 =='0') {
            _num1 = '0';
            break;
          }else{

            _num1 =
                (double.parse(_num1) / double.parse(_num2)).toStringAsFixed(1);
            break;
          }
      }
      _result = _num1;
      _operator = '';
      _num2 = '';
      _pressedEqual = true;

    }
    return _result;
  }

}