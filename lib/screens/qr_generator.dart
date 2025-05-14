import 'package:flutter/material.dart';
import 'package:qr_generator/screens/qr_image.dart';

class QrGenerator extends StatelessWidget {
  const QrGenerator({super.key});
  @override
  Widget build(BuildContext context) {
    final TextEditingController url = TextEditingController();
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
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: url,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter site url',
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return QrImage(data: url.text);
                    },
                  ),
                );
              },
              style: buttonStyle,
              child: Text('Generate QR'),
            ),
          ],
        ),
      ),
    );
  }
}
