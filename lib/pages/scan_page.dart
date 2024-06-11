import 'package:flutter/material.dart';

class ScanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan Product'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Scan logic
              },
              child: Text('Scan here to add'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/manual_input');
              },
              child: Text('Manual input'),
            ),
          ],
        ),
      ),
    );
  }
}
