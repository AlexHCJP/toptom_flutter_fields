import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopField extends StatelessWidget {
  final String label;
  final bool isRequired;

  const TopField({super.key, required this.label, required this.isRequired});

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
        children: [
          TextSpan(text: label),
          if(isRequired) const TextSpan(text: '*', style: TextStyle(color: Colors.red))
        ]
    ));
  }
}