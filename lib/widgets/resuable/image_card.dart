import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageURL;
  final bool isCornerRounded;
  final Color titleColor;
  const ImageCard(
      {super.key,
      required this.title,
      required this.description,
      required this.imageURL,
      required this.isCornerRounded,
      required this.titleColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: titleColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 15),
        isCornerRounded
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imageURL,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              )
            : Image.asset(
                imageURL,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
        const SizedBox(height: 15),
        Text(
          description,
          style: TextStyle(
            fontSize: 14,
            color: mainTextColor,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
//18.49