import 'package:fishclassificationapp/utils/appcolor.dart';
import 'package:flutter/material.dart';

class ShrimpScad extends StatelessWidget {
  const ShrimpScad({super.key});

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
            "Shrimp Scad",
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
              image: AssetImage('assets/imgs/shrimpscad.png'),
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
                    TextSpan(text: "Scientific Name: Alepes djedaba\n"),
                    TextSpan(text: "Local Name: Salay-salay\n"),
                    TextSpan(text: "Also known as: \n"),
                    TextSpan(
                        text:
                            "Dorsal spines (total): 9; Dorsal soft rays (total): 22 - 25; Anal spines: 3; Anal soft rays: 18 - 20. Description: Greyish green above, silvery to white below; distinct black blotch on upper margin of opercle, bordered above by a smaller white spot; caudal fin yellowish, upper lobe dusky to black distally. Body with dorsal and ventral profiles almost evenly convex. Adipose eyelid well-developed on posterior half of the eye. LL with 0-3 scales on straight part and 31-36 scales on curved part and 39-51 scutes."),
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
                    TextSpan(text: "Maximum Size: 40 cm\n"),
                    TextSpan(text: "Maximum Weight: 0.603 kg"),
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
                    TextSpan(text: "Marine; reef-associated; amphidromous."),
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
                    TextSpan(text: "Max Depth: "),
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
