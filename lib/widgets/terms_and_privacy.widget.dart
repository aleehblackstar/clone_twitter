import 'package:flutter/material.dart';

class TermsAndPrivacy extends StatelessWidget {
  const TermsAndPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
            TextSpan(
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15
              ),
              text: "Have an account already?",
              children: [
                TextSpan(
                  style: TextStyle(
                    color: Colors.blue
                  ),
                  text: " Log in"
                )
              ]
            ),
          );
  }
}