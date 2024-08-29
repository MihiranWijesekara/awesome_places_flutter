import 'package:awesome_places/pages/bookings_page/bookings_form.dart';
import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/resuable/bookings_page/vehical_card.dart';
import 'package:awesome_places/widgets/shared/ratings.dart';
import 'package:flutter/material.dart';

class BookingsPage extends StatelessWidget {
  const BookingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lets Book A Tour!",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: mainColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: blackColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Select a vehical",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: mainColor,
                ),
              ),
              const Row(
                children: [
                  VehicalCard(
                    vehicalImage:
                        "https://jlr.scene7.com/is/image/jlr/L460_22MY_199_GLHD-1",
                    vehicalName: "Car",
                  ),
                  VehicalCard(
                    vehicalImage:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP5cZLX--XFjDaDyPDJ-v3gj26w8oqluR8OA&s",
                    vehicalName: "Bike",
                  ),
                  VehicalCard(
                    vehicalImage:
                        "https://jcbl.com/jcbl-images/products/school-bus/school-bus-front-1.jpg",
                    vehicalName: "Bus",
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Select a Place",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: mainColor,
                ),
              ),
              const SizedBox(height: 20),
              //Stack
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/Cultural.png",
                        height: 300,
                        fit: BoxFit.cover,
                      )),
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Selected Place",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 30),
                        RatingCard(),
                      ],
                    ),
                  )
                ],
              ),
                const SizedBox(
                height: 20,
              ),
              const Text(
                "Fill The Details",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: mainColor,
                ),
              ),
              BookingsForm(),
            ],
          ),
        ),
      ),
    );
  }
}
//14.24