import 'package:flutter/material.dart';
import 'package:qr_generator/extensions/build_context.dart';
import 'package:qr_generator/screens/home_screen/widgets/url_code_generator.dart';
import 'package:qr_generator/screens/home_screen/widgets/whatsapp_code_generator.dart';
import 'package:qr_generator/screens/home_screen/widgets/wifi_password_code_generator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _category = 'url';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Generator'),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: SizedBox(
            width: context.screenSize.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Select Category',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  alignment: Alignment.center,
                  width: context.screenSize.width,
                  child: DropdownMenu(
                      onSelected: (value) {
                        setState(() {
                          _category = value!;
                        });
                      },
                      inputDecorationTheme: InputDecorationTheme(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16))),
                      initialSelection: 'url',
                      dropdownMenuEntries: const [
                        DropdownMenuEntry(value: 'url', label: 'Url'),
                        DropdownMenuEntry(value: 'whatsapp', label: 'WhatsApp'),
                        DropdownMenuEntry(
                            value: 'wifi_password', label: 'Wifi Password'),
                      ]),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Divider(),
                const SizedBox(
                  height: 12,
                ),
                QrGenerator(category: _category)
              ],
            ),
          )),
    );
  }
}

class QrGenerator extends StatelessWidget {
  final String category;
  const QrGenerator({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    switch (category) {
      case 'url':
        return const UrlCodeGenerator();
      case 'whatsapp':
        return const WhatsAppCodeGenerator();
      case 'wifi_password':
        return const WifiPasswordCodeGenerator();
      default:
        return const SizedBox.shrink();
    }
  }
}
