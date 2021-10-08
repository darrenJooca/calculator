import 'package:calculator/feature/calculator/presentation/widgets/calculator_btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calculator/feature/calculator/presentation/bloc/calculator_bloc.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BlocBuilder<CalculatorBloc,CalculatorState>(
                builder: (context, state){
                  return state.map(
                      result: (result) =>Container(
                        color: Colors.grey,
                        height: 100,
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            result.result,
                            style: const TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                  );
                }),
            const SizedBox(height: 10),
            Row(
              children: const [
                Expanded(
                    child: NumButton(num: '7')
                ),
                Expanded(
                    child:NumButton(num: '8')
                ),
                Expanded(
                    child:NumButton(num: '9')
                ),
                Expanded(
                    child: OperatorButton(op: 'x')
                )
              ],
            ),
            Row(
              children: const [
                Expanded(
                    child: NumButton(num: '4')
                ),
                Expanded(
                    child: NumButton(num: '5')
                ),
                Expanded(
                    child: NumButton(num: '6')
                ),
                Expanded(
                    child: OperatorButton(op: '/')
                )
              ],
            ),
            Row(
              children: const [
                Expanded(
                    child: NumButton(num: '1')
                ),
                Expanded(
                    child: NumButton(num: '2')
                ),
                Expanded(
                    child: NumButton(num: '3')
                ),
                Expanded(
                    child: OperatorButton(op:'+')
                )
              ],
            ),
            Row(
              children: [
                const Expanded(
                    child: NumButton(num: '0')
                ),
                Expanded(
                    child: SizedBox(
                      height: 80,
                      child: OutlinedButton(
                          onPressed: () => {context.read<CalculatorBloc>().add(const CalculatorEvent.clear())}, child: const Text('c')),
                    )
                ),
                Expanded(
                    child: SizedBox(
                      height: 80,
                      child: OutlinedButton(
                          onPressed: () => {context.read<CalculatorBloc>().add(const CalculatorEvent.equal())}, child: const Text('=')),
                    )
                ),
                const Expanded(
                    child: OperatorButton(op: '-')
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}