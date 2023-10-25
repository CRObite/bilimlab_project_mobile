
import 'package:bilimlab_project_mobile/presentation/Widgets/AppAlert.dart';
import 'package:bilimlab_project_mobile/utils/AlertEnum.dart';
import 'package:flutter/material.dart';

import '../../utils/AppTexts.dart';
import '../Widgets/CustomTextFields.dart';
import '../Widgets/LongButton.dart';

class RecoveryPage extends StatefulWidget {
  const RecoveryPage({super.key});

  @override
  State<RecoveryPage> createState() => _RecoveryPageState();
}

class _RecoveryPageState extends State<RecoveryPage> {

  String? errorMassageEmail;

  final TextEditingController _emailController = TextEditingController();

  void onEnterButtonPressed() {
    AppAlert.show(context, 'Helll yea', AlertEnum.Success);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppText.setNewPassword , style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 32,),
                  Text(AppText.enterEmail),
                  SizedBox(height: 8,),
                  CustomTextField(controller: _emailController, title: AppText.email, suffix: false),
                  SizedBox(height: 32,),
                  LongButton(onPressed: onEnterButtonPressed, title: AppText.send),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

