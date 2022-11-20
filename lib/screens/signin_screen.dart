import 'package:flutter/material.dart';
import 'package:learning_project/widgets/cm_button.dart';
import 'package:learning_project/widgets/cm_form_field_widget.dart';

/// Screen to allow users to signin

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late final TextEditingController _emailEditingController;
  late final TextEditingController _passwordEditingController;
  @override
  void initState() {
    super.initState();
    _emailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign In',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CMFormFieldWidget(
              title: 'Email Address',
              controller: _emailEditingController,
              hintText: 'devjams@gmail.com',
            ),
            const SizedBox(
              height: 24,
            ),
            CMFormFieldWidget(
              title: 'Password',
              controller: _passwordEditingController,
              hintText: '*********',
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: double.infinity,
              child: CMButton(
                buttonTitle: 'Login',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailEditingController.dispose();
    _passwordEditingController.dispose();
    super.dispose();
  }
}
