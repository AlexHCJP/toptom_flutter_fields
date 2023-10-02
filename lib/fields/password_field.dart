import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../top_field.dart';

class ToptomPasswordField extends StatelessWidget {
  final TextEditingController controller;
  final String? label;
  final bool isRequired;


  const ToptomPasswordField({
    super.key,
    required this.controller,
    required this.label,
    this.isRequired = false
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(label != null) TopField(label: label!, isRequired: isRequired),
        const SizedBox(height: 5),
        SizedBox(
          height: 55,
          child: TextField(
            controller: controller,
            obscureText: true,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
        ),
      ],
    );
  }
}