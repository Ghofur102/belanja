import 'package:belanja/models/items.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Console Game One',
        price: 500,
        imageProduct:
            "https://i.postimg.cc/c19zpJ6f/Image-Popular-Product-1.png",
        rating: 2.0,
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris auctor eleifend mi, nec fringilla diam congue scelerisque.",
        stok: 9),
    Item(
        name: 'Console Game Two',
        price: 200,
        imageProduct:
            "https://i.postimg.cc/c19zpJ6f/Image-Popular-Product-1.png",
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
        child: ListView.builder(
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
                      Image.network(item.imageProduct,
                          width: 600, height: 240, fit: BoxFit.contain),
                      Text(item.description),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    "Stok Tersedia: ${item.stok}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
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
            }),
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
