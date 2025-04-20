import 'package:filme_flix/components/button_component.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/image/banner-home.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 0,
            height: screenHeight * 0.37,
            width: screenWidth,
            child: Container(
              padding: const EdgeInsets.only(
                top: 29,
                right: 19,
                left: 19,
                bottom: 54,
              ),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Watch movies anytime anywhere',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      'Explore a vast collection of blockbuster movies, timeless classics, and the latest releases.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: ButtonComponent(
                      text: 'Login',
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign-in');
                      },
                    ),
                  ),
                  ButtonComponent(
                    text: 'Sign Up',
                    secondary: true,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
