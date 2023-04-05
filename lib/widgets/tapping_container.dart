import 'package:flutter/material.dart';

class TapContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  const TapContainer({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey.shade300,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(text),
            Icon(
              icon,
            )
          ],
        ),
      ),
    );
  }
}
