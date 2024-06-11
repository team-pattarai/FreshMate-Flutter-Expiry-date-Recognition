import 'package:flutter/material.dart';

class ManualInputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manual Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Product Name',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Manufacture Date',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Expiry Date',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add item logic
              },
              child: Text('Done'),
            ),
          ],
        ),
      ),
    );
  }
}
