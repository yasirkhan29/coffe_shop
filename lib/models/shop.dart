import 'package:coffe_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class coffeeshop extends ChangeNotifier {
  final List<coffee> _shop = [
    coffee(name: 'Long Black', price: '60', imagePath: 'images/y2.png'),
    //latte
    coffee(name: 'latte', price: '400', imagePath: 'images/y3.png'),
    //espresso
    coffee(name: 'espresso', price: '500', imagePath: 'images/y4.png'),
    //ice coffee
    coffee(name: 'ice coffee', price: '120', imagePath: 'images/y1.png'),
  ];

  List<coffee> _userCart = [];

  //get coffee list
  List<coffee> get coffeeShop => _shop;
  //get user cart
  List<coffee> get userCart => _userCart;
  //add item to cart
  void addItemToCart(coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
