import 'package:flutter/material.dart';


 class  CounterScreen extends StatefulWidget
  {
   const  CounterScreen ({super.key});
 
   @override
   State<CounterScreen> createState() => _counterScreenState();
 }
 
 class _counterScreenState extends State<CounterScreen> {

  int counetr =1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  
   @override
   Widget build(BuildContext context) {
     return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.blue,
  title: Text("Counter"),
),
body: Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextButton(onPressed: (){
        setState(() {
           counetr --;
        print(counetr);
        });
      
      },
       child: Text(
        "MINUS",style: TextStyle(fontSize: 23,),
       )),
       Padding(
         padding: const EdgeInsets.symmetric(
          horizontal: 20
         ),
         child: Text("$counetr",
         style: TextStyle(fontSize: 50,fontWeight: FontWeight.w900),
         ),
       ),
        TextButton(onPressed: (){
          setState(() {
             counetr ++;
        print(counetr);
          });
        },
       child: Text(
        "BLUS",style: TextStyle(fontSize: 23,),
       )),
    ],
  ),
),
    );
   }
 }


  
