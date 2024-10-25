import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});
  


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,// بتخلي بدايه الابار متساويه مع الشي الي تحتها ايا كان 
        backgroundColor: Colors.white30,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/236x/7a/42/95/7a42956721a6c96593f1c8f6c47dfe4b.jpg"),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Chats",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.blue,
              child: Icon(Icons.camera_alt, color: Colors.white,)),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit),
          ),
        ],
      ),
        
        body: Padding(
          padding: const EdgeInsets.all(20),
          
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,// الكولوم الطبيعي بيبقا ف النص ف بكتب كدا عشان يبقا ف البدايه 
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  height: 35,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.grey[300],// القوس دا بيخفف اللون شويه الي عندي 
                    
                  ),
                  child: Row(children: [
                    Icon(Icons.search,
                    ),
                    SizedBox(width: 15,),
                    Text("Search")
                  ],
                  ),
                ),
             SizedBox(height: 20,),
                   Container(
                    height: 100,
                     child: ListView.separated(
                      itemBuilder: (context, index) =>    buildStoryItem(),
                      scrollDirection: Axis.horizontal,
                     separatorBuilder: (context,index )=>SizedBox(width: 20.0,),
                      itemCount: 10,
                      ),
                   ),
                   SizedBox(height: 30,),
                 ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index ) => buildCateItem(),
                  separatorBuilder: (context,index)=>SizedBox(height: 20,),
                  itemCount: 15
                  )
            
              ],
            ),
          ),
        ),
    );
  }
   
}

Widget buildCateItem()=> Column(
  children: [
    Row(children: [
     Stack(
       alignment: AlignmentDirectional.bottomEnd,
       children: [
         CircleAvatar(
           radius: 25,
           backgroundImage: NetworkImage("https://i.pinimg.com/564x/95/63/3f/95633f03459fb3aa0d1698305372de9d.jpg"),
         ),
           Padding(
                      padding: const EdgeInsetsDirectional.only(bottom: 3,end: 3),
                      child: CircleAvatar(
                       radius: 6,
                       backgroundColor: Colors.green,
                                          ),
                    ),
       ],
     ),
     SizedBox(width: 20,),
    
     Expanded(
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           Text("Amara Ail Amara Ail Amara AilAmara AilAmara AilAmara Ail",
           style: TextStyle(fontSize: 16,
           fontWeight: FontWeight.bold,
           ),
           maxLines: 1,
           overflow: TextOverflow.ellipsis,
           ),
           SizedBox(height: 5,),
           Row(children: [
             Expanded(
               child: Text("hello my name is heba hello my name is heba ",
               maxLines: 1,
               overflow: TextOverflow.ellipsis,
               ),
             ),
             
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Container(
                 width: 8,
                 height: 8,
                 decoration: BoxDecoration(
                   color: Colors.blueAccent,
                   shape: BoxShape.circle, //بيخلي الكونتينر بكشل دائري 
                 ),
               ),
             ),
             Text("02:00 pm")
           ],)
         ],),
       ),
     ),
    ],),

  ],
);

 Widget buildStoryItem()=> SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      child: Column(children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                                   backgroundImage: NetworkImage(
                              "https://i.pinimg.com/236x/7a/42/95/7a42956721a6c96593f1c8f6c47dfe4b.jpg"),
                            ),
                            //CircleAvatar(
                             // radius: 8,
                             // backgroundColor: Colors.white,
                           // ),
                            
                             Padding(
                               padding: const EdgeInsetsDirectional.only(bottom: 3,end: 3),
                               child: CircleAvatar(
                                radius: 6,
                                backgroundColor: Colors.red,
                                                   ),
                             ),
                          ],  
                        ),
                        SizedBox(height: 4,),
                        Text("Heba Khlifa Ail Khilfa",
                        maxLines: 2,// بتظهرلي التكست ع سطرين بس مهما كان 
                        overflow: TextOverflow.ellipsis,// بتظهرلي 3 نقط كدا جمب التيكست عشان تعرفلي انة في تكمله 
                        )
                      ],
                      ),
                    ),
                  ],  
                ),
              );
