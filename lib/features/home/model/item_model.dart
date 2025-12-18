import 'package:flutter/material.dart';
import 'package:scube_task/core/constants/app_icons_images.dart';

class ItemModel {
  final String title;
  final String iconPath; // Path to asset (e.g., 'assets/solar.png')
  final Color indicatorColor; // The small square color (Blue, Orange, etc.)
  final bool isActive; // Determines if status is Active or Inactive
  final double data1;
  final double data2;

  ItemModel({
    required this.title,
    required this.iconPath,
    required this.indicatorColor,
    required this.isActive,
    required this.data1,
    required this.data2,
  });
}

// Inside your Controller (e.g., MonitoringController.dart)

List<ItemModel> items = [
  // Card 1: Solar Panel
  ItemModel(
    title: "Data View",
    iconPath: AppImages.solar,
    indicatorColor: const Color(0xFF82CFFF),
    isActive: true,
    data1: 55505.63,
    data2: 58805.63,
  ),

  // Card 2: Battery
  ItemModel(
    title: "Data Type 2",
    iconPath: AppImages.battery,
    indicatorColor: const Color(0xFFFF9F29), // Orange Square
    isActive: true,
    data1: 55505.63,
    data2: 58805.63,
  ),

  // Card 3: Power Tower
  ItemModel(
    title: "Data Type 3",
    iconPath: AppImages.power,
    indicatorColor: const Color(0xFF82CFFF), // Light Blue Square
    isActive: false, // Shows Red "(Inactive)"
    data1: 55505.63,
    data2: 58805.63,
  ),
];
