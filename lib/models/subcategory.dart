import 'dart:ui';

import 'package:slp2021/models/category.dart';

class SubCategory extends Category{

  SubCategory({
    String? name,
    Color? color,
    String? imgName,
  }):super(
    name: name,
    color: color,
    imgName: imgName);
}