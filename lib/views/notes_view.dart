import 'package:flutter/material.dart';
import 'package:note/constants.dart';
import 'package:note/views/widgets/add_note_bottom_sheet.dart';
import 'package:note/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor.withOpacity(0.9),
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
