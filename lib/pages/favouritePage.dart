import 'package:fizzflow/models/items.dart';
import 'package:fizzflow/widgets/favourite_item.dart';
import 'package:flutter/material.dart';

class favouritePage extends StatefulWidget {
  const favouritePage({super.key});

  @override
  State<favouritePage> createState() => favouritePageState();
}

class favouritePageState extends State<favouritePage> {
  List<Items> favouriteItems = [];

  @override
  void initState() {
    super.initState();
    favouriteItems = item.where((item) => item.isFavourite == true).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: favouriteItems.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return FavouriteItem(
                  item: favouriteItems[index],
                );
              },
            )),
      ]),
    );
  }
}
