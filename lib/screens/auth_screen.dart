import 'package:flutter/material.dart';
import 'package:learning_project/widgets/cm_button.dart';
import 'package:learning_project/widgets/cm_form_field_widget.dart';

/// Screen to allow users to signin

enum AuthAction { signIn, signUp }

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late final TextEditingController _emailEditingController;
  late final TextEditingController _passwordEditingController;

  late AuthAction _authAction;

  @override
  void initState() {
    super.initState();
    _emailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();

    _authAction = AuthAction.signIn;
  }

  String get title => _authAction == AuthAction.signIn ? 'Sign In' : 'Sign Up';

  String get account => _authAction == AuthAction.signIn
      ? 'Don\'t hava an account? Sign Up'
      : 'Have an account? Sign In';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
                buttonTitle: title,
                onPressed: () {
                  if (_authAction == AuthAction.signIn) {
                    /// Perform Sign In
                  } else {
                    /// Perform Sign Up
                  }
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextButton(
              child: Text(account),
              onPressed: () {
                if (_authAction == AuthAction.signIn) {
                  setState(() => _authAction = AuthAction.signUp);
                } else {
                  setState(() => _authAction = AuthAction.signIn);
                }
              },
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
