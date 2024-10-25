// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:flutter_application/widget/cart_view.dart';
import 'package:flutter_application/widget/product_card.dart';

class Cartt with ChangeNotifier {
  List selecteddproducts = [];
  int totalprice = 0;

  delete(ProductCard) {
    selecteddproducts.removeRange(0, ProductCard);

    notifyListeners();
  }

  @override
  notifyListeners();

  add(ProductCard) {
    selecteddproducts.add(ProductCard.price.toString());
    selecteddproducts.add(ProductCard.title.toString());
    selecteddproducts.add(ProductCard.img.toString());
    notifyListeners();
  }
}
