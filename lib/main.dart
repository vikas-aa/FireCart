import 'dart:math';

import 'package:clone_app/Singup.dart';
import 'package:clone_app/firebase_options.dart';
import 'package:clone_app/food.dart';
import 'package:clone_app/homescreen.dart';
import 'package:clone_app/name.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'dart:async';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
  );
  // QuerySnapshot snapshot = await FirebaseFirestore.instance.collection
  // ("Users").get();
  // for(var doc in snapshot.docs){
  //   print(doc.data().toString());
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer to navigate after 3 seconds
    Timer(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) =>  NavigationMenu(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: 
         
        
          Positioned(
            child: Container(
              
                          
                          child: Image.asset(
                            'lib/assets/shopping_image.jpg', 
                            fit: BoxFit.cover, 
                          ),
                        
                        
            ),
          ),
    );
  }
}


