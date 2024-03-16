import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Random and serial color click'),
        ),
        body: Click(),
      ),
    );
  }
}

class Click extends StatefulWidget {
  @override
  State<Click> createState() => _ClickState();
}

class _ClickState extends State<Click> {
  List<Color> colors = [
    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.black,
    Colors.purple,
  ];
  int a = 0;

  void button1() {
    a = Random().nextInt(colors.length);
    setState(() {});
  }

  void button2() {
    a = (a + 1) % colors.length;
    // if (a <=5) {
    // a++;
    // }else{
    //   a = 0;
    // }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 300,
          height: 250,
          color: colors[a],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(50),
              child: ElevatedButton(
                onPressed: button1,
                child: Text('Random'),
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: button2,
                child: Text('Serial'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
