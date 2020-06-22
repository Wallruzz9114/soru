import 'package:flutter/material.dart';

class TextLink extends StatelessWidget {
  const TextLink(this.text, {this.onPressed});

  final String text;
  final Function() onPressed;

  @override
  GestureDetector build(BuildContext context) => GestureDetector(
        onTap: onPressed,
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
        ),
      );
}
