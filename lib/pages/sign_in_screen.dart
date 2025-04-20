import 'package:filme_flix/forms/login_form.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF3F3F3),
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsetsDirectional.symmetric(horizontal: 19, vertical: 29),
              child: Column(
              children: [
                LoginForm(),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Haven’t made an account?',
                        style: TextStyle(
                          fontSize: 13,
                        )
                      ),
                      InkWell(
                        onTap: () {
                          print('clicou!');
                        },
                        borderRadius: BorderRadius.circular(4),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff95ACFF),
                          ),
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
