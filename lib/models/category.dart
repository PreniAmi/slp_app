import 'dart:ui';
import 'package:flutter/material.dart';

class Category{
  String? name;
  Color? color;
  String? imgName;
  List<Category>? subCategories;
  
  Category(
    {
      this.name,
      this.color,
      this.imgName,
      this.subCategories
    }
  );
}