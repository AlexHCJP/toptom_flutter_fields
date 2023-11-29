import 'package:flutter/material.dart';

import '../top_field.dart';

class ToptomTextField extends StatefulWidget {
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
    this.onSubmit,
    this.hintText
  });

  @override
  State<ToptomTextField> createState() => _ToptomTextFieldState();
}

class _ToptomTextFieldState extends State<ToptomTextField> {
  final FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) TopField(label: widget.label!, isRequired: widget.isRequired),
        const SizedBox(height: 5),
        TextField(
          focusNode: _focusNode,
          onSubmitted: widget.onSubmit,
          controller: widget.controller,
          onTap: () {
            if (!_focusNode.hasFocus) {

              FocusScope.of(context).requestFocus(_focusNode);
            }
          },
          decoration: InputDecoration(
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,
            hintText: widget.hintText,
            contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: Color.fromRGBO(232, 232, 232, 1), width: 1.5)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ],
    );
  }
}
