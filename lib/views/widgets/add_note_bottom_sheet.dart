import 'package:flutter/material.dart';
import 'package:note_app/consts.dart';
import 'package:note_app/views/widgets/custom_bottom.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 24),
            CustomTextField(title: 'title'),
            SizedBox(height: 16),
            CustomTextField(title: 'content', maxLines: 5),
            SizedBox(height: 32),
            CustomBottom(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
