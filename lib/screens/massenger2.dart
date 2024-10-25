import 'package:flutter/material.dart';

class Massenger2 extends StatelessWidget {
  const Massenger2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
          onPressed: (){}, icon: Icon(Icons.search,size: 30,))
        ],
      ),
body: Padding(
  padding: const EdgeInsets.only(left: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Text("Messages",
        style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
        ),
      ),
        SizedBox(height: 35,),
  
          Row(
            children: [
              Stack(
                 alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/photo_2024-09-02_18-36-43.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(bottom: 3,end: 3),// من غير سطر مش هيحصل اي تغير alignment
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.green,
                    
                    ),
                  ),   
                ],
              ),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.only(left: 20),
                       child: Column(
                        
                        children: [
                           Row(
                            children: [
                       
                              Expanded(
                                child: Text("Heba kh",
                                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                          ),
                              ),
                                         SizedBox(width: 130,),
                                        Text("5 min"),
                       ],),
                       Text("Hello My name is Heba ,what about you hhhhhhhhhhhhhhhh...",
                       maxLines:2,
                       overflow: TextOverflow.ellipsis,
                       ),
                           ],),
                     ),
                   ),
               
                   Padding(
                     padding: const EdgeInsets.only(right: 30,top: 20),
                     child: Stack(
                       children: [
                         Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),
                          color: const Color.fromARGB(255, 87, 76, 243),
                          ),
                         ),
                         Text("  1",
                         
                         style: TextStyle(fontSize: 20,
                         fontWeight: FontWeight.bold,
                         color: Colors.white
                         ),
                         ),
                       ],
                     ),
                   )
                 
                  
                 
            ],
          ),
        
               SizedBox(height: 35,),
  
          Row(
            children: [
              Stack(
                 alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/photo_2024-09-02_18-36-43.jpg"),
                  ),  
                ],
              ),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.only(left: 20),
                       child: Column(
                        
                        children: [
                           Row(
                            children: [
                       
                              Expanded(
                                child: Text("Heba kh",
                                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                          ),
                              ),
                                         SizedBox(width: 130,),
                                        Text("5 min"),
                       ],),
                       Text("Hello My name is Heba ,what about you hhhhhhhhhhhhhhhh...",
                       maxLines:2,
                       overflow: TextOverflow.ellipsis,
                       ),
                           ],),
                     ),
                   ),
               
                   Padding(
                     padding: const EdgeInsets.only(right: 30,top: 20),
                     child: Stack(
                       children: [
                         Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),
                          color: const Color.fromARGB(255, 87, 76, 243),
                          ),
                         ),
                         Text("  1",
                         
                         style: TextStyle(fontSize: 20,
                         fontWeight: FontWeight.bold,
                         color: Colors.white
                         ),
                         ),
                       ],
                     ),
                   )
                 
                  
                 
            ],
          ),  


            SizedBox(height: 35,),
  
          Row(
            children: [
              Stack(
                 alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/photo_2024-09-02_18-36-43.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(bottom: 3,end: 3),// من غير سطر مش هيحصل اي تغير alignment
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.green,
                    
                    ),
                  ),   
                ],
              ),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.only(left: 20),
                       child: Column(
                        
                        children: [
                           Row(
                            children: [
                       
                              Expanded(
                                child: Text("Heba kh",
                                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                          ),
                              ),
                                         SizedBox(width: 130,),
                                        Text("5 min"),
                       ],),
                       Text("Hello My name is Heba ,what about you hhhhhhhhhhhhhhhh...",
                       maxLines:2,
                       overflow: TextOverflow.ellipsis,
                       ),
                           ],),
                     ),
                   ),
               
                   Padding(
                     padding: const EdgeInsets.only(right: 30,top: 20),
                     child: Stack(
                       children: [
                         Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),
                          color: const Color.fromARGB(255, 87, 76, 243),
                          ),
                         ),
                         Text("  1",
                         
                         style: TextStyle(fontSize: 20,
                         fontWeight: FontWeight.bold,
                         color: Colors.white
                         ),
                         ),
                       ],
                     ),
                   )
                 
                  
                 
            ],
          ),


            SizedBox(height: 35,),
  
          Row(
            children: [
              Stack(
                 alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/photo_2024-09-02_18-36-43.jpg"),
                  ),
                 
                ],
              ),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.only(left: 20),
                       child: Column(
                        
                        children: [
                           Row(
                            children: [
                       
                              Expanded(
                                child: Text("Heba kh",
                                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                          ),
                              ),
                                         SizedBox(width: 130,),
                                        Text("5 min"),
                       ],),
                       Text("Hello My name is Heba ,what about you hhhhhhhhhhhhhhhh...",
                       maxLines:2,
                       overflow: TextOverflow.ellipsis,
                       ),
                           ],),
                     ),
                   ),
               
                   Padding(
                     padding: const EdgeInsets.only(right: 30,top: 20),
                     child: Stack(
                       children: [
                         Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),
                          color: const Color.fromARGB(255, 87, 76, 243),
                          ),
                         ),
                         Text("  1",
                         
                         style: TextStyle(fontSize: 20,
                         fontWeight: FontWeight.bold,
                         color: Colors.white
                         ),
                         ),
                       ],
                     ),
                   )
                 
                  
                 
            ],
          ),

            SizedBox(height: 35,),
  
          Row(
            children: [
              Stack(
                 alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/photo_2024-09-02_18-36-43.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(bottom: 3,end: 3),// من غير سطر مش هيحصل اي تغير alignment
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.green,
                    
                    ),
                  ),   
                ],
              ),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.only(left: 20),
                       child: Column(
                        
                        children: [
                           Row(
                            children: [
                       
                              Expanded(
                                child: Text("Heba kh",
                                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                          ),
                              ),
                                         SizedBox(width: 130,),
                                        Text("5 min"),
                       ],),
                       Text("Hello My name is Heba ,what about you hhhhhhhhhhhhhhhh...",
                       maxLines:2,
                       overflow: TextOverflow.ellipsis,
                       ),
                           ],),
                     ),
                   ),
               
                   Padding(
                     padding: const EdgeInsets.only(right: 30,top: 20),
                     child: Stack(
                       children: [
                         Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),
                          color: const Color.fromARGB(255, 87, 76, 243),
                          ),
                         ),
                         Text("  1",
                         
                         style: TextStyle(fontSize: 20,
                         fontWeight: FontWeight.bold,
                         color: Colors.white
                         ),
                         ),
                       ],
                     ),
                   )
                 
                  
                 
            ],
          ),
         
          
            
          
    ],
  ),

),
floatingActionButton: FilledButton.icon(onPressed: (){},
 label:Icon(Icons.arrow_forward),
 
  ),
    );
    
  }
}