import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 222, 217, 121), // Light purple background
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topLeft,
               
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Welcome Juanita!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/storage');
                      },
                      child: Text('Your storage', style: TextStyle(color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 203, 253, 200), // Light green background
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/scan');
                      },
                      child: Text('Add item', style: TextStyle(color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 203, 253, 200), // Light green background
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.black,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/notifications');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/profile');
          }
        },
      ),
    );
  }
}
