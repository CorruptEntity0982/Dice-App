import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);
  @override
  State<Dicepage> createState() => _MyappState();
}

class _MyappState extends State<Dicepage> {
  Random random = Random();

  void change() {
    leftdice = random.nextInt(6) + 1;
    rightdice = random.nextInt(6) + 1;
  }

  int leftdice = 1;
  int rightdice = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    change();
                  });
                },
                child: Image.asset('images/dice$leftdice.png')),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightdice = random.nextInt(6) + 1;
                  leftdice = random.nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightdice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
