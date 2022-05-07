import 'package:flutter/material.dart';
import 'package:paikarilimited_quicktech/Fixed%20Variables/fixedvariables.dart';

class PasswordResetButton extends StatelessWidget {
  final text;
  final GlobalKey<FormState> formkey;
  final void Function()? route;
  PasswordResetButton(
      {required this.formkey,
      required this.route,
      required this.text,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: redcolor, textStyle: TextStyle(fontWeight: FontWeight.bold)),
      onPressed: () {
        // Validate returns true if the form is valid, or false otherwise.

        if (formkey.currentState!.validate()) {
          route!();
        }
      },
      child: Text(text),
    );
  }
}
