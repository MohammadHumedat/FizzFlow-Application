import 'package:fizzflow/models/items.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 242, 242),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color(0xFFFF5722),
        foregroundColor: Colors.white,
        title: Text('FizzFlow'),
      ),
      drawer: Drawer(
        elevation: 1,
        backgroundColor: Color(0xFFFAFAFA),
        child: Center(
            child: Text(
          'I am in drawer',
          style: TextStyle(fontSize: 20),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                'assets/images/freepik__upload__64505.jpg',
                fit: BoxFit.fill,
                width: 440,
                height: 300,
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: GridView.builder(
                itemCount: item.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 244, 242, 242),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          item[index].imageurl,
                          height: 130,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        item[index].name,
                        style: GoogleFonts.playfair(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        'price : ${item[index].price} \$',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
