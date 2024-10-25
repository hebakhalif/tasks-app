import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/bmiresult_screen.dart';
import 'package:flutter_application_1/screens/cardviwe.dart';
import 'package:flutter_application_1/screens/coffee.screen.dart';
import 'package:flutter_application_1/screens/counter_screen.dart';
import 'package:flutter_application_1/screens/dmi_calculator.dart';
import 'package:flutter_application_1/screens/massenger2.dart';
//import 'package:flutter_application_1/views/login_screen.dart';
import 'package:flutter_application_1/screens/messenger_screen.dart';
import 'package:flutter_application_1/views/one_screen.dart';
import 'package:flutter_application_1/screens/usersscreen.dart';
//import 'package:flutter_application_1/views/one_screen.dart';
//import 'package:flutter_application_1/views/one_screen.dart';

void main() {
  runApp(const MyFlutter());
}
  class MyFlutter  extends StatelessWidget {
    const MyFlutter({super.key});
    @override
    Widget build(BuildContext context) {
      return  MaterialApp (
        debugShowCheckedModeBanner: false,
         home :OneScreen(), 
      );
    }
  }





