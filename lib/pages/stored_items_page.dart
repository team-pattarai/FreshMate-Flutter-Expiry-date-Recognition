import 'package:flutter/material.dart';

class StoredItemsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stored Items'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.fastfood),
            title: Text('Milk'),
            subtitle: Text('Expires in 2 days'),
            trailing: IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.pushNamed(context, '/edit_item');
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.fastfood),
            title: Text('Bread'),
            subtitle: Text('Expires in 5 days'),
            trailing: IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.pushNamed(context, '/edit_item');
              },
            ),
          ),
          // Add more items similarly
        ],
      ),
    );
  }
}
