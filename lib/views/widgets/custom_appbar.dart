import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_search_icon.dart';

class CutomAppBar extends StatelessWidget {
  const CutomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        CustomSearchIcon()
      ],
    );
  }
}
