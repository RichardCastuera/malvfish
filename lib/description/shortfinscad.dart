import 'package:fishclassificationapp/utils/appcolor.dart';
import 'package:flutter/material.dart';

class ShortFinScad extends StatelessWidget {
  const ShortFinScad({super.key});

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
            "Short Fin Scad",
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
              image: AssetImage('assets/imgs/shortfinscad.jpg'),
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
                    TextSpan(text: "Scientific Name: Decapterus Macrosoma\n"),
                    TextSpan(text: "Local Name: Sibubog, Galunggong\n"),
                    TextSpan(text: "Also known as: \n"),
                    TextSpan(
                        text:
                            "Dorsal spines (total): 9; Dorsal soft rays (total): 33 - 38; Anal spines: 3; Anal soft rays: 27 - 30. Body slender, elongate, and somewhat circular in cross section; posterior end of upper jaw concave dorsally and with a rounded protrusion ventrally; edge of shoulder girdle (cleithrum) with two small papillae, the lower one larger; dorsal and anal fin each followed by a separate finlet. Color metallic blue dorsally, silvery ventrally; fins hyaline; opercle with a small black spot. 24-40 scutes. Very slender compared to similar species."),
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
                    TextSpan(text: "Maximum Size: 35 cm\n"),
                    TextSpan(text: "Maximum Weight: "),
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
                    TextSpan(text: "Marine; reef-associated."),
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
                    TextSpan(text: "Max Depth: 214 m"),
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
