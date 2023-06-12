import 'package:coffe_shop/models/coffee.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class coffeeTile extends StatelessWidget {
  final coffee Coffee;
  void Function()? onPressed;
  final Widget icon;
  coffeeTile(
      {super.key,
      required this.Coffee,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
          title: Text(Coffee.name),
          subtitle: Text(Coffee.price),
          leading: Image.asset(Coffee.imagePath),
          trailing: IconButton(onPressed: onPressed, icon: icon)),
    );
  }
}
