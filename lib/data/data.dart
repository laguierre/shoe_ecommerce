import 'dart:ui';

import '../models/models.dart';

class MyColors {
  static const myOrange = Color(0xffF25F39);
  static const myBlack = Color(0xff272320);
  static const grayBackground = Color(0xffF8F8F8);
}

class Data {
  static List<ProductModel> generateProducts(){
    return [
      ProductModel(
          1,
          "lib/assets/images/shoes_1.png",
          "Creter Impact",
          "Men's Shoes",
          "men shoes",
          99.56
      ),
      ProductModel(
          2,
          "lib/assets/images/shoes_2.png",
          "Air - Max Pre Day",
          "Men's Shoes",
          "men shoes",
          137.56
      ),
      ProductModel(
          3,
          "lib/assets/images/shoes_3.png",
          "Air Max 51",
          "Men's Shoes",
          "men shoes",
          99.56
      ),
      ProductModel(
          4,
          "lib/assets/images/shoes_4.png",
          "EM Shoes",
          "Men's Shoes",
          "men shoes",
          212.56
      ),
    ];
  }

  static List<ProductModel> generateCategories(){
    return [
      ProductModel(
          1,
          "lib/assets/images/shoes_1.png",
          "Lifestyle",
          "Men's Shoes",
          "men shoes",
          99.56
      ),
      ProductModel(
          2,
          "lib/assets/images/shoes_2.png",
          "Basketball",
          "Men's Shoes",
          "men shoes",
          137.56
      ),
      ProductModel(
          3,
          "lib/assets/images/shoes_3.png",
          "Running",
          "Men's Shoes",
          "men shoes",
          99.56
      ),
      ProductModel(
          4,
          "lib/assets/images/shoes_4.png",
          "Rugby",
          "Men's Shoes",
          "men shoes",
          212.56
      ),
    ];
  }
}