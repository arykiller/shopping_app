import 'package:flutter/material.dart';
import '../Models/products.dart';
import '../screens/detailsScreen.dart';

class ShoppingItem extends StatelessWidget {
  final MyProducts myProduct;

  ShoppingItem({
    required this.myProduct,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(myProducts: myProduct)));
      },
      child: ClipRRect(
        child: GridTile(
          child: Image.asset(
            myProduct.imagePath,
            fit: BoxFit.contain,
          ),
          footer: Container(
            height: 50,
            child: GridTileBar(
              backgroundColor: Colors.deepPurple.withOpacity(0.9),
              title: Text(
                myProduct.title,
                softWrap: true,
                overflow: TextOverflow.fade,
                textAlign: TextAlign.center,
              ),
              leading: Icon(
                Icons.favorite,
              ),
              trailing: Icon(Icons.shopping_basket),
            ),
          ),
        ),
      ),
    );
  }
}
