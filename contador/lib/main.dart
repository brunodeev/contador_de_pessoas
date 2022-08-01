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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
    print(count);
  }

  void increment() {
    setState(() {
      count++;
    });
    print(count);
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(isFull ? "Lotado!" : "Pode entrar!",
                style: TextStyle(
                    fontSize: 40,
                    color: isFull
                        ? Color.fromARGB(255, 255, 87, 87)
                        : Colors.white,
                    fontWeight: FontWeight.w600)),
            Padding(
              padding: EdgeInsets.all(45),
              child: Text("$count",
                  style: TextStyle(
                    fontSize: 100,
                    color: isFull
                        ? Color.fromARGB(255, 255, 87, 87)
                        : Colors.white,
                  )),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                onPressed: isEmpty ? null : decrement,
                style: TextButton.styleFrom(
                    backgroundColor: isEmpty
                        ? Color.fromARGB(164, 255, 85, 85)
                        : Color.fromARGB(255, 255, 87, 87),
                    fixedSize: const Size(100, 100),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                child: const Text("Saiu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ),
              const SizedBox(
                width: 40,
              ),
              TextButton(
                onPressed: isFull ? null : increment,
                style: TextButton.styleFrom(
                    backgroundColor:
                        isFull ? Colors.white.withOpacity(0.3) : Colors.white,
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
