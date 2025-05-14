import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class QrScanner extends StatelessWidget {
  const QrScanner({super.key});
  @override
  Widget build(BuildContext context) {
    final MobileScannerController controller = MobileScannerController(
      detectionSpeed: DetectionSpeed.noDuplicates,
      torchEnabled: false,
      autoZoom: true,
    );
    return Scaffold(
      appBar: AppBar(),
      body: MobileScanner(
        controller: controller,
        onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;
          for (final barcode in barcodes) {
            final code = barcode.rawValue;
            if (code != null) {
              final Uri uri = Uri.tryParse(code) ?? Uri();
              if (uri.hasScheme) {
                launchUrl(uri);
              } else {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Scanned : $uri')));
              }
            }
          }
        },
      ),
    );
  }
}
