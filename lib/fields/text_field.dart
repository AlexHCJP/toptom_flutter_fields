import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../top_field.dart';

class ToptomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final bool isRequired;
  final Widget? icon;
  final Function(String)? onSubmit;

  const ToptomTextField({
    super.key,
    this.controller,
    this.label,
    this.isRequired = false,
    this.icon,
    this.onSubmit
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
            onSubmitted: onSubmit,
            controller: controller,
            decoration: InputDecoration(
              suffixIcon: icon,
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