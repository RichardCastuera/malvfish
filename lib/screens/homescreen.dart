import 'dart:io';
import 'dart:developer' as devtools;
import 'dart:typed_data';
import 'package:fishclassificationapp/screens/loaderscreen.dart';
import 'package:fishclassificationapp/utils/appcolor.dart';
import 'package:fishclassificationapp/widgets/appiconbutton.dart';
import 'package:image/image.dart' as img;

import 'package:flutter/material.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'package:image_picker/image_picker.dart';

// ImageNet mean values for zero-centering
const imageNetMean = [123.68, 116.779, 103.939];

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

  // Function to preprocess the image
  Uint8List preprocessImage(Uint8List imageData) {
    // Decode the image
    img.Image image = img.decodeImage(imageData)!;

    // Resize image to 224x224 pixels
    img.Image resizedImage = img.copyResize(image, width: 224, height: 224);

    // Convert the image from RGB to BGR and zero-center with ImageNet means
    List<double> pixels = [];
    for (int y = 0; y < resizedImage.height; y++) {
      for (int x = 0; x < resizedImage.width; x++) {
        int pixel = resizedImage.getPixel(x, y);
        double r = img.getRed(pixel).toDouble();
        double g = img.getGreen(pixel).toDouble();
        double b = img.getBlue(pixel).toDouble();

        // Zero-center with ImageNet means
        b -= imageNetMean[2];
        g -= imageNetMean[1];
        r -= imageNetMean[0];

        // Add the BGR values to the list
        pixels.add(b);
        pixels.add(g);
        pixels.add(r);
      }
    }

    // Convert the list to Float32List
    Float32List float32Pixels = Float32List.fromList(pixels);
    return float32Pixels.buffer.asUint8List();
  }

  // Function to upload picture from the local file
  pickImageGallery() async {
    final ImagePicker picker = ImagePicker();
    // Pick an image.
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image == null) return;

    var imageMap = File(image.path);

    Uint8List imageData = imageMap.readAsBytesSync();
    Uint8List preprocessedData = preprocessImage(imageData);

    setState(() {
      filePath = imageMap;
    });

    // Run prediction using the Model
    // var recognitions = await Tflite.runModelOnBinary(
    //   binary: preprocessedData,
    //   numResults: 10,
    //   threshold: 0.2,
    //   asynch: true,
    // );

    var recognitions = await Tflite.runModelOnImage(
        path: imageMap.path, // required
        imageMean: 0.0, // defaults to 117.0
        imageStd: 255.0, // defaults to 1.0
        numResults: 10, // defaults to 5
        threshold: 0.2, // defaults to 0.1
        asynch: true // defaults to true
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

    Uint8List imageData = imageMap.readAsBytesSync();
    Uint8List preprocessedData = preprocessImage(imageData);

    setState(() {
      filePath = imageMap;
    });

    // Run prediction using the Model
    // var recognitions = await Tflite.runModelOnBinary(
    //   binary: preprocessedData,
    //   numResults: 10,
    //   threshold: 0.2,
    //   asynch: true,
    // );

    var recognitions = await Tflite.runModelOnImage(
        path: imageMap.path, // required
        imageMean: 0.0, // defaults to 117.0
        imageStd: 255.0, // defaults to 1.0
        numResults: 10, // defaults to 5
        threshold: 0.2, // defaults to 0.1
        asynch: true // defaults to true
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
