import 'dart:math';
import 'package:flutter/material.dart';
import 'package:screentest/screen/detail_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color color = Colors.yellow;

  Color getRandomColor() {
    final random = Random();
    final red = random.nextInt(256);
    final green = random.nextInt(256);
    final blue = random.nextInt(256);

    final newColor = Color.fromARGB(255, red, green, blue);
    color = newColor;
    return newColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                      color: color,
                      changeColor: () => getRandomColor()), //1, 보내주고 싶은 변수 넣기. ()를 꼭 붙여줘야 함수 결과가 아니라 동작이 넘어간다.
                ),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            getRandomColor();
          });
        },
        child: Container(color: color),
      ),
    );
  }
}
