import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../top_field.dart';

class ToptomEmailField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final bool isRequired;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  
  final Function(String)? onSubmit;

  const ToptomEmailField({
    super.key,
    this.controller,
    this.label,
    this.isRequired = false,
    this.suffixIcon,
    this.prefixIcon,
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
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            onSubmitted: onSubmit,
            controller: controller,
            decoration: InputDecoration(
              prefix: prefixIcon,
              suffix: suffixIcon,
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
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