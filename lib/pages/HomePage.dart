import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color(0xFFFF5722),
        foregroundColor: Colors.white,
        title: Center(
          child: Text('FizzFlow'),
        ),
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
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/assets imag1.jpg',
                  fit: BoxFit.cover,
                  width: 400,
                  height: 240,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
