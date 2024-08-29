import 'package:flutter/material.dart';

class TextInputFeild extends StatelessWidget {
  const TextInputFeild ({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Enter a text",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        )
      ),
    );
  }
}