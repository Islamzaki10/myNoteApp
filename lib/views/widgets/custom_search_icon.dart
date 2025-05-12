import 'package:flutter/material.dart';

class CustomsearchIcon extends StatelessWidget {
  const CustomsearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Icon(Icons.search, color: Colors.white, size: 28),
    );
  }
}
