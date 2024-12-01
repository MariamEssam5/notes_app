import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_appbar.dart';
import 'package:note/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                height: 50,
              ),
              CutomAppBar(
                title: "Edit Note",
                icon: Icons.check,
              ),
              SizedBox(
                height: 50,
              ),
              CustomTextField(hint: "Title"),
              SizedBox(height: 16),
              CustomTextField(
                hint: "Content",
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
