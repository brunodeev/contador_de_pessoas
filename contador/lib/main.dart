// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

void decrement() {
  print("decrement");
}

void increment() {
  print("increment");
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Pode entrar!",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w600)),
            const Padding(
              padding: EdgeInsets.all(45),
              child: Text("0",
                  style: TextStyle(
                    fontSize: 100,
                    color: Colors.white,
                  )),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                onPressed: decrement,
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(100, 100),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                child: const Text("Saiu",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    )),
              ),
              const SizedBox(
                width: 40,
              ),
              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(100, 100),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                child: const Text("Entrou",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    )),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
