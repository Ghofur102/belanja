import 'package:belanja/models/items.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Produk"),
      ),
      body: Center(
          child: Card(
              margin: const EdgeInsets.only(bottom: 10),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemArgs.name,
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${itemArgs.price}",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFF7643),
                          ),
                        ),
                      ],
                    ),
                    Hero(
                      tag: 'product-${itemArgs.name}',
                      child: Image.asset(
                        itemArgs.imageProduct,
                        width: 600, 
                        height: 240, 
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.image_not_supported,
                          );
                        },
                      ),
                    ),
                    Text(itemArgs.description),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  "Stok Tersedia: ${itemArgs.stok}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.star, color: Colors.red),
                        Text(itemArgs.rating.toString()),
                      ],
                    ),
                  ],
                ),
              ))),
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
