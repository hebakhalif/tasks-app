import 'package:flutter/material.dart';

class Usersscreen extends StatelessWidget {
   Usersscreen({super.key});
  
  List<UserModel> Users=  [
    UserModel(
      id: 1,
      name: "heba",
      phone: "+0912345678",
    ),
      UserModel(
      id: 2,
      name: "heba",
      phone: "+09000000000",
    ),
      UserModel(
      id: 3,
      name: "heba",
      phone: "+0912",
    ),
      UserModel(
      id: 4,
      name: "heba",
      phone: "+09123",
    ),
       UserModel(
      id: 4,
      name: "heba",
      phone: "+09123",
    ),
       UserModel(
      id: 4,
      name: "heba",
      phone: "+09123",
    ),
       UserModel(
      id: 4,
      name: "heba",
      phone: "+09123",
    ),
       UserModel(
      id: 4,
      name: "heba",
      phone: "+09123",
    ),
       UserModel(
      id: 4,
      name: "heba",
      phone: "+09123",
    ),
       UserModel(
      id: 4,
      name: "heba",
      phone: "+09123",
    ),
  ];
  
  @override
  Widget build(BuildContext context)
   {
    return Scaffold(
 appBar: AppBar(
  title: Text("Users"),
  backgroundColor: Colors.blue,
 ),
 body: ListView.separated(
  itemBuilder: (context, index)=> _buildUserItem(Users[index]),
  separatorBuilder:(context, index)=> Padding(
    padding: const EdgeInsetsDirectional.only(start: 25),
    child: Container(
      width: double.infinity,
      height: 1,
      color: Colors.grey[300],
      ),
  ) , 
  itemCount: Users.length,
  )
    );
  }

   Widget _buildUserItem( UserModel Users )=>Padding(
   padding: const EdgeInsets.all(20),
   child: Row(
    children: [
      CircleAvatar(
        backgroundColor: Colors.blueGrey,
        radius: 25,
        child: Text("${Users.id}",
        style: TextStyle(fontSize: 25,
        fontWeight: FontWeight.bold,
        
        ),
        ),
      ),
      SizedBox(width: 20,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
         Text("${Users.name}",
        style: TextStyle(fontSize: 25,
        fontWeight: FontWeight.bold,
        ),
        ),
   
        Text("${Users.phone}",
        style: TextStyle(color: Colors.grey),
        )
      ],)
    ],
   ),
 );
}

 class UserModel{
   final int ? id;
   final String ? name;
   final String ? phone;

   UserModel ({
  @required  this.id ,
   @required this.name,
   @required this.phone,
   });
  }