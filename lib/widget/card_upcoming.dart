import 'package:flutter/material.dart';

class CardUpcoming extends StatelessWidget {
  final List<String> images = [
    'assets/film/spiderman.jpg',
    'assets/film/titanic.jpg',
    'assets/film/spiderman.jpg',
    'assets/film/titanic.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: 140,
            height: 210,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/film/spiderman.jpg'))),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 140,
            height: 210,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/film/titanic.jpg'))),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 140,
            height: 210,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/film/spiderman.jpg'))),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 140,
            height: 210,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/film/titanic.jpg'))),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
