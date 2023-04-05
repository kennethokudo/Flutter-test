import 'package:flutter/material.dart';

class Pic1 extends StatelessWidget {
  const Pic1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          "images/Rectangle 2363.png",
        ),
        fit: BoxFit.cover,
      )),
    );
  }
}
