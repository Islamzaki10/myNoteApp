import 'package:flutter/material.dart';
import 'package:note_app/consts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title, this.maxLines = 1});
  final String title;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        label: Text(title, style: TextStyle(color: kPrimaryColor)),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
