import 'package:clone_app/Available.dart';
import 'package:clone_app/Productdetails.dart';
import 'package:clone_app/bags.dart';
import 'package:clone_app/books.dart';
import 'package:clone_app/electronic.dart';
import 'package:clone_app/fashion.dart';
import 'package:clone_app/food.dart';
import 'package:clone_app/furniture.dart';
import 'package:clone_app/hygience.dart';
import 'package:clone_app/pots.dart';
import 'package:clone_app/utensils.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});
 @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final List<String> allRestaurants = [
    "Raman Restaurant",
    "Ajwa",
    "Spicy Corner",
    "Taste Buds",
    // Add more restaurant names as needed
  ];

  List<String> filteredRestaurants = [];
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    filteredRestaurants = allRestaurants; // Initialize with all restaurants
  }

  void updateSearchResults(String query) {
    setState(() {
      searchQuery = query;
      filteredRestaurants = allRestaurants
          .where((restaurant) => restaurant.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(     appBar: AppBar(
              actions: [
          IconButton(
            
            icon: Positioned(child: Icon(Icons.location_city_outlined),left: 0,),
            onPressed: () {
              _launchMapsUrl();  },
          ),
        ],
        title: SizedBox(
          
          child: Center(
            child: Text('Rajkiya Engineering college,Azamgarh',style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 149, 165, 199),
 
                toolbarHeight: 30, 
                     
              ),
    
    
        
      body: Scrollbar(
          child: SingleChildScrollView(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      
                      child: InkWell(
                        onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProductPage()));
                        },
                        child:
                         Stack(
                 children: [
                
        Opacity(
          opacity: 0.7, 
          child: Image.asset(
            'lib/assets/medicine.jpg', 
            fit: BoxFit.cover, 
            height: 100,
            width: 150,
          ),
        ), Center(
                            child: Text('Medicines',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                            ),),
                          ),
                 ]
                        ),
                        
                      ),
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black87
                      ),
                      height: 100,
                      width: 150,
                      
                    ),
                  ),
                  
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Container(
                      
                      child: InkWell(
                        onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BooksPage()));
                        },
                          child:
                         Stack(
                 children: [
                
        Opacity(
          opacity: 0.7, 
          child: Image.asset(
            'lib/assets/books.jpg', 
            fit: BoxFit.cover, 
            height: 100,
            width: 150,
          ),
        ),
                    
                           Center(
                            child: Text('Books & More',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                            ),),
                          ),
                 ]
                        ),
                
                      ),
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black87
                      ),
                      height: 100,
                      width: 150,
                      
                                         ),
                   ),
                    Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Container(
                      
                      child: InkWell(
                        onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Foods()));
                        },
                    child:
                         Stack(
                 children: [
                
        Opacity(
          opacity: 0.7, 
          child: Image.asset(
            'lib/assets/fruits.webp', 
            fit: BoxFit.cover, 
            height: 100,
            width: 150,
          ),
        ),Center(
                            child: Text('Food & More',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                            ),),
                          ),
                 ]
                        ),
                        
                      ),
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black87
                      ),
                      height: 100,
                      width: 150,
                      
                                         ),
                   ),
                    Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Container(
                      
                      child: InkWell(
                        onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Bags()));
                        },
                          child:
                         Stack(
                 children: [
                
        Opacity(
          opacity: 0.7, 
          child: Image.asset(
            'lib/assets/bags.jpg', 
            fit: BoxFit.cover, 
            height: 100,
            width: 150,
          ),
        ),Center(
                            child: Text('Bags',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                            ),),
                          ),
                 ]
                        ),
                        
                      ),
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black87
                      ),
                      height: 100,
                      width: 150,
                      
                                         ),
                   ),
                    Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Container(
                      
                      child: InkWell(
                        onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Fashion()));
                        },
                          child:
                         Stack(
                 children: [
                
        Opacity(
          opacity: 0.7, 
          child: Image.asset(
            'lib/assets/fashion.webp', 
            fit: BoxFit.cover, 
            height: 100,
            width: 150,
          ),
        ), Center(
                            child: Text('Fashion',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                            ),),
                          ),
                 ]
                        ),
                        
                      ),
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black87
                      ),
                      height: 100,
                      width: 150,
                      
                                         ),
                   ),
                    Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Container(
                      
                      child: InkWell(
                        onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Furniture()));
                        },
                        child:
                         Stack(
                 children: [
                
        Opacity(
          opacity: 0.7, 
          child: Image.asset(
            'lib/assets/furniture.jpeg', 
            fit: BoxFit.cover, 
            height: 100,
            width: 150,
          ),
        ), Center(
                            child: Text('Furniture',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                            ),),
                          ),
                 ]
                        ),
                        
                      ),
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black87
                      ),
                      height: 100,
                      width: 150,
                      
                                         ),
                   ),
                    
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                     child: InkWell(
                        onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Utensils()));
                        },
          child:
                         Stack(
                 children: [
                
        Opacity(
          opacity: 0.7, 
          child: Image.asset(
            'lib/assets/utensils.jpg', 
            fit: BoxFit.cover, 
            height: 100,
            width: 150,
          ),
        ), Center(child: Text('Utensils',style: TextStyle(
                        color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 21,
                                          
                      ),),),
                 ]
                    ),
                     ),
                     
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black87
                      ),
                    height: 100,
                    width: 150,
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                     child: InkWell(
                        onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProductPage()));
                        },
                  child:
                         Stack(
                 children: [
                
        Opacity(
          opacity: 0.7, 
          child: Image.asset(
            'lib/assets/suppliments.jpeg', 
            fit: BoxFit.cover, 
            height: 100,
            width: 150,
          ),
        ), Center(child: Text('Health Supplement',style: TextStyle(
                        color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 21,
                                          
                      ),),),
                 ]
                    ),
                     ),
                     
                     
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black87
                      ),
                    height: 100,
                    width: 150,
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Container(
                     child: InkWell(
                        onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Pots()));
                        },
                child:
                         Stack(
                 children: [
                
        Opacity(
          opacity: 0.7, 
          child: Image.asset(
            'lib/assets/pots.jpg', 
            fit: BoxFit.cover, 
            height: 100,
            width: 150,
          ),
        ), Center(child: Text('Pots',style: TextStyle(
                        color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 21,
                                       
                      ),),),
                 ]
                    ),
                     ),
                     
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black87
                      ),
                    height: 100,
                    width: 150,
                                     ),
                 ),
                  Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                     child: InkWell(
                        onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Electronic()));
                        },
                      child:
                         Stack(
                 children: [
                
        Opacity(
          opacity: 0.7, 
          child: Image.asset(
            'lib/assets/electronic.jpg', 
            fit: BoxFit.cover, 
            height: 100,
            width: 150,
          ),
        ), Center(child: Text('Electronic',style: TextStyle(
                        color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 21,
                                          
                      ),),),
                 ]
                    ),
                     ),
                     
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black87
                      ),
                    height: 100,
                    width: 150,
                  ),
                ),
                  Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Container(
                     child: InkWell(
                        onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Hygience()));
                        },
                    child:
                         Stack(
                 children: [
                
        Opacity(
          opacity: 0.7, 
          child: Image.asset(
            'lib/assets/hygience.jpg', 
            fit: BoxFit.cover, 
            height: 100,
            width: 150,
          ),
        ),Center(child: Text('Hygiene',style: TextStyle(
                        color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 21,
                                       
                      ),),),
                 ]
                    ),
                     ),
                     
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black87
                      ),
                    height: 100,
                    width: 150,
                                     ),
                 ),
                  Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Container(
                     child: InkWell(
                        onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AvailablePage()));
                        },
                      child:
                         Stack(
                 children: [
                
        Opacity(
          opacity: 0.7, 
          child: Image.asset(
            'lib/assets/personalcare.jpg', 
            fit: BoxFit.cover, 
            height: 100,
            width: 150,
          ),
        ), Center(child: Text('Personal Care',style: TextStyle(
                        color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 21,
                                       
                      ),),),
                 ]
                    ),
                     ),
                     
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black87
                      ),
                    height: 100,
                    width: 150,
                                     ),
                 ),
                 
                 
              ],
            ), 
                      ],
        ),
          )
      )
      
    );
  }
  void _launchMapsUrl() async {
    const String googleMapsUrl = 'https://maps.google.com/?cid=8140131042848375194&entry=gps';
    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    } else {
      throw 'Could not launch $googleMapsUrl';
    }
}
}
