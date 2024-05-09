import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RYOAKBAR-211011400877',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shoes'),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16), // add padding to the right
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/Image_1.jpg'),
              ),
            ),
          ],
        ),
        body: const SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShoeCard(
                  color: Colors.purple,
                  title: 'Nike SB Zoom Blazer',
                  subtitle: 'Mid Premium',
                  price: '\$8,795',
                  image: 'assets/1635221496shoes-png-image.png',
                ),
                SizedBox(height: 20),
                ShoeCard(
                  color: Colors.cyan,
                  title: 'Nike Air Zoom Pegasus',
                  subtitle: 'Men`s Rood Running Pegasus',
                  price: '\$9,995',
                  image: 'assets/shoes-wasatch-running-3.png',
                ),
                SizedBox(height: 20),
                ShoeCard(
                  color: Colors.pinkAccent,
                  title: 'Nike ZoomX Vaporfly',
                  subtitle: 'Men`s Rood Racing Shoe',
                  price: '\$19,695',
                  image: 'assets/1635221496shoes-png-image.png',
                ),
                SizedBox(height: 20),
                ShoeCard(
                  color: Colors.grey,
                  title: 'Nike Air Force 1 S50',
                  subtitle: 'Older Kid`s Shoe',
                  price: '\$5,295',
                  image: 'assets/shoes-wasatch-running-3.png',
                ),
                SizedBox(height: 20),
                ShoeCard(
                  color: Colors.yellow,
                  title: 'Nike Waffle One',
                  subtitle: 'Men`s Shoes',
                  price: '\$8,295',
                  image: 'assets/1635221496shoes-png-image.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle;
  final String price;
  final String image;

  const ShoeCard({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16), // border radius
      ),
      width: 400,
      height: 140,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                price,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Image.asset(image),
        ],
      ),
    );
  }
}