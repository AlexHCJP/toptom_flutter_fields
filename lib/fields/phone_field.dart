import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../top_field.dart';

class ToptomPhoneField extends StatelessWidget {
  final TextEditingController controller;
  final String? label;
  final bool isRequired;

  ToptomPhoneField({
    super.key,
    required this.controller,
    this.label,
    this.isRequired = false,
  });

  final _maskFormatter = MaskTextInputFormatter(
      mask: '+###########',
      filter: { "#": RegExp(r'[0-9]') },
      type: MaskAutoCompletionType.lazy
  );


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
            inputFormatters: [_maskFormatter],
            keyboardType: TextInputType.phone,
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