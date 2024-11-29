import 'package:flutter/material.dart';
import 'package:note/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 44,
          ),
          TextField(
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
                hintText: "Title",
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
