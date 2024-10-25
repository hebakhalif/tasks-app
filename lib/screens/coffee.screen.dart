import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/welcome_screen.dart';

class Coffee_screen extends StatelessWidget {
  const Coffee_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
        children: [
          Container(
            child: Image.asset(
            "assets/images/photo_2024-09-01_22-49-51.jpg", 
            ),
             decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(150),
                    bottomStart: Radius.circular(150)
                    ),
             ),
               clipBehavior: Clip.antiAliasWithSaveLayer,
          ),

         // Text("This is no\ Ordinary\ Coffee ",
         // style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,
         // ),
         // maxLines: 3,
         // textAlign: TextAlign.left,
         // )
         
         Padding(
           padding: const EdgeInsets.only(top: 40,right: 150),
           child: RichText(
             text: TextSpan(
               style: TextStyle(
                 fontSize: 36, // حجم الخط
                 fontWeight: FontWeight.bold, // سمك الخط
                 color: Colors.black, // لون الخط
               ),
               children: <TextSpan>[
                 TextSpan(text: 'This is no\n'), // السطر الأول
                 TextSpan(text: 'Ordinary\n'),   // السطر الثاني
                 TextSpan(text: 'Coffee'),       // السطر الثالث
               ],
             ),
             textAlign: TextAlign.left, // محاذاة النص إلى اليسار
           ),
         ),
        SizedBox(height: 50,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:
               (context)=> WelcomeScreen()));
            },
             child: Icon(Icons.arrow_forward,
             color: Colors.white,
             ),
      style: ElevatedButton.styleFrom(
  backgroundColor: const Color.fromARGB(255, 123, 75, 4),
  minimumSize: Size(60, 60)
      ),
            )
        ],
       ),
    );
  }
}