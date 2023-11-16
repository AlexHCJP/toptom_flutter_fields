import 'package:flutter/material.dart';

import '../top_field.dart';

class ToptomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final bool isRequired;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String)? onSubmit;

  const ToptomTextField({
    super.key,
    this.controller,
    this.label,
    this.isRequired = false,
    this.suffixIcon,
    this.prefixIcon,
    this.onSubmit, this.hintText
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(label != null) TopField(label: label!, isRequired: isRequired),
        const SizedBox(height: 5),
        TextField(
          onSubmitted: onSubmit,
          controller: controller,
          decoration: InputDecoration(
            prefix: prefixIcon,
            suffix: suffixIcon,
            hintText: hintText,
            contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8)
            ),
          ),
        ),
      ],
    );
  }

}