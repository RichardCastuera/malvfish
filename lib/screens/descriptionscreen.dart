import 'package:fishclassificationapp/description/bullettuna.dart';
import 'package:fishclassificationapp/description/frigatetuna.dart';
import 'package:fishclassificationapp/description/redtailscad.dart';
import 'package:fishclassificationapp/description/shortfinscad.dart';
import 'package:fishclassificationapp/description/shrimpscad.dart';
import 'package:fishclassificationapp/description/skipjacktuna.dart';
import 'package:fishclassificationapp/description/yellowfintuna.dart';
import 'package:fishclassificationapp/description/yellowtailscad.dart';
import 'package:fishclassificationapp/utils/appcolor.dart';
import 'package:flutter/material.dart';

class DescriptionScreen extends StatefulWidget {
  static const String id = "description_screen";

  const DescriptionScreen({super.key, required this.label});

  final String? label;

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "More",
          style: TextStyle(
            fontFamily: "ProximaNova",
            fontSize: height * 0.03,
            color: primarybgColor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: height * 0.02,
          left: width * 0.05,
          right: width * 0.05,
          bottom: height * 0.02,
        ),
        child: SingleChildScrollView(
          child: (widget.label!.toLowerCase() == 'bullet tuna fish')
              ? const BulletTuna()
              : (widget.label!.toLowerCase() == 'frigate tuna fish')
                  ? const FrigateTuna()
                  : (widget.label!.toLowerCase() == 'redtail scad fish')
                      ? const RedTailScad()
                      : (widget.label!.toLowerCase() == 'shortfin scad fish')
                          ? const ShortFinScad()
                          : (widget.label!.toLowerCase() == 'shrimp scad fish')
                              ? const ShrimpScad()
                              : (widget.label!.toLowerCase() ==
                                      'skipjack tuna fish')
                                  ? const SkipJackTuna()
                                  : (widget.label!.toLowerCase() ==
                                          'yellowfin tuna fish')
                                      ? const YellowFinTuna()
                                      : (widget.label!.toLowerCase() ==
                                              'yellowtail scad fish')
                                          ? const YellowTailScad()
                                          : Container(
                                              color: Colors.transparent,
                                            ),
        ),
      ),
    ));
  }
}
