import 'package:flutter/material.dart';
import 'package:note/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black.withOpacity(0.6),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
