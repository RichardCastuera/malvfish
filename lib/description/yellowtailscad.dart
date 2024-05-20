import 'package:fishclassificationapp/utils/appcolor.dart';
import 'package:flutter/material.dart';

class YellowTailScad extends StatelessWidget {
  const YellowTailScad({super.key});

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
            "Yellow Tail Scad",
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
              image: AssetImage('assets/imgs/yellowtailscad.jpeg'),
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
                    TextSpan(text: "Scientific Name: Atule mate\n"),
                    TextSpan(
                        text:
                            "Local Name: Salay-salay, Kalapato, Mangudlong\n"),
                    TextSpan(text: "Also known as: Mackerel Scad\n"),
                    TextSpan(
                        text:
                            "Dorsal spines (total): 9; Dorsal soft rays (total): 22 - 25; Anal spines: 3; Anal soft rays: 18 - 21. This species is distinguished by the following characters: adipose eyelid well developed and completely covering eye except for a vertical slit centred on pupil; shoulder girdle (cleithrum) margin smooth, without papillae; terminal dorsal and anal rays finlet-like in adults, about twice length of adjacent rays and a little more separated but joined by interradial membrane; lateral line gently arched anteriorly, with junction of curved and straight parts below vertical from sixth to eighth soft rays of second dorsal fin; scales in curved part of lateral line 39 to 57; straight part with 0 to 10 scales and 36 to 49 scutes; a black spot, slightly smaller than eye, on upper margin of opercle and adjacent area of shoulder; dorsal and caudal fins dusky greenish yellow; anal fin pale yellow. Description: Body olive green dorsally, shading to white or silvery ventrally; prominent black spot posteriorly on opercle at level of upper eye; often with 10 dark bars on side of body; dorsal and caudal fins dusky greenish yellow. Body oblong, moderately compressed, with dorsal and ventral profiles almost evenly convex. The adipose eyelid completely covering the eye except for a vertical slit centered on pupil."),
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
                    TextSpan(text: "Maximum Size: 44 cm\n"),
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
                    TextSpan(text: "Pelagic, mainly in oceanic waters."),
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
                    TextSpan(text: "Max Depth: 400 m"),
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
