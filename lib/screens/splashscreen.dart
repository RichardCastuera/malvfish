import 'package:fishclassificationapp/screens/homescreen.dart';
import 'package:fishclassificationapp/utils/appcolor.dart';
import 'package:fishclassificationapp/widgets/appbutton.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String id = 'splash_screen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primarybgColor,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: height * 1,
              width: width * 1,
              child: const Image(
                image: AssetImage('assets/imgs/bg1.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height * 0.17,
                    width: height * 0.17,
                    child: const Image(
                      image: AssetImage('assets/imgs/logo-rbg.png'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Text(
                    "FishID",
                    style: TextStyle(
                      fontFamily: "Mont",
                      color: white,
                      fontSize: height * 0.06,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "FISH SPECIES IDENTIFIER",
                    style: TextStyle(
                      fontFamily: "ProximaNova",
                      color: white,
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.w200,
                      letterSpacing: 5,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.15,
                  ),
                  AppButton(
                    title: "Get Started",
                    onPress: () =>
                        Navigator.popAndPushNamed(context, HomeScreen.id),
                    fontSize: height * 0.03,
                    horizontalPadding: width * 0.3,
                    verticalPadding: height * 0.02,
                    bgColor: secondaryColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
