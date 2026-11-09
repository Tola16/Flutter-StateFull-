import 'package:flutter/material.dart';

class Custom extends StatelessWidget {
  final String txt;
  final VoidCallback onPressed;

  Custom({super.key, required this.txt, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 15),

      color: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(20),
      ),

      onPressed: onPressed,
      child: Text(
        txt,
        style: TextStyle(color: Colors.white),
        textAlign: .center,
      ),
    );
  }
}
