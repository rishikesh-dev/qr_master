import 'package:flutter/material.dart';
import 'package:qr_generator/screens/qr_generator.dart';
import 'package:qr_generator/screens/qr_scanner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.all(10),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      side: BorderSide(color: Colors.black, width: 1),
      maximumSize: Size.fromHeight(40),
      fixedSize: Size.fromHeight(40),
      minimumSize: Size.fromHeight(20),
    );
    return Scaffold(
      appBar: AppBar(title: Text('QR Master'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Text('You can generate QR code '),
            Icon(Icons.qr_code, size: 200),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QrScanner()),
                );
              },
              style: buttonStyle,
              child: Text('Scan QR Code'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return QrGenerator();
                    },
                  ),
                );
              },
              style: buttonStyle,
              child: Text('Generate QR Code'),
            ),
          ],
        ),
      ),
    );
  }
}
