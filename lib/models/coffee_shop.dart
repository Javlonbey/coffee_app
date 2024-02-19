import 'package:coffee_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
        name: 'Long Black',
        price: "4.10",
        imagePath: "assets/images/black.png"),
    Coffee(name: 'Latte', price: "4.10", imagePath: "assets/images/p.png"),
    Coffee(name: 'Ice Coffee', price: "3.50", imagePath: "assets/images/i.png"),
    Coffee(name: 'Espresso', price: "4.10", imagePath: "assets/images/c.png"),
  ];
  //user cart
  List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
