
import 'package:flutter/material.dart';
import '../../utils/AppColors.dart';

class LongButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const LongButton({Key? key, required this.onPressed, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(title),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.colorButton,
        ),
      ),
    );
  }
}