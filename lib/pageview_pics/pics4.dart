import 'package:flutter/material.dart';

class Pic4 extends StatelessWidget {
  const Pic4({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Image.asset(
        "images/3.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
