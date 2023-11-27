import 'package:flutter/material.dart';

class NutritionItemModel with ChangeNotifier{
  late int id;
  late String description;
  late Category category;
  late int quantity;
  late String unit;
  late double kcal;
  late double protein;
  late double carbs;
  late double fat;
}

enum Category {supplement, fruit}