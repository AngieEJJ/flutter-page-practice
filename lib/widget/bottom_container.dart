import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({required this.color, super.key});
final Color color; // 2. 생성자 생성해서 뚫기

  @override
  Widget build(BuildContext context) {
    return Container(
    color: color,
    width: 300,
    height: 300,
    );
    }
    }

