import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/resuable/image_card.dart';
import 'package:flutter/material.dart';

class NightLife extends StatelessWidget {
  const NightLife({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Nightlife",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: mainNightLifeColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: mainTextColor,
                ),
              ),
              ImageCard(
                title: "Nightlife Place-1",
                imageURL: "assets/night2.jpg",
                isCornerRounded: true,
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                titleColor: subNightLifeColor,
              ),
              ImageCard(
                title: "Nightlife Place-2",
                imageURL: "assets/night1.jpg",
                isCornerRounded: true,
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                titleColor: subNightLifeColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
