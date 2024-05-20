import 'dart:io';
import 'dart:developer' as devtools;
import 'package:fishclassificationapp/screens/displayscreen.dart';
import 'package:fishclassificationapp/screens/loaderscreen.dart';
import 'package:fishclassificationapp/utils/appcolor.dart';
import 'package:fishclassificationapp/widgets/appiconbutton.dart';
import 'package:flutter/widgets.dart';
import 'package:image/image.dart' as imglib;

import 'package:flutter/material.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  File? filePath;
  String label = '';
  double confidence = 0.0;

  // Load the model
  Future<void> _tfLteInit() async {
    String? res = await Tflite.loadModel(
        model: "assets/model/ResNet50.tflite",
        labels: "assets/label/labels.txt",
        numThreads: 1, // defaults to 1
        isAsset:
            true, // defaults to true, set to false to load resources outside assets
        useGpuDelegate:
            false // defaults to false, set to true to use GPU delegate
        );
  }

  // Function to resized image
  String resizedImage(File file) {
    var rawBytes = file.readAsBytesSync();
    var image = imglib.decodeImage(rawBytes);
    // Resize image to 224x224 pixels
    var resizedImage = imglib.copyResize(image!, width: 224, height: 224);
    // Save resized image to a temporary file
    var tempDir = Directory.systemTemp;
    var tempFile = File('${tempDir.path}/resized_image.jpg');
    tempFile.writeAsBytesSync(imglib.encodeJpg(resizedImage));
    // Return the path to the saved resized image
    return tempFile.path;
  }

  // Function to upload picture from the local file
  pickImageGallery() async {
    final ImagePicker picker = ImagePicker();
    // Pick an image.
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image == null) return;

    var imageMap = File(image.path);

    // Call the resizeImage funtion to resize the image input
    var resImage = resizedImage(imageMap);

    setState(() {
      filePath = imageMap;
    });

    // Run prediction using the Model
    var recognitions = await Tflite.runModelOnImage(
      path: resImage,
      numResults: 8,
      threshold: 0.2,
      asynch: true,
    );

    if (recognitions != null && recognitions.isNotEmpty) {
      setState(() {
        confidence = (recognitions[0]['confidence'] * 100);
        label = recognitions[0]['label'].toString();
      });
      devtools.log(recognitions.toString());
    } else {
      setState(() {
        label = "No Fish Detected";
        confidence = 0;
      });
    }

    setState(() {
      Navigator.pushNamed(
        context,
        LoadingScreen.id,
        arguments: {
          'filePath': filePath,
          'label': label,
          'confidence': confidence,
        },
      );
    });

    devtools.log("Navigated to DisplayImageScreen");
  }

  // Function to capture picture  through device camera
  pickImageCamera() async {
    final ImagePicker picker = ImagePicker();
    // Open Camera.
    final XFile? image = await picker.pickImage(source: ImageSource.camera);

    if (image == null) return;

    var imageMap = File(image.path);
    // Call the resizeImage funtion to resize the image input
    var resImage = resizedImage(imageMap);

    setState(() {
      filePath = imageMap;
    });

    // Run prediction using the Model
    var recognitions = await Tflite.runModelOnImage(
      path: resImage,
      numResults: 8,
      threshold: 0.2,
      asynch: true,
    );

    if (recognitions != null && recognitions.isNotEmpty) {
      setState(() {
        confidence = (recognitions[0]['confidence'] * 100);
        label = recognitions[0]['label'].toString();
      });
      devtools.log(recognitions.toString());
    } else {
      setState(() {
        label = "No Fish Detected";
        confidence = 0;
      });
    }

    setState(() {
      Navigator.pushNamed(
        context,
        LoadingScreen.id,
        arguments: {
          'filePath': filePath,
          'label': label,
          'confidence': confidence,
        },
      );
    });

    devtools.log("Navigated to DisplayImageScreen");
  }

  @override
  void dispose() {
    super.dispose();
    Tflite.close();
  }

  @override
  void initState() {
    super.initState();
    _tfLteInit();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Padding(
          padding: EdgeInsets.only(
            left: width * 0.05,
            right: width * 0.05,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: height * 0.25,
                width: height * 0.25,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                ),
                child: const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                  child: Image(
                    image: AssetImage('assets/imgs/logo1.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(height: height * 0.015),
              const Divider(
                color: Colors.black,
              ),
              Text(
                "FishID",
                style: TextStyle(
                  fontFamily: "Mont",
                  color: secondaryColor,
                  fontSize: height * 0.06,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "FISH SPECIES IDENTIFIER",
                style: TextStyle(
                  fontFamily: "ProximaNova",
                  color: secondaryColor,
                  fontSize: height * 0.02,
                  letterSpacing: 5,
                ),
              ),
              const Divider(
                color: Colors.black,
              ),
              SizedBox(height: height * 0.05),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: "ProximaNova",
                    color: secondaryColor,
                    fontSize: height * 0.021,
                  ),
                  children: const [
                    TextSpan(text: "An unknown fish?\n"),
                    TextSpan(
                        text: "Take a photo or import it and get details!"),
                  ],
                ),
              ),
              SizedBox(height: height * 0.015),
              Column(
                children: [
                  const SizedBox(height: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppIconButton(
                        onPress: () => pickImageCamera(),
                        horizontalPadding: width * 0.25,
                        verticalPadding: height * 0.015,
                        iconData: Icons.camera_rounded,
                        title: "Capture",
                        bgColor: secondaryColor,
                        textColor: white,
                      ),
                      SizedBox(height: height * 0.015),
                      AppIconButton(
                        onPress: () => pickImageGallery(),
                        horizontalPadding: width * 0.26,
                        verticalPadding: height * 0.015,
                        iconData: Icons.upload_rounded,
                        title: "Import",
                        bgColor: secondaryColor,
                        textColor: white,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
