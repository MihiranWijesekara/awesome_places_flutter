import 'package:awesome_places/pages/bookings_page/bookings_page.dart';
import 'package:awesome_places/pages/cultural_page.dart';
import 'package:awesome_places/pages/land_marks.dart';
import 'package:awesome_places/pages/natural_wonders.dart';
import 'package:awesome_places/pages/night_life.dart';
import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/resuable/home_page/category_card.dart';
import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Awesome",
                          style: TextStyle(
                            fontSize: 16,
                            color: mainTextColor,
                          ),
                        ),
                        const Text(
                          "Places",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: mainColor,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                  style: TextStyle(
                    fontSize: 16,
                    color: mainTextColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/main.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Select a Place from the categories",
                  style: TextStyle(
                    fontSize: 20,
                    color: mainColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NaturalWonders(),
                          ),
                        );
                      },
                      child: const CategoryCard(
                        category: "Natural Wonders",
                        cardBgColor: firstCategoryColor,
                        cardWidth: 190,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NightLife(),
                          ),
                        );
                      },
                      child: const CategoryCard(
                        category: "Nightlife",
                        cardBgColor: firstCategoryColor,
                        cardWidth: 190,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LandMarks(),
                          ),
                        );
                      },
                      child: const CategoryCard(
                        category: " Landmarks",
                        cardBgColor: secondCategoryColor,
                        cardWidth: 190,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CulturalPage(),
                          ),
                        );
                      },
                      child: const CategoryCard(
                        category: "Cultural",
                        cardBgColor: secondCategoryColor,
                        cardWidth: 190,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookingsPage(),
                      ),
                    );
                  },
                  child: const CategoryCard(
                    category: "Book For A Ride Today!",
                    cardBgColor: thirdCategoryColor,
                    cardWidth: 400,
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
