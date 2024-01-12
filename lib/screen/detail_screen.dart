import 'package:flutter/material.dart';
import 'package:screentest/widget/bottom_container.dart';

class DetailScreen extends StatefulWidget {
  final Color color;
  final Color Function() changeColor; // 반환 타입을 넣지 않으면 리턴이 안된다.


  const DetailScreen({required this.color, required this.changeColor, super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '다음 화면',
          style: TextStyle(color: widget.color), //3. 가져다 쓰고 싶은 곳에서 사용
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                color = widget.changeColor();
              });
            },
            child: const Text('색 변경하기'),
          ),
          BottomContainer(color: widget.color), //3. 가져다 쓰고 싶은 곳에서 사용
          ElevatedButton(
            onPressed: () {},
            child: const Text('돌려주기'),
          ),
        ],
      ),
    );
  }
}
