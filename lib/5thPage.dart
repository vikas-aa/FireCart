import 'dart:io';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FivethPage extends StatefulWidget {
  const FivethPage({super.key});

  @override
  State<FivethPage> createState() => _FivethPageState();
}

class _FivethPageState extends State<FivethPage> {
  File? profilepic;
  final auth = FirebaseAuth.instance;
  final ref = FirebaseDatabase.instance.ref('name');
  List<dynamic> list = []; // List to store the data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () async {
              XFile? selectedImage =
                  await ImagePicker().pickImage(source: ImageSource.gallery);

              if (selectedImage != null) {
                File convertedFile = File(selectedImage.path);
                setState(() {
                  profilepic = convertedFile;
                });
                print("Image selected!");
              } else {
                print("No image selected!");
              }
            },
            child: CircleAvatar(
              radius: 66,
              backgroundImage: (profilepic != null) ? FileImage(profilepic!) : null,
              backgroundColor: Colors.white,
              child: (profilepic == null)
                  ? const Icon(Icons.camera_alt, size: 40, color: Colors.grey) // Placeholder icon
                  : null,
            ),
          ),
          const SizedBox(height: 16.0),

          // StreamBuilder to read data from Firebase Realtime Database
          StreamBuilder(
            stream: ref.onValue,
            builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
              if (!snapshot.hasData) {
                return const CircularProgressIndicator();
              } else {
                if (snapshot.data!.snapshot.value == null) {
                  return const Text('No data available');
                } else {
                  Map<dynamic, dynamic> map = snapshot.data!.snapshot.value as dynamic;
                  list.clear();
                  list = map.values.toList();

                  return SizedBox(
                    height: 200, // Limit the height of the ListView
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return Center(
                          child: ListTile(
                            title: Text(list[index]['title'] ?? 'No Title'),
                          ),
                        );
                      },
                    ),
                  );
                }
              }
            },
          ),
        ],
      ),
    );
  }
}
