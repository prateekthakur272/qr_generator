import 'package:flutter/material.dart';
import 'package:qr_generator/screens/result_screen/result_screen.dart';

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
        OutlinedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultScreen(
                            data: urlController.text.trim(),
                          )));
            },
            child: const Text('Generate QR Code'))
      ],
    );
  }
}
