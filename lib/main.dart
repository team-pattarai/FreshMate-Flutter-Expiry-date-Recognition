import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/notification_page.dart';
import 'pages/profile_page.dart';
import 'pages/scan_page.dart';
import 'pages/stored_items_page.dart';
import 'pages/edit_item_page.dart';
import 'pages/manual_input_page.dart';
import 'pages/login_page.dart';
import 'pages/signup_page.dart';

void main() {
  runApp(FreshMateApp());
}

class FreshMateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FreshMate',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/notifications': (context) => NotificationPage(),
        '/profile': (context) => ProfilePage(),
        '/scan': (context) => ScanPage(),
        '/storage': (context) => StoredItemsPage(),
        '/edit': (context) => EditItemPage(),
        '/manual-input': (context) => ManualInputPage(),
      },
    );
  }
}
