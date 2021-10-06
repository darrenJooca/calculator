import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'calculation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>CalculatorCubit(),
      child: CalculatorView(title: title),
    );
  }
}

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
            BlocBuilder<CalculatorCubit,String>(
                builder: (context, state){
                  return Container(
                    color: Colors.grey,
                    height: 100,
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        state,
                        style: const TextStyle(fontSize: 30),
                      ),
                    ),
                  );
                }),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: numButton(context, '7')
                ),
                Expanded(
                    child:numButton(context, '8')
                ),
                Expanded(
                    child:numButton(context, '9')
                ),
                Expanded(
                    child: operatorButton(context, 'x')
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: numButton(context, '4')
                ),
                Expanded(
                    child: numButton(context, '5')
                ),
                Expanded(
                    child: numButton(context, '6')
                ),
                Expanded(
                    child: operatorButton(context, '/')
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: numButton(context, '1')
                ),
                Expanded(
                    child: numButton(context, '2')
                ),
                Expanded(
                    child: numButton(context, '3')
                ),
                Expanded(
                    child: operatorButton(context, '+')
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: numButton(context, '0')
                ),
                Expanded(
                    child: SizedBox(
                      height: 80,
                      child: OutlinedButton(
                          onPressed: () => {context.read<CalculatorCubit>().clean()}, child: const Text('c')),
                    )
                ),
                Expanded(
                    child: SizedBox(
                      height: 80,
                      child: OutlinedButton(
                          onPressed: () => {context.read<CalculatorCubit>().equal()}, child: const Text('=')),
                    )
                ),
                Expanded(
                    child: operatorButton(context, '-')
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget numButton(BuildContext context, String num){
  return SizedBox(
      height: 80,
      child: OutlinedButton(
          onPressed: () => {context.read<CalculatorCubit>().numbers(num)},
          child: Text(num)));
}

Widget operatorButton(BuildContext context, String op){
  return SizedBox(
      height: 80,
      child: OutlinedButton(
          onPressed: () => {context.read<CalculatorCubit>().operators(op)},
          child: Text(op)));

}
