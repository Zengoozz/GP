import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanQRWidget extends StatefulWidget {
  ScanQRWidget({Key key}) : super(key: key);

  @override
  _ScanQRWidgetState createState() => _ScanQRWidgetState();
}

class _ScanQRWidgetState extends State<ScanQRWidget> {
  String qrCode = 'Unknown';
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('scan now'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$qrCode',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 32),
              FlatButton(
                child: Text('Scan now'),
                onPressed: () => scanQRCode(),
              ),
            ],
          ),
        ),
      );
  Future<void> scanQRCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        false,
        ScanMode.QR,
      );

      if (!mounted) return;

      setState(() {
        this.qrCode = qrCode;
        print(qrCode);
      });
    } on PlatformException {
      qrCode = 'Failed to get platform version.';
    }
  }
}
