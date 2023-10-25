import 'package:flutter/material.dart';

class StudyingPage extends StatefulWidget {
  const StudyingPage({super.key});

  @override
  State<StudyingPage> createState() => _StudyingPageState();
}

class _StudyingPageState extends State<StudyingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('StudyingPage'),
      ),
    );
  }
}
