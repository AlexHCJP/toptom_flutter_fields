import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../top_field.dart';

class ToptomNumberField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final bool isRequired;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String)? onSubmit;

  const ToptomNumberField({
    super.key,
    this.controller,
    this.label,
    this.isRequired = false,
    this.suffixIcon,
    this.onSubmit,
    this.prefixIcon,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) TopField(label: label!, isRequired: isRequired),
        const SizedBox(height: 5),
        SizedBox(
          child: TextField(
            onSubmitted: onSubmit,
            controller: controller,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              prefix: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: prefixIcon,
              ),
              suffix: suffixIcon,
              hintText: hintText,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color.fromRGBO(232, 232, 232, 1), width: 1.5)),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ),
      ],
    );
  }
}
