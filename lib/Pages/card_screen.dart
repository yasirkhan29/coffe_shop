import 'package:coffe_shop/comonets.dart/coffee_tile.dart';
import 'package:coffe_shop/models/coffee.dart';
import 'package:coffe_shop/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // add coffe to cart
  void removeFromCart(coffee Coffee) {
    Provider.of<coffeeshop>(context, listen: false).removeItemFromCart(Coffee);
  }

  // pay button tapped
  void payNow() {}

  @override
  Widget build(BuildContext context) {
    return Consumer<coffeeshop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Text(
                      "Your Cart",
                      style: TextStyle(fontSize: 20),
                    ),
                    // list of cart items
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.userCart.length,
                            itemBuilder: (context, index) {
                              // get individual cart items
                              coffee eachCoffee = value.userCart[index];

                              // return coffee tile
                              return coffeeTile(
                                  Coffee: eachCoffee,
                                  onPressed: () => removeFromCart(eachCoffee),
                                  icon: Icon(Icons.delete));
                            })),

                    // pay button
                    GestureDetector(
                      onTap: payNow,
                      child: Container(
                        padding: EdgeInsets.all(25),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Text(
                          "Pay Now",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
