import 'package:clone_app/4thPage.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Payment Method',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Example payment method items
            ListTile(
              title: const Text('Credit Card'),
              leading: Radio(
                value: 'credit_card',
                groupValue: 'payment_method',
                onChanged: (value) {
                  // Handle payment method selection
                },
              ),
            ),
            ListTile(
              title: const Text('PayPal'),
              leading: Radio(
                value: 'paypal',
                groupValue: 'payment_method',
                onChanged: (value) {
                  // Handle payment method selection
                },
              ),
            ),
            ListTile(
              title: const Text('Google Pay'),
              leading: Radio(
                value: 'google_pay',
                groupValue: 'payment_method',
                onChanged: (value) {
                  // Handle payment method selection
                },
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle payment action
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Payment Successful!')),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FourthPage(productName: 'name'),
                    ),
                  );
                },
                child: const Text('Confirm Payment'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
