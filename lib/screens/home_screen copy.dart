import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 35);
    int contador = 420;
    return Scaffold(
        appBar: AppBar(
          title: const Text('appbar'),
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
                print('Joel Broka');
                contador++;
              },
              child: const Icon(Icons.donut_large),
            ),
            FloatingActionButton(
              // second FAB to perform increment
              onPressed: () {
                print('Joel Broka');
              },
              child: const Icon(Icons.car_crash),
            ),
          ],
        ));
  }
}
