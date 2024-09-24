import 'package:carousel_slider/carousel_slider.dart';
import 'package:clone_app/prouctdetailspage.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// Import the new page

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int activeIndex = 0;
  String searchQuery = '';

 final List<Map<String, String>> carouselItems = [
    {
      'name': 'Product 1',
      'image': 'lib/assets/shopping_image.jpeg',
      'price': '\$99.99',
    },
    {
      'name': 'Product 2',
      'image': 'lib/assets/shopping_image.jpeg',
      'price': '\$79.99',
    },
    {
      'name': 'Product 3',
      'image': 'lib/assets/shopping_image.jpeg',
      'price': '\$49.99',
    },
  ];

  final List<Map<String, String>> trendingProducts = [
    {
      'name': 'Trending Product 1',
      'image': 'lib/assets/shopping_image.jpeg',
      'price': '\$50.00'
    },
    {
      'name': 'Trending Product 2',
      'image': 'lib/assets/shopping_image.jpeg',
      'price': '\$75.00'
    },
    {
      'name': 'Trending Product 3',
      'image': 'lib/assets/shopping_image.jpeg',
      'price': '\$100.00'
    },
    {
      'name': 'Trending Product 4',
      'image': 'lib/assets/shopping_image.jpeg',
      'price': '\$150.00'
    },
  ];

  final List<Map<String, String>> products = [
    {
      'name': 'Product 1',
      'image': 'lib/assets/shopping_image.jpeg',
      'price': '\$30.00'
    },
    {
      'name': 'Product 2',
      'image': 'lib/assets/shopping_image.jpeg',
      'price': '\$45.00'
    },
    {
      'name': 'Product 3',
      'image': 'lib/assets/shopping_image.jpeg',
      'price': '\$60.00'
    },
    {
      'name': 'Product 4',
      'image': 'lib/assets/shopping_image.jpeg',
      'price': '\$90.00'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search Products...',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            // Carousel Slider for images
            CarouselSlider.builder(
              itemCount: carouselItems.length,
              itemBuilder: (context, index, realIndex) {
                final item = carouselItems[index];
                return buildImage(item['image']!, index, item['name']!, item['price']!);
              },
              options: CarouselOptions(
                height: 198,
                onPageChanged: (index, reason) => setState(() {
                  activeIndex = index;
                }),
              ),
            ),
            const SizedBox(height: 12),
            // Dots Indicator
            buildIndicator(),
            const SizedBox(height: 24),
            buildSectionTitle("Trending Products"),
            buildTrendingProducts(),
            const SizedBox(height: 24),
            buildSectionTitle("Products"),
            buildProducts(),
          ],
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      );

  Widget buildImage(String urlImage, int index, String name, String price) => InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProductSell(
            name: name,
            image: urlImage,
            price: price,
          ),
        ),
      );
    },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: Image.asset(urlImage, fit: BoxFit.cover),
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        effect: ExpandingDotsEffect(
          dotWidth: 15,
          dotHeight: 15,
          activeDotColor: Colors.blue,
          dotColor: Colors.grey,
        ),
        activeIndex: activeIndex,
        count: carouselItems.length,
      );

  Widget buildTrendingProducts() => SizedBox(
        height: 170,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: trendingProducts.length,
          itemBuilder: (context, index) {
            final product = trendingProducts[index];
            if (searchQuery.isEmpty ||
                product['name']!.toLowerCase().contains(searchQuery.toLowerCase())) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductSell(
                        name: product['name']!,
                        image: product['image']!,
                        price: product['price']!,
                      ),
                    ),
                  );
                },
                child: buildProductItem(product['name']!, product['image']!, product['price']!),
              );
            } else {
              return SizedBox.shrink(); // Skip item if it doesn't match search query
            }
          },
        ),
      );

  Widget buildProducts() => GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 5,
          childAspectRatio: 1,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          if (searchQuery.isEmpty || product['name']!.toLowerCase().contains(searchQuery.toLowerCase())) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductSell(
                      name: product['name']!,
                      image: product['image']!,
                      price: product['price']!,
                    ),
                  ),
                );
              },
              child: buildProductItem(product['name']!, product['image']!, product['price']!),
            );
          } else {
            return SizedBox.shrink(); // Skip item if it doesn't match search query
          }
        },
      );

  Widget buildProductItem(String name, String productImage, String price) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              productImage,
              fit: BoxFit.cover,
              height: 120,
            ),
            const SizedBox(height: 8),
            Text(
              name,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              price,
              style: TextStyle(fontSize: 12, color: Colors.green),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
}
