import 'dart:io';

import 'package:fishclassificationapp/screens/descriptionscreen.dart';
import 'package:fishclassificationapp/screens/displayscreen.dart';
import 'package:fishclassificationapp/screens/homescreen.dart';
import 'package:fishclassificationapp/screens/loaderscreen.dart';
import 'package:fishclassificationapp/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fish Classification Using ResNet50',
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        LoadingScreen.id: (context) {
          // Extract arguments from settings.arguments as a Map<String, dynamic> first
          final Map<String, dynamic>? arguments = ModalRoute.of(context)!
              .settings
              .arguments as Map<String, dynamic>?;
          // Extract specific arguments from the map
          final File? mainFilePath = arguments?['filePath'] as File?;
          final String? label = arguments?['label'] as String?;
          final double? confidence = arguments?['confidence'] as double?;
          return LoadingScreen(
            filePath: mainFilePath,
            label: label,
            confidence: confidence,
          );
        },
        DisplayImageScreen.id: (context) {
          // Extract arguments from settings.arguments as a Map<String, dynamic> first
          final Map<String, dynamic>? arguments = ModalRoute.of(context)!
              .settings
              .arguments as Map<String, dynamic>?;
          // Extract specific arguments from the map
          final File? mainFilePath = arguments?['filePath'] as File?;
          final String? label = arguments?['label'] as String?;
          final double? confidence = arguments?['confidence'] as double?;
          return DisplayImageScreen(
            filePath: mainFilePath,
            label: label,
            confidence: confidence,
          );
        },
        DescriptionScreen.id: (context) {
          // Extract arguments from settings.arguments as a Map<String, dynamic> first
          final Map<String, dynamic>? arguments = ModalRoute.of(context)!
              .settings
              .arguments as Map<String, dynamic>?;
          // Extract specific arguments from the map

          final String? label = arguments?['label'] as String?;

          return DescriptionScreen(
            label: label,
          );
        },
      },
    );
  }
}
