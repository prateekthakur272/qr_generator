import 'package:flutter/material.dart';

class WhatsAppCodeGenerator extends StatelessWidget {
  const WhatsAppCodeGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    final numberController = TextEditingController();
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
              hintText: 'WhatsApp number', prefixIcon: Icon(Icons.phone)),
          controller: numberController,
        ),
        const SizedBox(
          height: 16,
        ),
        OutlinedButton(onPressed: () {}, child: const Text('Generate QR Code'))
      ],
    );
  }
}
