import 'package:client/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonText;
  const AuthGradientButton({super.key,
    required this.onTap,
  required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Pallete.gradient1,
          Pallete.gradient3,
        ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight
        ),
        borderRadius: BorderRadius.circular(7)
      ),
      child: ElevatedButton(onPressed: onTap,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: Pallete.transparentColor,
          shadowColor: Pallete.transparentColor,
        ),
        child: Text(buttonText,
        style: TextStyle(fontSize: 17,
        fontWeight: FontWeight.w600,
        ),
        ),
      ),
    );
  }
}
