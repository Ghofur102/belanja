import 'package:belanja/models/items.dart';
import 'package:belanja/widgets/footer.dart';
import 'package:belanja/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Console Game One',
        price: 500,
        imageProduct: "images/console_game.jpg",
        rating: 2.0,
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris auctor eleifend mi, nec fringilla diam congue scelerisque.",
        stok: 9),
    Item(
        name: 'Console Game Two',
        price: 200,
        imageProduct: "images/console_game.jpg",
        rating: 3.0,
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris auctor eleifend mi, nec fringilla diam congue scelerisque.",
        stok: 9)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Belanja"),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ProductCard(item: item, onTap: () => {
              Navigator.pushNamed(context, '/item', arguments: item),
            });
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 0.69),
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
