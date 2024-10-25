import 'package:flutter/material.dart';
class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,),
      child: ClipRRect(
       borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(
                 type: BottomNavigationBarType.fixed,
                 backgroundColor: Colors.blue,
                 selectedItemColor: Colors.white,
                 unselectedItemColor: Colors.white60,
                 currentIndex: 0, 
                 onTap: (int index) {
                  
                 },
                 items: const <BottomNavigationBarItem>[
                   BottomNavigationBarItem(
                     icon: Icon(Icons.home),
                     label: 'Home',
                   ),
                   BottomNavigationBarItem(
                     icon: Icon(Icons.picture_as_pdf),
                     label: 'Page 1',
                   ),
                   BottomNavigationBarItem(
                     icon: Icon(Icons.chat),
                     label: 'Page 2',
                   ),
                   BottomNavigationBarItem(
                     icon: Icon(Icons.person),
                     label: 'Profile',
                   ),
                 ],
               ),
      ),
    );
    }
    }