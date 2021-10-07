

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../calculation.dart';


class NumButton extends StatelessWidget{
  final String num;

  const NumButton({Key? key, required this.num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: OutlinedButton(
            onPressed: () => {context.read<CalculatorBloc>().add(Number(num: num))},
            child: Text(num)));
  }

}

class OperatorButton extends StatelessWidget{
  final String op;

  const OperatorButton({Key? key, required this.op}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: OutlinedButton(
            onPressed: () => {context.read<CalculatorBloc>().add(Operators(op: op))},
            child: Text(op)));
  }
}
