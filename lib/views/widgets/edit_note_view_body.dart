import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_appbar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CutomAppBar(
            title: "Edit Note",
            icon: Icons.check,
          )
        ],
      ),
    );
  }
}
