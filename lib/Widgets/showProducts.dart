import 'package:flutter/material.dart';
import '../Widgets/shoppingitems.dart';
import '../Models/products.dart';

class ShowProducts extends StatelessWidget {
  final List<MyProducts> myproducts;
  ShowProducts(this.myproducts);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: GridView.builder(
        itemCount: myproducts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 4 / 3,
        ),
        itemBuilder: (cx, i) => Card(
          elevation: 5,
          child: ShoppingItem(myProduct: myproducts[i]),
        ),
      ),
    );
  }
}
