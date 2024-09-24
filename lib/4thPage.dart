import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FourthPage extends StatelessWidget {
  final String productName;

  const FourthPage({required this.productName, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.location_city_outlined),
            onPressed: () {
              _launchMapsUrl();
            },
          ),
        ],
        title: SizedBox(
          child: Center(
            child: Text(
              'Rajkiya Engineering College, Azamgarh',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 115, 188, 204),
        toolbarHeight: 30,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            // Create multiple cards for demonstration
            _buildProductCard(productName),
           // Duplicate for demo
          ],
        ),
      ),
    );
  }

  // Function to build a product card
  Widget _buildProductCard(String name) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 150,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: const Color.fromARGB(255, 252, 250, 250),
        child: Center(
          child: Text(
            'Product Name: $name',
             
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  void _launchMapsUrl() async {
    const String googleMapsUrl =
        'https://maps.google.com/?cid=8140131042848375194&entry=gps';
    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    } else {
      throw 'Could not launch $googleMapsUrl';
    }
  }
}
