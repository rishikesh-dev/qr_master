import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrImage extends StatelessWidget {
  const QrImage({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(1, 1),
              spreadRadius: 2,
              blurRadius: 4,
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: QrImageView(data: data, semanticsLabel: data),
      ),
    );
  }
}
