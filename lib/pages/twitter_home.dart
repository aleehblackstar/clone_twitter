import 'package:clone_twitter/widgets/custom_button.widget.dart';
import 'package:clone_twitter/widgets/social_button_widget.dart';
import 'package:clone_twitter/widgets/terms_and_privacy.widget.dart';
import 'package:flutter/material.dart';

class TwitterHomePage extends StatelessWidget {
  const TwitterHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/twitter.png", width: 30, height: 30),

              SizedBox(height: 70),

              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: const Text(
                    "See what's happening in the world right now.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              SizedBox(height: 70),

              const SocialButton(
                pathImage: "assets/images/google.png",
                text: "Continue with Google",
              ),

              SizedBox(height: 10),

              const SocialButton(
                pathImage: "assets/images/twitter.png",
                text: "Continue with Twitter",
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Expanded(child: Divider(color: Colors.black)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("or"),
                  ),
                  Expanded(child: Divider(color: Colors.black)),
                ],
              ),
              CustomButton(text: "Create account"),
              SizedBox(height: 30),
              const Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                  text: "By signing up, you agree to our ",
                children: [
                  TextSpan(
                    style: TextStyle(
                      color: Colors.blue
                    ),
                    text: "Terms"
                  ),
                  TextSpan(
                    text: ", "
                  ),
                  TextSpan(
                    style: TextStyle(
                      color: Colors.blue
                    ),
                    text: "Privacy Policy"
                  ),
                  TextSpan(
                    text: " and "
                  ),
                  TextSpan(
                    style: TextStyle(
                      color: Colors.blue
                    ),
                    text: "Cookie Use."
                  )
                ]
            )),
          SizedBox(
            height: 50,
          ),
          TermsAndPrivacy(),
          
            ],
          ),
        ),
      ),
    );
  }
}
