import 'package:clone_app/Payment.dart';
import 'package:flutter/material.dart';

class Pots extends StatelessWidget {
    Pots
  ({super.key});

  final List<Map<String, String>> products = [
    {
      'name': 'Paracetamol',
      'image': 'lib/assets/shopping_image.jpeg',
      'description': 'common medicine used to relieve pain and reduce fever. It helps with mild to moderate pain like headaches, toothaches, and muscle aches. Its often found in over-the-counter medications and is generally safe when taken as directed. However its important not to exceed the recommended dose, as too much can harm the liver.',
      'price': '8.57',
      'details': ' Paracetamol is used to relieve pain (analgesic) and reduce fever',
    },
    {
      'name': 'Aciloc',
      'image': 'lib/assets/shopping_image.jpeg',
      'description': 'This is a great product 2.',
      'price': '32.52',
      'details': 'More details about Product 2.',
    },
    {
      'name': 'zerodol',
      'image': 'lib/assets/shopping_image.jpeg',
      'description': 'This is a great product 3.',
      'price': '130',
      'details': 'More details about Product 3.',
    },
    {
      'name': 'Aspirin',
      'image': 'lib/assets/shopping_image.jpeg',
      'description': 'This is a great product 4.',
      'price': '101.04',
      'details': 'More details about Product 4.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(product: products[index]),
                ),
              );
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    products[index]['image']!,
                    height:90,
                    
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    products[index]['name']!,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    products[index]['price']!,
                    style: const TextStyle(fontSize: 14, color: Colors.green),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: (
                      
                    ) {
                      // Handle buy now action
                      // For example, you could show a message or navigate to a payment page
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('${products[index]['name']} added to cart!')),
                      );
                        Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Payment(),
                    ),
                  );
                    },
                    child: const Text('Buy Now'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProductDetailPage extends StatelessWidget {
  final Map<String, String> product;

  const ProductDetailPage({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product['name']!),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                product['image']!,
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              Text(
                product['name']!,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                product['description']!,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              Text(
                product['price']!,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              const SizedBox(height: 16),
              Text(
                product['details']!,
                style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
                const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // Handle buy now action
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${product['name']} added to cart!')),
                  );
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Payment(),
                    ),
                  );
                },
                child: const Text('Buy Now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
