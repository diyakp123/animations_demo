import 'package:flutter/material.dart';

class ShoppingCartButton extends StatefulWidget {
   ShoppingCartButton({super.key});

  @override
  State<ShoppingCartButton> createState() => _ShoppingCartButtonState();
}

class _ShoppingCartButtonState extends State<ShoppingCartButton> {
  bool isExapanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            setState(() {
              isExapanded = !isExapanded;
            });
          },
          child: AnimatedContainer(
            duration: Duration( milliseconds: 500),
            width: isExapanded ? 200 : 80.0,
            height: 60.0,
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
              color: isExapanded ? Colors.green : Colors.blue,
              borderRadius: BorderRadius.circular( isExapanded ? 50 : 10.0),
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  isExapanded ? Icons.check : Icons.shopping_cart,
                  color: Colors.white,
                ),
                isExapanded ? Text("Added to cart!") : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}