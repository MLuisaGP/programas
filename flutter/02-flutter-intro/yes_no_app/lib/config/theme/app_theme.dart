import 'package:flutter/material.dart';

const Color _customColor0 = Color(0xFFF4E0B9);
const Color _customColor1 = Color.fromARGB(255, 165, 163, 160);
const Color _customColor2 = Color.fromARGB(255, 112, 109, 104);
const Color _customColor3 = Color(0xFFFE0000);

const List<Color> _colorThemes = [
  _customColor0,
  _customColor1,
  _customColor2,
  _customColor3
];

class AppTheme {
  final int selectColor;

  AppTheme({this.selectColor = 0})
      : assert(selectColor < _colorThemes.length && selectColor >= 0,
            'Colors must be between 0-${_colorThemes.length - 1}');
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, 
        colorSchemeSeed: _colorThemes[selectColor],
        );
  }
}
