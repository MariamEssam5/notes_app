import 'package:flutter/material.dart';
import 'package:note/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLines = 2, this.onSaved});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 44,
          ),
          TextFormField(
            validator: (Value) {
              if (Value?.isEmpty ?? true) {
                return "Field is required";
              } else {
                return null;
              }
            },
            onSaved: onSaved,
            maxLines: maxLines,
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(
                  color: kPrimaryColor,
                ),
                border: BuidBorder(),
                enabledBorder: BuidBorder(),
                focusedBorder: BuidBorder(kPrimaryColor)),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder BuidBorder([Color]) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: Color ?? Colors.white),
      );
}
