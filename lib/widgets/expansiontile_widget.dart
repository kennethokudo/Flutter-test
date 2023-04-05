import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/expansion_container.dart';

class ExpansiontileWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const ExpansiontileWidget({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      backgroundColor: const Color(0xfff4f5f9),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey.shade700,
        ),
      ),
      leading: Icon(icon),
      children: [
        Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Buy/Sell History for",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  TextSpan(
                    text: " 2118 Thornridge Cir, Syracuse,\n Connecticut 35624",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            const ExpansionContainer(),
            const ExpansionContainer(),
            const ExpansionContainer(),
          ],
        ),
      ],
    );
  }
}
