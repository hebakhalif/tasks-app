

import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // إضافة مسافة حول الشبكة
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عدد العناصر في الصف الواحد (2 في هذه الحالة)
          crossAxisSpacing: 10, // المسافة الأفقية بين العناصر
          mainAxisSpacing: 10, // المسافة الرأسية بين العناصر
          childAspectRatio: 0.7, // نسبة العرض إلى الارتفاع لكل عنصر
        ),
        itemCount: 4, // عدد المنتجات (يمكنك تغييره لعدد منتجاتك)
        itemBuilder: (context, index) {
          return ProductCard(); // بناء بطاقة المنتج لكل عنصر
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey), // إطار رمادي حول البطاقة
        borderRadius: BorderRadius.circular(10), // تدوير الزوايا
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              'assets/images/freepik-export-20240902144419Ahi5.png', // رابط صورة المنتج
              fit: BoxFit.cover, // تغطية الصورة لحجم العنصر
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0), // إضافة مسافة داخل البطاقة
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'اسم المنتج', // اسم المنتج
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  '430 ر.س', // السعر
                  style: TextStyle(color: Colors.green),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {}, // وظيفة الزر
                  child: Text('أضف للسلة'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}