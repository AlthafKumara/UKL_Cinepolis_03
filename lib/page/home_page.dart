import 'package:cinepolis_app/widget/bottom_nav.dart';
import 'package:cinepolis_app/widget/card_upcoming.dart';
import 'package:cinepolis_app/widget/carousel_home.dart';
import 'package:cinepolis_app/widget/promotion_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: -3,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.fromLTRB(15, 30, 15, 20),
          child: Container(
            width: 150,
            height: 39,
            padding: EdgeInsets.fromLTRB(15, 1, 15, 1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  width: 1, style: BorderStyle.solid, color: Colors.grey),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.pin_drop, size: 25, color: Colors.grey.shade400),
                Text(
                  'Malang',
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.normal),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      size: 18,
                    ))
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                size: 29,
                color: Theme.of(context).primaryColor,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                size: 29,
                color: Theme.of(context).primaryColor,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              icon: Icon(
                Icons.person,
                size: 29,
                color: Theme.of(context).primaryColor,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: ListView(
          children: [
            // HELLO GUEST & MAU NONTON
            Text.rich(
              TextSpan(
                text: 'Hello,',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
                children: [
                  TextSpan(
                      text: 'Guest',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.black))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Kamu mau nonton apa hari ini?',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.black)),
            SizedBox(
              height: 15,
            ),
            // CARD YANG PERTAMA
            PromotionSlider(),
            SizedBox(
              height: 15,
            ),
            // NOW SHOWING AND THE CARD
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Now Showing',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.normal),
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            CarouselHome(),
            SizedBox(
              height: 15,
            ),
            // UPCOMING AND THE CARD
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upcoming',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.normal),
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            CardUpcoming(),
            SizedBox(
              height: 15,
            ),
            // PROMOTION AND CARD
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Promotion',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.normal),
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            PromotionSlider(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(0),
    );
  }
}
