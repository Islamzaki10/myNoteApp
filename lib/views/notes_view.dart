import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/add_note_botton_sheet.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        shape: const CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddNoteBotton();
            },
          );
        },
        child: const Icon(Icons.add, color: Colors.black),
      ),
      body: NotesViewBody(),
    );
  }
}
