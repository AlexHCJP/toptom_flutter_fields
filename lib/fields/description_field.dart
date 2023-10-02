import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../top_field.dart';

class ToptomDescriptionField extends StatelessWidget {
  final TextEditingController controller;
  final String? label;
  final bool isRequired;

  const ToptomDescriptionField({
    super.key,
    required this.controller,
    this.label,
    this.isRequired = false
  });


  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(label != null) TopField(label: label!, isRequired: isRequired),
          const SizedBox(height: 5),
          TextField(
            controller: controller,
            maxLines: 5,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
              ),

            ),
          )
        ]
    );
  }

}