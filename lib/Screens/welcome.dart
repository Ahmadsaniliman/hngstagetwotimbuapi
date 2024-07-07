import 'package:flutter/material.dart';
import 'package:simpletimbuapiapp/Screens/home.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  Future<void> navigate() {
    return Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const ProductHomePage(),
        ),
        (route) => false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            'Hello Welcome\nShop With Us Please',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
