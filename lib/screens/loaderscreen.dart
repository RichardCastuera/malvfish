import 'dart:io';

import 'package:fishclassificationapp/screens/displayscreen.dart';
import 'package:fishclassificationapp/utils/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  static const String id = "loading_screen";

  const LoadingScreen({
    super.key,
    required this.filePath,
    required this.label,
    required this.confidence,
  });

  final File? filePath;
  final String? label;
  final double? confidence;

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.of(context).popAndPushNamed(
      DisplayImageScreen.id,
      arguments: {
        'filePath': widget.filePath,
        'label': widget.label,
        'confidence': widget.confidence,
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitWaveSpinner(
              waveColor: primaryColor,
              color: secondaryColor,
              size: 60.0,
              controller: _animationController,
            ),
            SizedBox(height: height * 0.02),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontFamily: "ProximaNova",
                  fontSize: height * 0.018,
                  color: secondaryColor,
                ),
                children: const [
                  TextSpan(
                      text:
                          "Please allow us a few moments to analyze your sample.\n"),
                  TextSpan(text: "You will receive the results shortly after!"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
