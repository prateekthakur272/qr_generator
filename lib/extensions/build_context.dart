import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  Size get screenSize => (MediaQuery.of(this).size);
  ThemeData get currentTheme => Theme.of(this);
}
