import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 420;

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 35);

    return Scaffold(
        appBar: AppBar(
          title: const Text('counterscreen'),
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
        // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        // floatingActionButton: FloatingActionButton(
        //   // child: const Text('weed'),
        //   child: const Icon(Icons.paid),
        //   onPressed: () {
        //     print('Joel Broka, cambio de prueba');
        //   },
        // ),

        // floatingActionButton: FloatingActionButton(
        //   // child: const Text('weed'),
        //   child: const Icon(Icons.car_crash),
        //   onPressed: () {
        //     print('holaaa');
        //   },
        // ),

        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FloatingActionButton(
              // first FAB to perform decrement
              onPressed: () {
                // print('Joel Broka');
                contador++;
                setState(() {});
              },
              child: const Icon(Icons.exposure_plus_1_sharp),
            ),
            FloatingActionButton(
              child: const Icon(Icons.access_alarm_sharp),

              // second FAB to perform increment
              onPressed: () {
                // print('Joel Broka');
                contador = contador * 0;
                setState(() {});
              },
            ),
            FloatingActionButton(
              child: const Icon(Icons.exposure_minus_1_sharp),

              // second FAB to perform increment
              onPressed: () {
                // print('Joel Broka');
                contador = contador * -2;
                setState(() {});
              },
            ),
          ],
        ));
  }
}
