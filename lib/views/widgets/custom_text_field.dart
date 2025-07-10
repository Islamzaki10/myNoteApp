import 'package:flutter/material.dart';
import 'package:note_app/consts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.onSaved,
    this.onChaned,
  });
  final String title;
  final int maxLines;
  final void Function(String)? onChaned;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChaned,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return ' field is required';
        } else {
          return null;
        }
      },
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
