import 'package:awesome_places/utils/colors.dart';
import 'package:awesome_places/widgets/shared/button.dart';
import 'package:flutter/material.dart';

class BookingsForm extends StatelessWidget {
  const BookingsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "User Name",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: "Enter Your UserName",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Country",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: "Enter Your Country",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Team Size",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: mainColor,
                  ),
                  child: const Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const Column(
                  children: [
                    Text(
                      "Add or Remove team members",
                      style: TextStyle(
                        fontSize: 17,
                        color: blackColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children: [
                        CustomButton(
                          text: "Add +",
                          bgColor: mainGreenColor,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        CustomButton(
                          text: "Remove -",
                          bgColor: mainRedColor,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Divider(),
        SizedBox(
          height: 10,
        ),
        const Text(
          "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
          style: TextStyle(
            fontSize: 16,
            color: blackColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const CustomButton(text: "Submit", bgColor: thirdCategoryColor),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
