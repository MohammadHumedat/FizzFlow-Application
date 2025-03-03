import 'package:fizzflow/models/items.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridItem extends StatelessWidget {
  final Items item;
  const GridItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: 230,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 254, 254),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                item.imageurl,
                height: 125,
                width: 190,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              item.name,
              style: GoogleFonts.playfair(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            Text(
              'price : ${item.price} \$',
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange),
            ),
          ],
        ),
      ),
    );
  }
}
