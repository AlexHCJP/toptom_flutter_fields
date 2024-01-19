import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../top_field.dart';

class ToptomEmailField extends StatefulWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final bool isRequired;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? enabled;

  final Function(String)? onSubmit;


  const ToptomEmailField({
    super.key,
    this.enabled,
    this.controller,
    this.label,
    this.isRequired = false,
    this.suffixIcon,
    this.prefixIcon,
    this.onSubmit,
    this.hintText,
  });

  @override
  State<ToptomEmailField> createState() => _ToptomEmailFieldState();
}

class _ToptomEmailFieldState extends State<ToptomEmailField> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) TopField(label: widget.label!, isRequired: widget.isRequired),
        const SizedBox(height: 5),
        SizedBox(
          child: TextField(
            enabled: widget.enabled,
            keyboardType: TextInputType.emailAddress,
            onSubmitted: widget.onSubmit,
            controller: widget.controller,
            decoration: InputDecoration(
              hintText: widget.hintText,
              prefix: widget.prefixIcon,
              suffix: widget.suffixIcon,
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
