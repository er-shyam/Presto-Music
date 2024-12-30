import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final bool isObscureText;
  final String hintText;
  final TextEditingController controller;
  const CustomField({super.key,
    this. isObscureText = false,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      validator: (val){
        if(val!.trim().isEmpty){
          return "$hintText is missing!";
        }
        return null;
      },
      obscureText: isObscureText,
    );

  }
}
