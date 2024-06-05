import 'package:flutter/material.dart';
import 'profile.dart';
import 'shop.dart';
import 'cart.dart';
import 'login.dart'; // Import the ProfilePage

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 6, 18, 33),
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.shopify_outlined,
                size: 100,
                color: Colors.white,
              ),

            ),

            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('HOME', style: TextStyle(color: Colors.white)),
              onTap: (){ Navigator.pop(context);
              Navigator.pushNamed(context, "/index");
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text('MY INFO', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),
            
            ListTile(
              leading: Icon(Icons.card_giftcard, color: Colors.white),
              title: Text('OFFERS', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('SETTINGS', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.login, color: Colors.white),
              title: Text('LOGIN', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),
            // Add more ListTiles for other items
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "SHOPPIE",
          style: TextStyle(
            color: Color.fromARGB(255, 222, 225, 230),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      backgroundColor: Color.fromARGB(255, 3, 16, 37),
        leading: Icon(Icons.menu,
        color:Colors.white ,),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_active,
              color: Colors.white,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 10, 25, 50),
        selectedItemColor: Color.fromARGB(255, 35, 50, 75),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shop,), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: Center(

        child: Text(
          'Ayman Shoppie!',
          style: TextStyle(
              fontSize: 24, fontStyle: FontStyle.normal, color: Colors.black),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: FirstPage(),
  ));
}
