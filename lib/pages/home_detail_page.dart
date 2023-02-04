import 'package:flutter/material.dart';
import 'package:zodiac_teller/pages/homepage.dart';
import 'package:zodiac_teller/utils/zodiac_sign.dart';

class HomeDetail extends StatefulWidget {
  const HomeDetail({super.key});

  @override
  State<HomeDetail> createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetail> {
  @override
  Widget build(BuildContext context) {
    String sign = zodiacsign(Homepage.date!.day, Homepage.date!.month);
    sign.toUpperCase();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          sign,
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(
              "assets/images/${zodiacsign(Homepage.date!.day, Homepage.date!.month)}.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${Zodiac.zodiac[zodiacsign(Homepage.date!.day, Homepage.date!.month)]}",
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

String zodiacsign(int day, int month) {
  String astroSign = "";
  if (month == 12) {
    if (day < 22) {
      astroSign = "sagittarius";
    } else {
      astroSign = "capricorn";
    }
  } else if (month == 1) {
    if (day < 20) {
      astroSign = "capricorn";
    } else {
      astroSign = "aquarius";
    }
  } else if (month == 2) {
    if (day < 19) {
      astroSign = "aquarius";
    } else {
      astroSign = "pisces";
    }
  } else if (month == 3) {
    if (day < 21) {
      astroSign = "pisces";
    } else {
      astroSign = "aries";
    }
  } else if (month == 4) {
    if (day < 20) {
      astroSign = "aries";
    } else {
      astroSign = "taurus";
    }
  } else if (month == 5) {
    if (day < 21) {
      astroSign = "taurus";
    } else {
      astroSign = "gemini";
    }
  } else if (month == 6) {
    if (day < 21) {
      astroSign = "gemini";
    } else {
      astroSign = "cancer";
    }
  } else if (month == 7) {
    if (day < 23) {
      astroSign = "cancer";
    } else {
      astroSign = "leo";
    }
  } else if (month == 8) {
    if (day < 23) {
      astroSign = "leo";
    } else {
      astroSign = "virgo";
    }
  } else if (month == 9) {
    if (day < 23) {
      astroSign = "virgo";
    } else {
      astroSign = "libra";
    }
  } else if (month == 10) {
    if (day < 23) {
      astroSign = "libra";
    } else {
      astroSign = "scorpio";
    }
  } else if (month == 11) {
    if (day < 22) {
      astroSign = "scorpio";
    } else {
      astroSign = "sagittarius";
    }
  }
  return astroSign;
}
