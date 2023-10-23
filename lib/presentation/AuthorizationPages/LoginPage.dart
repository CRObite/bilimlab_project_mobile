import 'package:bilimlab_project_mobile/utils/AppImages.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 70,
                child: Image.asset(AppImages.full_logo)),
            Card(
              child: Column(
                children: [

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
