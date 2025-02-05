import 'package:fizzflow/models/items.dart';
import 'package:fizzflow/widgets/item_grid.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              'assets/images/freepik__upload__64505.jpg',
              fit: BoxFit.fill,
              width: 440,
              height: 280,
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: GridView.builder(
              itemCount: item.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 20,
              ),
              itemBuilder: (context, index) => GridItem(item: item[index]),
            ),
          ),
        ],
      ),
    );
  }
}
