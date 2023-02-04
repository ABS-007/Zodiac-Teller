import 'package:flutter/material.dart';
import 'package:zodiac_teller/utils/routes.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  static bool datepicked = false;
  static DateTime? date;
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Zodiac Sign Teller",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Image.asset(
                "assets/images/main.jpg",
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () async {
                  Homepage.date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    lastDate: DateTime(2024),
                  );
                  if (Homepage.date == null) {
                    Homepage.datepicked = false;
                  } else {
                    Homepage.datepicked = true;
                    Navigator.pushNamed(context, MyRoutes.homedetail);
                    setState(() {});
                  }
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.deepPurple)),
                child: Homepage.datepicked
                    ? Text(
                        "${Homepage.date?.year}/${Homepage.date?.month}/${Homepage.date?.day}")
                    : Text(
                        "Select Date",
                        textScaleFactor: 1.5,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
