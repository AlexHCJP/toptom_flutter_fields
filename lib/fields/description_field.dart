import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../top_field.dart';

class ToptomDescriptionField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final bool isRequired;
  final int? maxLength;
  final Color? color;
  final TextStyle? hintStyle;

  const ToptomDescriptionField({
    super.key,
    this.controller,
    this.label,
    this.isRequired = false,
    this.hintText,
    this.maxLength,
    this.color,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      if (label != null) TopField(label: label!, isRequired: isRequired),
      const SizedBox(height: 5),
      TextField(
        controller: controller,
        maxLines: 5,
        maxLength: maxLength,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color:color ?? const Color.fromRGBO(232, 232, 232, 1), width: 1.5)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
      )
    ]);
  }
}
