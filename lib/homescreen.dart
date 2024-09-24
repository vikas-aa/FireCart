import 'package:clone_app/1stPage.dart';
import 'package:clone_app/2ndPage.dart';
import 'package:clone_app/3rdPage.dart';
import 'package:clone_app/4thPage.dart';
import 'package:clone_app/5thPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});



  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController()); // Initialize NavigationController using GetX

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_rounded), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.category), label: 'Categories'),
            NavigationDestination(icon: Icon(Icons.food_bank), label: 'Eats'),
            NavigationDestination(icon: Icon(Icons.circle_notifications_rounded), label: 'Orders'),
            NavigationDestination(icon: Icon(Icons.person_2), label: 'You'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
            
        
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs; 
  final screens = [
    const FirstPage(),
    const SecondPage(),
    const ThridPage(), 
    const FourthPage(productName: "name"),
    const FivethPage(), 
  ]; 
}
