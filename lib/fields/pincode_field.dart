import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ToptomPincodeField extends StatelessWidget {
  final TextEditingController? controller;

  const ToptomPincodeField({
    super.key,
    this.controller,
  });


  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
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
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }

}