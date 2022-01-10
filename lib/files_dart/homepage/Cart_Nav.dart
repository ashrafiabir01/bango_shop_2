import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart_Nav extends StatefulWidget {
  const Cart_Nav({Key? key}) : super(key: key);

  @override
  _Cart_NavState createState() => _Cart_NavState();
}

class _Cart_NavState extends State<Cart_Nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3BB73E)
        ,title: Text("Cart"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Icon(Icons.remove_shopping_cart_outlined , size: 120, color: Colors.grey,)),
              Text("The cart is empty", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
