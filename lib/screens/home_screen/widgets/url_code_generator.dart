import 'package:flutter/material.dart';

class UrlCodeGenerator extends StatelessWidget {
  const UrlCodeGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    final urlController = TextEditingController();
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
              hintText: 'Url', prefixIcon: Icon(Icons.link)),
          controller: urlController,
        ),
        const SizedBox(
          height: 16,
        ),
        OutlinedButton(onPressed: () {}, child: const Text('Generate QR Code'))
      ],
    );
  }
}
