import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/views/edit_note_view.dart';

class Notecard extends StatelessWidget {
  const Notecard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xffffcc80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                'Flutter Tips',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Text(
                  'build your career with Islam Osman',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromRGBO(0, 0, 0, .5),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                '21may,2025',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(0, 0, 0, .5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
