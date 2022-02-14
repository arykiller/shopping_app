import 'package:flutter/material.dart';
import '../Models/products.dart';

class DetailScreen extends StatelessWidget {
  final MyProducts myProducts;

  DetailScreen({required this.myProducts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: Icon(Icons.menu),
        title: Text(
          myProducts.title,
        ),
        actions: [Icon(Icons.shopping_cart)],
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              child: Image.asset(
                myProducts.imagePath,
                height: 250,
                width: 250,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                myProducts.title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                myProducts.description,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                'The Price is : \$ ${myProducts.price}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
