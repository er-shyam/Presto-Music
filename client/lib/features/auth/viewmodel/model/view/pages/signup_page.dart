import 'package:client/core/theme/app_pallete.dart';
import 'package:client/features/auth/viewmodel/model/view/widgets/auth_gradient_button.dart';
import 'package:client/features/auth/viewmodel/model/view/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    // TODO: implement dispose
    super.dispose();
    formKey.currentState!.validate();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Sign Up.",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight:FontWeight.bold
                ),
              ),
              SizedBox(height: 30,),
              CustomField(
                hintText: "Name",
                controller: nameController,
              ),
              SizedBox(height: 15,),
              CustomField(
                hintText: "Email",
                controller: emailController,
              ),
              SizedBox(height: 15,),
              CustomField(
                hintText: "Password",
                controller: passwordController,
                isObscureText: true,
              ),
              SizedBox(height: 20,),
              AuthGradientButton(
                buttonText: "Sign Up",
                onTap: (){},
              ),
              SizedBox(height: 20,),
              RichText(text: TextSpan(
                text: "Already have an account?",
                style: Theme.of(context).textTheme.titleMedium,
                children:[
                  TextSpan(
                    text: " Sign In",
                    style: TextStyle(
                      color: Pallete.gradient2,
                      fontWeight: FontWeight.bold,
                    )
                  )
                ]
              ))
            ],
          ),
        ),
      ),
    );
  }
}
