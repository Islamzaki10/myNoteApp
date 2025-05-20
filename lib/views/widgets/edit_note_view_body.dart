import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: const Column(
          children: [
            CustomAppBar(title: 'Edit Note', icon: Icons.check),
            SizedBox(height: 50),
            CustomTextField(title: 'title'),
            SizedBox(height: 16),
            CustomTextField(title: 'content', maxLines: 5),
          ],
        ),
      ),
    );
  }
}
