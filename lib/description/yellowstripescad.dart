import 'package:fishclassificationapp/utils/appcolor.dart';
import 'package:flutter/material.dart';

class YellowStripeScad extends StatelessWidget {
  const YellowStripeScad({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          color: primarybgColor,
        ),
        Center(
          child: Text(
            "Yellow Stripe Scad",
            style: TextStyle(
              fontFamily: "ProximaNova",
              fontSize: height * 0.03,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
        ),
        const Divider(
          color: primarybgColor,
        ),
        SizedBox(height: height * 0.015),
        Container(
          height: height * 0.28,
          width: width * 1,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(13)),
          ),
          child: const ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(13)),
            child: Image(
              image: AssetImage('assets/imgs/yellowstripescad.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(height: height * 0.015),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(13)),
            color: Colors.green[200],
          ),
          width: width * 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Description",
                style: TextStyle(
                  fontFamily: "ProximaNova",
                  fontSize: height * 0.03,
                  fontWeight: FontWeight.bold,
                  color: white,
                ),
              ),
              const Divider(color: white),
              SizedBox(height: height * 0.01),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: height * 0.017,
                    color: white,
                  ),
                  children: const [
                    TextSpan(text: "Scientific Name: Selaroides leptolepis\n"),
                    TextSpan(text: "Local Name: Salay Ginto, Ginto-ginto\n"),
                    TextSpan(text: "Also known as: \n"),
                    TextSpan(
                        text:
                            "Dorsal spines (total): 9; Dorsal soft rays (total): 24-26; Anal spines: 3; Anal soft rays: 21-23 Dorsal metallic blue, ventral silvery white; stripe yellow, broad from eye upper margin to caudal peduncle; opercle edge with spot black, large. Body elongate, oblong, compressed; profile, dorsal less convex than ventral. Eyes very large, shorter than snout length; adipose eyelid well- developed, covering eye posterior part. Upper jaw strongly protractile. Breast scaled. LL curved part shorter than straight part 0.6-0.8 times LL; scales are on straight part; LL scutes 24-29, small. Cleithrum smooth without papillae. Pectoral fins falcate; anal fins first two spines detached."),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: height * 0.015),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(13)),
            color: Colors.yellow[200],
          ),
          width: width * 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Size",
                style: TextStyle(
                  fontFamily: "ProximaNova",
                  fontSize: height * 0.03,
                  fontWeight: FontWeight.bold,
                  color: secondarybgColor,
                ),
              ),
              const Divider(color: secondarybgColor),
              SizedBox(height: height * 0.01),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: height * 0.017,
                    color: secondarybgColor,
                  ),
                  children: const [
                    TextSpan(text: "Maximum Size: 22 cm\n"),
                    TextSpan(text: "Maximum Weight: 0.625 kg"),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: height * 0.015),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(13)),
            color: Colors.blue[200],
          ),
          width: width * 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Habitat",
                style: TextStyle(
                  fontFamily: "ProximaNova",
                  fontSize: height * 0.03,
                  fontWeight: FontWeight.bold,
                  color: white,
                ),
              ),
              const Divider(color: white),
              SizedBox(height: height * 0.01),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: height * 0.017,
                    color: white,
                  ),
                  children: const [
                    TextSpan(
                        text:
                            "Indo-West Pacific: Persian Gulf to the Philippines, north to Japan, south to the Arafura Sea and Australia"),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: height * 0.015),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(13)),
            color: Colors.green[200],
          ),
          width: width * 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Depth",
                style: TextStyle(
                  fontFamily: "ProximaNova",
                  fontSize: height * 0.03,
                  fontWeight: FontWeight.bold,
                  color: white,
                ),
              ),
              const Divider(color: white),
              SizedBox(height: height * 0.01),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: height * 0.017,
                    color: white,
                  ),
                  children: const [
                    TextSpan(text: "Max Depth: 50 m"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
