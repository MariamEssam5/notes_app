import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  final List<Color> data = const [
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: NoteItem(
              color: data[index % data.length],
            ),
          );
        },
      ),
    );
  }
}
