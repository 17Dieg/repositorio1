import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 420;

  void increase() {
    contador++;
    setState(() {});
  }

  void decrease() {
    contador--;
    setState(() {});
  }

  void reset() {
    contador = contador * 0;
    setState(() {});
  }

  void cuatroveinte() {
    contador = 420;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 35);

    return Scaffold(
      appBar: AppBar(
        title: const Text('first page'),
        elevation: 10,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.lightGreen,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('$contador', style: fontSize30),
          const Text('123hola 6 420 420',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20)),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingAction(
          increaseFn: increase,
          decreaseFn: decrease,
          resetFn: reset,
          cuatroveinteFn: cuatroveinte),
    );
  }
}

class CustomFloatingAction extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;
  final Function cuatroveinteFn;

  const CustomFloatingAction({
    super.key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
    required this.cuatroveinteFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_sharp),
          onPressed: () => increaseFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_sharp),
          onPressed: () => decreaseFn(),
        ),
        FloatingActionButton(
          onPressed: () => resetFn(),
          child: const Icon(Icons.exposure_zero_outlined),
        ),
        FloatingActionButton(
          onPressed: () => cuatroveinteFn(),
          child: const Icon(Icons.read_more_sharp),
        ),
      ],
    );
  }
}
