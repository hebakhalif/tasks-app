import 'package:flutter/material.dart';

class BmiresultScreen extends StatelessWidget {
  const BmiresultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI result",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                Text("Gender: Male",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                ),
                  Text("Result: 55",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                ),
                     Text("Age: 20",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                ),
          ],
        ),
      ),
    );
  }
}