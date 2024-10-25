import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  final List <Map <String, String> > products = const [
    {
      "name": "Latte",
      "price": "4.99",
      "image": "assets/images/freepik-export-20240902144551uFT7.png"
    },
    {
      "name": "Espresso",
      "price": "4.50",
      "image": "assets/images/freepik-export-2024090214433992Bq.png"
    },
    {
      "name": "Doppio",
      "price": "4.50",
      "image": "assets/images/freepik-export-20240902144714wQEL.png"
    },
    {
      "name": "Irish Coffee",
      "price": "4.99",
      "image": "assets/images/freepik-export-20240902144654PM9n.png"
    },
     {
      "name": "Irish Coffee",
      "price": "4.99",
      "image": "assets/images/freepik-export-20240902144632FRqD.png"
    },
     {
      "name": "Irish Coffee",
      "price": "4.99",
      "image": "assets/images/freepik-export-20240902144403pBpm.png"
    },
    // أضف منتجات أخرى كما تريد
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                        "assets/images/photo_2024-09-02_18-36-43.jpg"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome"),
                      Text(
                        "Millie Cark",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Icon(
                    Icons.notifications,
                    size: 35,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text(
                    "Coffee",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 123, 75, 4),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Tea",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Juice",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Cale",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Drink",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Coffee",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
           
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.7),
                  itemCount: products.length,
                  itemBuilder: (context, Index) {
                    return CoffeeCard(
                      name: products[Index]["name"]!,
                      price: products[Index]["price"]!,
                      image: products[Index]["image"]!,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}


class CoffeeCard extends StatelessWidget {
  final String name;
  final String price;
  final String image;

  CoffeeCard({required this.name, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 100, fit: BoxFit.cover),
          SizedBox(height: 10),
          Text(name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text('\$ $price',
              style: TextStyle(color: Colors.orange, fontSize: 16)),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(10),
              backgroundColor: Colors.orange, // لون الزر
            ),
            child: Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
