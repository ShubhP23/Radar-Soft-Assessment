import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray400 = fromHex('#cacaca');

  static Color gray80007 = fromHex('#073e3e3e');

  static Color gray800 = fromHex('#3e3e3e');

  static Color gray4000c = fromHex('#0cafadad');

  static Color gray4003f = fromHex('#3fcacaca');

  static Color bluegray100 = fromHex('#d9d9d9');

  static Color blueA200 = fromHex('#5485e8');

  static Color deepOrange40066 = fromHex('#66ff7750');

  static Color deepOrange40099 = fromHex('#99ff7750');

  static Color gray80099 = fromHex('#993e3e3e');

  static Color gray800Cc = fromHex('#cc3e3e3e');

  static Color gray80066 = fromHex('#663e3e3e');

  static Color gray7000c = fromHex('#0c635757');

  static Color gray300 = fromHex('#dedee0');

  static Color gray50 = fromHex('#fafafa');

  static Color gray100 = fromHex('#f5f5f5');

  static Color deepOrange40019 = fromHex('#19ff7750');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color gray40014 = fromHex('#14afadad');

  static Color gray8003f = fromHex('#3f3e3e3e');

  static Color gray8000c = fromHex('#0c3e3e3e');

  static Color deepOrange400 = fromHex('#ff7750');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
