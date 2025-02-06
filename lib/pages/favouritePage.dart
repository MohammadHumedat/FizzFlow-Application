import 'dart:math';

import 'package:fizzflow/models/items.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class favouritePage extends StatefulWidget {
  const favouritePage({super.key});

  @override
  State<favouritePage> createState() => _favouritePageState();
}

class _favouritePageState extends State<favouritePage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.network(
                  item[11].imageurl,
                  height: 70,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${item[11].name} \$',
                        style: GoogleFonts.playfair(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '${item[11].price} \$',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.favorite, color: Colors.red)
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
