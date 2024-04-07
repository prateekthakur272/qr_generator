import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_generator/extensions/build_context.dart';

class ResultScreen extends StatelessWidget {
  final String data;
  const ResultScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: Center(
        child: QrImageView(
          data: data,
          version: QrVersions.auto,
          eyeStyle: QrEyeStyle(color: context.currentTheme.primaryColor),
        ),
      ),
    );
  }
}
