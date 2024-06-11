import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/notification_page.dart';
import 'pages/profile_page.dart';
import 'pages/scan_page.dart';
import 'pages/stored_items_page.dart';
import 'pages/edit_item_page.dart';
import 'pages/manual_input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freshmate',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
      routes: {
        '/notifications': (context) => NotificationPage(),
        '/profile': (context) => ProfilePage(),
        '/scan': (context) => ScanPage(),
        '/stored_items': (context) => StoredItemsPage(),
        '/edit_item': (context) => EditItemPage(),
        '/manual_input': (context) => ManualInputPage(),
      },
    );
  }
}
