import 'dart:io';

import 'package:fishclassificationapp/screens/descriptionscreen.dart';
import 'package:fishclassificationapp/screens/homescreen.dart';
import 'package:fishclassificationapp/utils/appcolor.dart';
import 'package:fishclassificationapp/widgets/appbutton.dart';
import 'package:flutter/material.dart';

class DisplayImageScreen extends StatefulWidget {
  static const String id = "display_image_screen";
  const DisplayImageScreen({
    super.key,
    required this.filePath,
    required this.label,
    required this.confidence,
  });

  final File? filePath;
  final String? label;
  final double? confidence;

  @override
  State<DisplayImageScreen> createState() => _DisplayImageScreenState();
}

class _DisplayImageScreenState extends State<DisplayImageScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Result",
          style: TextStyle(
            fontFamily: "ProximaNova",
            fontSize: height * 0.03,
            color: primarybgColor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: width * 0.05, right: width * 0.05, top: height * 0.05),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(13)),
            color: primaryColor,
          ),
          width: width * 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: height * 0.1,
                width: height * 0.1,
                child: const Image(
                  image: AssetImage('assets/imgs/logo-rbg.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
              Text(
                widget.label!,
                style: TextStyle(
                  fontFamily: "ProximaNova",
                  fontSize: height * 0.03,
                  fontWeight: FontWeight.bold,
                  color: white,
                ),
              ),
              (widget.label!.toLowerCase() == "no fish detected" ||
                      widget.label!.toLowerCase() == "fish detected")
                  ? Container()
                  : Text(
                      "Confidence Rate: ${widget.confidence!.toStringAsFixed(2)}%",
                      style: TextStyle(
                        fontFamily: "ProximaNova",
                        fontSize: height * 0.018,
                        color: white,
                      ),
                    ),
              SizedBox(height: height * 0.015),
              Container(
                height: height * 0.35,
                width: width * 1,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(13)),
                  child: Image(
                    image: FileImage(widget.filePath!),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              (widget.label!.toLowerCase() == "no fish detected" ||
                      widget.label!.toLowerCase() == "fish detected")
                  ? AppButton(
                      title: "Retry",
                      onPress: () => Navigator.pushNamed(
                            context,
                            HomeScreen.id,
                          ),
                      fontSize: height * 0.025,
                      horizontalPadding: width * 0.34,
                      verticalPadding: height * 0.02,
                      bgColor: primaryColor.withOpacity(0.2))
                  : Column(
                      children: [
                        AppButton(
                            title: "Description",
                            onPress: () => Navigator.pushNamed(
                                  context,
                                  DescriptionScreen.id,
                                  arguments: {
                                    'label': widget.label,
                                  },
                                ),
                            fontSize: height * 0.025,
                            horizontalPadding: width * 0.267,
                            verticalPadding: height * 0.02,
                            bgColor: primaryColor.withOpacity(0.2)),
                        SizedBox(height: height * 0.015),
                        AppButton(
                            title: "Retry",
                            onPress: () => Navigator.pushNamed(
                                  context,
                                  HomeScreen.id,
                                ),
                            fontSize: height * 0.025,
                            horizontalPadding: width * 0.34,
                            verticalPadding: height * 0.02,
                            bgColor: primaryColor.withOpacity(0.2)),
                      ],
                    ),
            ],
          ),
        ),
      ),
    ));
  }
}
