import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/resuable/image_card.dart';
import 'package:flutter/material.dart';

class NaturalWonders extends StatelessWidget {
  const NaturalWonders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Natural Wonders",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: mainNaturalWondersColor,
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
              const SizedBox(
                height: 20,
              ),
              ImageCard(
                title: "Nature Wonders Place-1",
                imageURL: "assets/nature2.png",
                isCornerRounded: false,
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                titleColor: subNaturalWondersColor,
              ),
              ImageCard(
                title: "Nature Wonders Place-2",
                imageURL: "assets/nature1.png",
                isCornerRounded: false,
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                titleColor: subNaturalWondersColor,
              ),
              ImageCard(
                title: "Nature Wonders Place-3",
                imageURL: "assets/nature3.png",
                isCornerRounded: false,
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                titleColor: subNaturalWondersColor,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
