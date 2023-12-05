import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../top_field.dart';

class ToptomPhoneField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final bool isRequired;
  final Widget? prefixIcon;

  ToptomPhoneField({
    super.key,
    this.controller,
    this.label,
    this.isRequired = false,
    this.hintText,
    this.prefixIcon,
  });

  final _maskFormatter = MaskTextInputFormatter(
      mask: '+# (###) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      initialText: '7',
      type: MaskAutoCompletionType.lazy
  );


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
            inputFormatters: [_maskFormatter],
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              // isDense: true,
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
