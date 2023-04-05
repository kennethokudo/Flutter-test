import 'package:flutter/material.dart';

class Pic3 extends StatelessWidget {
  const Pic3({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Image.asset(
        "images/4.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
