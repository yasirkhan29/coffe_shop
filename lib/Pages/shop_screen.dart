import 'package:coffe_shop/comonets.dart/coffee_tile.dart';
import 'package:coffe_shop/models/coffee.dart';
import 'package:coffe_shop/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(coffee coffee) {
    Provider.of<coffeeshop>(context, listen: false).addItemToCart(coffee);
    // show dialog
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Successfully added to cart"),
              backgroundColor: Colors.brown,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<coffeeshop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                "How would you like your coffee?",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 25),
              Expanded(
                  child: ListView.builder(
                      itemCount: value.coffeeShop.length,
                      itemBuilder: (context, index) {
                        //get individual coffee
                        coffee eachcoffee = value.coffeeShop[index];
                        // return the tile for this coffee
                        return coffeeTile(
                          Coffee: eachcoffee,
                          icon: Icon(Icons.add),
                          onPressed: () => addToCart(eachcoffee),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
