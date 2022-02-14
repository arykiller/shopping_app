import 'package:flutter/material.dart';
import './Widgets/showProducts.dart';
import './Models/products.dart';

void main() {
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  List<MyProducts> products = [
    MyProducts(
        id: '01',
        title: 'AMD Ryzen 5',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pharetra vestibulum leo at facilisis. Pellentesque vehicula arcu a bibendum malesuada. Proin malesuada eros nec sem vestibulum fermentum. Suspendisse fermentum tortor sit amet mauris efficitur commodo. Etiam porttitor eleifend enim sodales rhoncus. Aenean faucibus tincidunt sapien non mollis',
        price: 259.99,
        imagePath: "assets/images/AMD_Ryzen_5_5600X.png",
        isFavorite: false),
    MyProducts(
        id: '02',
        title: 'Intel Core i5',
        description:
            ' Proin tristique, enim non vehicula vulputate, nisi ex condimentum tortor, id aliquet leo tortor ut mi. Vivamus ac diam sed metus tempor maximus.Nunc sollicitudin quam a pulvinar eleifend. Phasellus pulvinar purus ut dolor faucibus fermentum. Sed diam ante, ornare nec est sit amet, dapibus rutrum mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas',
        price: 279.99,
        imagePath: 'assets/images/Intel_Core_i5-12600K.png',
        isFavorite: false),
    MyProducts(
        id: '03',
        title: 'Asus ROG B550',
        description:
            'Pellentesque lorem lacus, dignissim faucibus semper quis, sodales sed felis. Duis quis euismod ante. Curabitur massa libero, mollis nec felis nec, iaculis accumsan metus. Fusce pharetra nibh id vulputate condimentum. Aliquam et ultrices urna. Pellentesque risus dui, viverra vitae congue sit amet, placerat vitae nisi.',
        price: 194.99,
        imagePath: 'assets/images/Asus_ROG_STRIX_B550-F_GAMING.png',
        isFavorite: false),
    MyProducts(
        id: '04',
        title: 'MSI Z490',
        description:
            ' Nam dignissim mattis nibh id placerat. Ut pellentesque, libero id pellentesque aliquet, sapien sapien fringilla nulla, eget lacinia ligula sem a nulla. Nam accumsan lobortis vehicula.',
        price: 149.99,
        imagePath: 'assets/images/MSI_MPG_Z490_GAMING_PLUS.png',
        isFavorite: false),
    MyProducts(
        id: '05',
        title: 'Corsair Vengeance RGB Pro',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce maximus eros non magna viverra accumsan. Fusce bibendum, massa eu pellentesque feugiat, ante nisi sagittis nulla, sed mollis turpis elit sed urna. Donec odio arcu, mollis ultrices imperdiet a, commodo ac libero',
        price: 87.99,
        imagePath: 'assets/images/Corsair_Vengeance.png',
        isFavorite: false),
    MyProducts(
        id: '06',
        title: 'G.Skill Trident Z RGB',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce maximus eros non magna viverra accumsan. Fusce bibendum, massa eu pellentesque feugiat, ante nisi sagittis nulla, sed mollis turpis elit sed urna. Donec odio arcu, mollis ultrices imperdiet a, commodo ac libero',
        price: 89.99,
        imagePath: 'assets/images/G-Skill-Trident-Z-RGB-16-GB.png',
        isFavorite: false),
    MyProducts(
        id: '07',
        title: 'MSI GeForce RTX 3070 Ti ',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce maximus eros non magna viverra accumsan. Fusce bibendum, massa eu pellentesque feugiat, ante nisi sagittis nulla, sed mollis turpis elit sed urna. Donec odio arcu, mollis ultrices imperdiet a, commodo ac libero',
        price: 1269.00,
        imagePath: 'assets/images/MSI-GeForce-RTX-3070-Ti.png',
        isFavorite: false),
    MyProducts(
        id: '08',
        title: 'EVGA GeForce RTX 3070 Ti',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce maximus eros non magna viverra accumsan. Fusce bibendum, massa eu pellentesque feugiat, ante nisi sagittis nulla, sed mollis turpis elit sed urna. Donec odio arcu, mollis ultrices imperdiet a, commodo ac libero',
        price: 1218.99,
        imagePath: 'assets/images/EVGA-GeForce-RTX-3070-Ti.png',
        isFavorite: false),
    MyProducts(
        id: '09',
        title: 'Cooler Master MASTERLIQUID ML240L',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce maximus eros non magna viverra accumsan. Fusce bibendum, massa eu pellentesque feugiat, ante nisi sagittis nulla, sed mollis turpis elit sed urna. Donec odio arcu, mollis ultrices imperdiet a, commodo ac libero',
        price: 67.99,
        imagePath: 'assets/images/Cooler-Master-MASTERLIQUID-ML240L.png',
        isFavorite: false),
    MyProducts(
        id: '10',
        title: 'Cooler Master Hyper 212',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce maximus eros non magna viverra accumsan. Fusce bibendum, massa eu pellentesque feugiat, ante nisi sagittis nulla, sed mollis turpis elit sed urna. Donec odio arcu, mollis ultrices imperdiet a, commodo ac libero',
        price: 49.99,
        imagePath: 'assets/images/Cooler-Master-Hyper-212.png',
        isFavorite: false),
    MyProducts(
        id: '11',
        title: 'Phanteks Eclipse P360A',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce maximus eros non magna viverra accumsan. Fusce bibendum, massa eu pellentesque feugiat, ante nisi sagittis nulla, sed mollis turpis elit sed urna. Donec odio arcu, mollis ultrices imperdiet a, commodo ac libero',
        price: 79.99,
        imagePath: 'assets/images/Phanteks-Eclipse-P360A.png',
        isFavorite: false),
    MyProducts(
        id: '12',
        title: 'Asus 1200 W 80+ Platinum',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce maximus eros non magna viverra accumsan. Fusce bibendum, massa eu pellentesque feugiat, ante nisi sagittis nulla, sed mollis turpis elit sed urna. Donec odio arcu, mollis ultrices imperdiet a, commodo ac libero',
        price: 338.99,
        imagePath: 'assets/images/Asus-1200-W-80+-Platinum.png',
        isFavorite: false),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          leading: Icon(Icons.menu),
          title: Text('My shopping App'),
          actions: [Icon(Icons.shopping_cart)],
        ),
        body: ShowProducts(products),
      ),
    );
  }
}
