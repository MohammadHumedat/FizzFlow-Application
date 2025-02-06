import 'dart:math';

import 'package:fizzflow/models/items.dart';
import 'package:fizzflow/widgets/favourite_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class favouritePage extends StatefulWidget {
  const favouritePage({super.key});

  @override
  State<favouritePage> createState() => favouritePageState();
}

class favouritePageState extends State<favouritePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: item.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: FavouriteItem(item: item[index]),
                );
              },
            )),
      ]),
    );
  }
}
