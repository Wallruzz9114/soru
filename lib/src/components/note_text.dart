import 'package:flutter/material.dart';

class NoteText extends StatelessWidget {
  const NoteText(this.text, {this.textAlign, this.color});

  final String text;
  final TextAlign textAlign;
  final Color color;

  @override
  Text build(BuildContext context) => Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: color ?? Colors.grey[600],
        ),
      );
}
