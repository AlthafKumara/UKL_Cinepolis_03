import 'package:flutter/material.dart';

class PromotionSlider extends StatelessWidget {
  const PromotionSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Image.asset(
            'assets/cardfilm/card2.jpg',
            height: 200,
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/cardfilm/card1.jpg',
            height: 200,
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/cardfilm/card2.jpg',
            height: 200,
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/cardfilm/card1.jpg',
            height: 200,
          ),
        ],
      ),
    );
  }
}
