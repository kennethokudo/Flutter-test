import 'package:flutter/material.dart';

class Pic2 extends StatelessWidget {
  const Pic2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Image.asset(
        "images/5.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
