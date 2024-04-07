import 'package:flutter/material.dart';
import 'package:qr_generator/screens/result_screen/result_screen.dart';

class WhatsAppCodeGenerator extends StatelessWidget {
  const WhatsAppCodeGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    final numberController = TextEditingController();
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(
              hintText: 'WhatsApp number', prefixIcon: Icon(Icons.phone)),
          controller: numberController,
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
                            data:
                                'https://wa.me/91${numberController.text.trim()}',
                          )));
            },
            child: const Text('Generate QR Code'))
      ],
    );
  }
}
