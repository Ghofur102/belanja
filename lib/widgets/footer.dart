import 'package:flutter/material.dart';

class Footer extends StatelessWidget {

  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        color: Colors.blue,
        child: const Center(
          child: Text(
            'Nama: Muhamad Abdul Ghofur, NIM: 362458302016',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
  }
}
