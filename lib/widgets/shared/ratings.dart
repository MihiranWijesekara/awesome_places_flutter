import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RatingCard extends StatelessWidget {
  const RatingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: landMarksCarBg,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.star,
            size: 40,
            color: thirdCategoryColor,
          ),
          const Icon(
            Icons.star,
            size: 40,
            color: thirdCategoryColor,
          ),
          const Icon(
            Icons.star,
            size: 40,
            color: thirdCategoryColor,
          ),
          const Icon(
            Icons.star,
            size: 40,
            color: thirdCategoryColor,
          ),
          const Icon(
            Icons.star,
            size: 40,
            color: thirdCategoryColor,
          ),
          Icon(
            Icons.star,
            size: 40,
            color: mainTextColor,
          ),
        ],
      ),
    );
  }
}
