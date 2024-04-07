import 'package:flutter/material.dart';

class WifiPasswordCodeGenerator extends StatelessWidget {
  const WifiPasswordCodeGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    final ssidController = TextEditingController();
    final passwordController = TextEditingController();
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
              hintText: 'Wifi name', prefixIcon: Icon(Icons.wifi)),
          controller: ssidController,
        ),
        const SizedBox(
          height: 16,
        ),
        TextField(
          decoration: const InputDecoration(
              hintText: 'password', prefixIcon: Icon(Icons.lock)),
          controller: passwordController,
        ),
        const SizedBox(
          height: 16,
        ),
        OutlinedButton(onPressed: () {}, child: const Text('Generate QR Code'))
      ],
    );
  }
}
