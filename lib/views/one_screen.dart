import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Courses_screen.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.close),
            SizedBox(
              height: 20,
            ),
            Text(
              "How was your session?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              "Love it! What was your favorit part?",
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.asset(
                "assets/images/freepik-export-20241020191109VXoI.png",
                width: 140,
                height: 200,
              ),
            ),
            Center(
                child: Text(
              "Keep it up",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 50,
            ),
            Slider(
                activeColor: Colors.blueAccent,
                inactiveColor: Colors.black,
                value: 150,
                max: 222,
                min: 80,
                onChanged: (value) {
                  print(value);
                }),
            Padding(
              padding: const EdgeInsets.only(left: 230, top: 160),
              child: Container(
                child: Center(
                    child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CoursesScreen()));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  color: Colors.blueAccent,
                ),
                height: 120,
                width: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
