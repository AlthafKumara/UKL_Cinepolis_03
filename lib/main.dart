import 'package:cinepolis_app/page/booking_page.dart';
import 'package:cinepolis_app/page/cinema_page.dart';
import 'package:cinepolis_app/page/home_page.dart';
import 'package:cinepolis_app/page/login_page.dart';
import 'package:cinepolis_app/page/movie_page.dart';
import 'package:cinepolis_app/page/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/': (context) => HomePage(),
        '/movie': (context) => MoviePage(),
        '/cinema': (context) => CinemaPage(),
        '/booking': (context) => BookingPage()
      },
      theme: ThemeData(
          primaryColor: Color.fromRGBO(15, 29, 84, 1),
          primaryColorLight: Color.fromRGBO(244, 247, 255, 1)),
      
    );
  }
}
