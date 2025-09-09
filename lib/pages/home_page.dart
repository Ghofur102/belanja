import 'package:belanja/models/items.dart';
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
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${item.price}",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFF7643),
                          ),
                        ),
                      ],
                    ),
                    Hero(
                      tag: 'product-${item.name}',
                      child: Image.asset(
                        item.imageProduct,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.image_not_supported,
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Stok: ${item.stok}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.star, color: Colors.red),
                        Text(item.rating.toString()),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 0.69),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.blue,
        child: const Center(
          child: Text(
            'Nama: Muhamad Abdul Ghofur, NIM: 362458302016',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
