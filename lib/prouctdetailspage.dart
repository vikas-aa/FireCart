import 'package:flutter/material.dart';

class ProductSell extends StatelessWidget {
  final String name;
  final String image;
  final String price;

  const ProductSell({
    Key? key,
    required this.name,
    required this.image,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              image,
              height: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              price,
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add to cart or perform any other action
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
