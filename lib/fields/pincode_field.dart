import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ToptomPincodeField extends StatelessWidget {
  final TextEditingController? controller;
  final bool enabled;

  const ToptomPincodeField({
    super.key,
    this.controller,
    this.enabled = true
  });


  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      enabled: enabled,
      appContext: context,
      controller: controller,
      length: 6,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly
      ],
      pinTheme: PinTheme.defaults(
        activeColor: Theme.of(context).colorScheme.primary,
        selectedColor: Theme.of(context).colorScheme.primary,
        inactiveColor: Theme.of(context).colorScheme.primary,
        disabledColor: Theme.of(context).colorScheme.primary,
        shape: PinCodeFieldShape.box,

        borderRadius: BorderRadius.circular(8)
      ),
    );
  }

}