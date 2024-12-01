import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_search_icon.dart';

class CutomAppBar extends StatelessWidget {
  const CutomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
        CustomSearchIcon(
          icon: icon,
        )
      ],
    );
  }
}
