import 'package:bilimlab_project_mobile/presentation/Widgets/CustomTextFields.dart';
import 'package:bilimlab_project_mobile/presentation/Widgets/LongButton.dart';
import 'package:bilimlab_project_mobile/utils/AppImages.dart';
import 'package:bilimlab_project_mobile/utils/AppTexts.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String? errorMassagePassword;
  String? errorMassageEmail;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void onEnterButtonPressed() {

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 100),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 70,
                    child: Image.asset(AppImages.full_logo)),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text(AppText.enterEmail),
                            SizedBox(height: 8,),
                            CustomTextField(controller: _emailController, title: AppText.email, suffix: false),
                            SizedBox(height: 16,),
                            Text(AppText.enterPassword),
                            SizedBox(height: 8,),
                            CustomTextField(controller: _passwordController, title: AppText.password, suffix: true),
                            TextButton(
                                onPressed: (){

                                },
                                child: Text(AppText.forgotPassword),
                            ),

                            LongButton(onPressed: onEnterButtonPressed, title: AppText.enter),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
