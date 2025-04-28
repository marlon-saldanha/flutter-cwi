import 'package:filme_flix/components/button_component.dart';
import 'package:filme_flix/components/text_field_component.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextField(labelText: 'Email', icon: Icons.mail),
          Container(
            margin: EdgeInsets.only(top: 38),
            child: CustomTextField(
              labelText: 'Password',
              isPassword: true,
              icon: Icons.lock,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 38),
            child: ButtonComponent(
              text: 'Login',
              onPressed: () => context.go('/home'),
            ),
          ),
        ],
      ),
    );
  }
}
