
import 'dart:math';

import 'package:clone_app/homescreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
class Myname extends StatefulWidget {
  const Myname({Key? key}) : super(key: key);
   @override
  State<Myname> createState() => _Myname();
}
  @override
  class _Myname extends State<Myname> {
    final nameController = TextEditingController();
    bool loading = true ;
    final DatabaseRef = FirebaseDatabase.instance.ref('name');



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Stack(
        children: [
          // Background image
Positioned.fill(
            child:Opacity(opacity: 0.5,
            child: Image.asset(
              'lib/assets/shopping_image.jpg', 
              fit: BoxFit.cover, 
            ),
            ),
          ),           Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), 
          child: Column(
            mainAxisSize: MainAxisSize.min, 
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              
              SizedBox(height: 16.0), 
              Padding(
          padding: const EdgeInsets.all(16.0), 
          child: Column(
        
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              SizedBox(height: 16.0), 
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Enter your Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 6, 174, 196),
                        width: 3.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
         Center(
           child: ElevatedButton(
            
                    onPressed: () {
                      setState(() {
                        loading = true;
                      });
                     DatabaseRef.child(DateTime.now().millisecondsSinceEpoch.toString()).set({
                      'title' : nameController.text.toString(),
                      'id':DateTime.now().millisecondsSinceEpoch.toString()

                     });
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NavigationMenu(),
                          ));
                    },
                     style: ElevatedButton.styleFrom(
                              disabledBackgroundColor: const Color.fromARGB(66, 0, 0, 0),
                              disabledForegroundColor: Color.fromARGB(255, 17, 107, 226),
                              minimumSize: const Size(150, 50),
                     ),
                    child: const Text('Lets Go',style: TextStyle(fontWeight: FontWeight.w900),)),
         ),
            ]
        )
      )
      )
        ]
      ),
    );
  }
}