import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final int maxLines;

  const CustomTextField({
    required this.labelText,
    this.maxLines = 1,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextField(
      style: theme.textTheme.bodyLarge,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26.0),
        ),
      ),
      maxLines: maxLines,
    );
  }
}