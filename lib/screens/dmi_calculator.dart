import 'dart:math';

import 'package:flutter/material.dart';

class BmiScScreen extends StatefulWidget {
  const BmiScScreen({super.key});

  @override
  State<BmiScScreen> createState() => __BmiScScreenState();
}

class __BmiScScreenState extends State< BmiScScreen > {

  //Color? color =Colors.blueGrey[400];
  bool isMale = true;
   double height = 120.0;
   int width = 40;
   int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: const Color.fromARGB(255, 51, 85, 85),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: !isMale? Colors.blue: Colors.blueGrey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Image.asset("assets/images/freepik-export-20240902144612WYUh.png",
                          height: 100,
                          width: 100,
                          ),
                            
                                const SizedBox(height: 15),
                             Text("EMAEL",
                             style: TextStyle(
                              fontSize: 25,
                                fontWeight: FontWeight.bold,
                             ),
                             )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),

                   Expanded(
                     child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: !isMale? Colors.blueGrey[400]: Colors.blue,
                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                            Image.asset("assets/images/freepik-export-20240902144612WYUh.png",
                          height: 100,
                          width: 100,
                          ),
                                 const SizedBox(height: 15),
                              Text("FEEMAEL",
                              style: TextStyle(
                               fontSize: 25,
                                 fontWeight: FontWeight.bold,
                              ),
                              )
                           ],
                         ),
                       ),
                     ),
                   ),
                ],
              ),
            )
          ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueGrey[400]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Text("EMAEL",
                               style: TextStyle(
                                fontSize: 25,
                                  fontWeight: FontWeight.bold,
                               ),
                               ),
                               Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                mainAxisAlignment: MainAxisAlignment.center,
                                
                                children: [
                                   Text("${height.round()}",
                               style: TextStyle(
                                fontSize: 40,
                                  fontWeight: FontWeight.w900,
                               ),
                               ),
                               SizedBox(width: 5,),
                                    Text("CM",
                               style: TextStyle(
                                fontSize: 20,
                                  fontWeight: FontWeight.bold,
                               ),
                               ),
                                ],
                               ),
                               Slider(
                                value: height,
                                max: 220,
                                min: 80,
                                onChanged: (value){
                                  setState(() {
                                    height=value;
                                  });
                                  print(value);
                                }
                                )
                    ],
                  ),
                ),
              )
            ),
            Expanded(
              child:Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[400]
                          ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Text("WEIGHI",
                                     style: TextStyle(
                                      fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                     ),
                                     ),
                              Text("$width",
                                     style: TextStyle(
                                      fontSize: 40,
                                        fontWeight: FontWeight.w900,
                                     ),
                                     ),
                                     Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                      FloatingActionButton(
                                        onPressed: (){
                                          setState(() {
                                          //  widget -- ;
                                          });
                                        },
                                        mini: true,
                                        child: Icon(Icons.remove),
                                      ),
                                         FloatingActionButton(
                                        onPressed: (){
                                          setState(() {
                                          //  width ++;
                                          });
                                        },
                                        mini: true,
                                        child: Icon(Icons.add),
                                      )
                                     ],)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                     Expanded(
                       child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[400]
                          ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Text("AGE",
                                     style: TextStyle(
                                      fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                     ),
                                     ),
                              Text("$age",
                                     style: TextStyle(
                                      fontSize: 40,
                                        fontWeight: FontWeight.w900,
                                     ),
                                     ),
                                     Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                      FloatingActionButton(
                                        onPressed: (){
                                          age --;
                                        },
                                        mini: true,
                                        child: Icon(Icons.remove),
                                      ),
                                         FloatingActionButton(
                                        onPressed: (){
                                        age ++;
                                        },
                                        mini: true,
                                        child: Icon(Icons.add),
                                      )
                                     ],)
                          ],
                        ),
                                         ),
                     ),
                  ],
                ),
              )
            ),
            Container(
              width: double.infinity,
              height: 60,
              color:  Color.fromARGB(255, 51, 85, 85),
              child: MaterialButton(
                onPressed: 
              (){
                var result = width! / pow(height / 100,2);
               print(result.round());
              },
              
              child: Text("CALCULATE"),
              ),
            )

        ],
      ),
    );
  }
}