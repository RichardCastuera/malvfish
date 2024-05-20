import 'package:fishclassificationapp/utils/appcolor.dart';
import 'package:flutter/material.dart';

class FrigateTuna extends StatelessWidget {
  const FrigateTuna({super.key});

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
            "Frigate Tuna",
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
              image: AssetImage('assets/imgs/frigatetuna.jpg'),
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
                    TextSpan(text: "Scientific Name: Auxis Thazard\n"),
                    TextSpan(text: "Local Name: Turingan Lapad\n"),
                    TextSpan(text: "Also known as: Frigate Mackerel\n"),
                    TextSpan(
                        text:
                            "Dorsal spines (total): 10 - 12; Dorsal soft rays (total): 10 - 13; Anal spines: 0; Anal soft rays: 10 - 14. This species is distinguished by the following characters: a robust body, elongated and rounded; teeth small and conical, in a single series; total gill rakers on first gill arch 36-42; dorsal fins 2, D1 X-XII, separated from the second by a large interspace (at least equal to length of first dorsal-fin base), second dorsal fin followed by 8 finlets; anal fin followed by 7 finlets; pectoral fins short, but reaching past vertical line from anterior margin of scaleless area above corselet; a large single-pointed flap (interpelvic process) between pelvic fins; body naked except for the corselet, which is well developed and narrow in its posterior part (no more than 5 scales wide under second dorsal-fin origin); a strong central keel on each side of caudal-fin base between 2 smaller keels. Colour of back bluish, turning to deep purple or almost black on the head; a pattern of 15 or more narrow, oblique to nearly horizontal, dark wavy lines in scaleless area above lateral line; belly white; pectoral and pelvic fins purple, inner sides black."),
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
                    TextSpan(text: "Maximum Size: 68 cm\n"),
                    TextSpan(text: "Maximum Weight: 1.6 kg"),
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
                            "Inhabits coastal and oceanic waters, sometimes forming large schools."),
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
                    TextSpan(text: "Max Depth: 200 m"),
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
