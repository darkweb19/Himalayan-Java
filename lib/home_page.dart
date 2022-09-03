import 'package:coffeeui/util/coffee_tile.dart';
import 'package:coffeeui/util/coffee_types.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //when selected on tap
  void selected() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          //find the best coffee for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find your best of',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'HIMALAYAN JAVA',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 60,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          //search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find Your Coffee..',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //Horizontal Listview of Coffee types

          Container(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTypes(
                  coffeeType: 'Cappucino',
                  isSelected: false,
                  onTap: selected,
                ),
                CoffeeTypes(
                  coffeeType: 'Latte',
                  isSelected: true,
                  onTap: selected,
                ),
                CoffeeTypes(
                  coffeeType: 'Black',
                  isSelected: false,
                  onTap: selected,
                ),
                CoffeeTypes(
                  coffeeType: 'Expresso',
                  isSelected: false,
                  onTap: selected,
                ),
                CoffeeTypes(
                  coffeeType: 'Double Expresso',
                  isSelected: false,
                  onTap: selected,
                ),
              ],
            ),
          ),

          //horizontal listview...Tiles
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTile(
                  coffeeImagePath:
                      'https://img.freepik.com/free-photo/wooden-table-with-cup-coffee_1203-1631.jpg?size=626&ext=jpg',
                  coffeeName: 'Cappucino',
                  coffeePrice: '280',
                ),
                CoffeeTile(
                  coffeeImagePath:
                      'https://img.freepik.com/free-photo/close-up-hands-barista-make-latte-coffee-art-paint_1150-12161.jpg?w=1480&t=st=1662214027~exp=1662214627~hmac=4be6760be280c6a5271a40e8d56ff977e00152dcf1b6b699d6d0b973d082d20a',
                  coffeeName: 'Latte',
                  coffeePrice: '350',
                ),
                CoffeeTile(
                  coffeeImagePath:
                      'https://img.freepik.com/free-psd/coffee-spoon-coffee-beans-wooden-background_23-2148371048.jpg?size=626&ext=jpg',
                  coffeeName: 'Black',
                  coffeePrice: '210',
                ),
                CoffeeTile(
                  coffeeImagePath:
                      'https://t3.ftcdn.net/jpg/03/01/94/66/240_F_301946660_vXpMcW3F8uiuWc2wZzQ36pZB4giYSQHE.jpg',
                  coffeeName: 'Expresso',
                  coffeePrice: '170',
                ),
                CoffeeTile(
                  coffeeImagePath:
                      'https://t3.ftcdn.net/jpg/02/46/95/72/240_F_246957246_aNwLxzM0Ji3CiMkdi8En3sdLnSjAyeZO.jpg',
                  coffeeName: 'Double Expresso',
                  coffeePrice: '280',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
