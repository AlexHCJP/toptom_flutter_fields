import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../top_field.dart';

class ToptomPasswordField extends StatelessWidget {
  final TextEditingController controller;
  final String? label;
  final String? hintText;
  final bool isRequired;

  const ToptomPasswordField(
      {super.key,
      required this.controller,
      this.label,
      this.isRequired = false,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) TopField(label: label!, isRequired: isRequired),
        const SizedBox(height: 5),
        SizedBox(
          child: TextField(
            controller: controller,
            obscureText: true,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ),
      ],
    );
  }
}
