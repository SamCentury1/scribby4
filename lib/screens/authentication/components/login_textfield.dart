import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:scribby4/functions/helpers.dart';
import 'package:scribby4/providers/palette_state.dart';
import 'package:scribby4/settings/settings.dart';

class LoginTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final ColorPalette palette;
  const LoginTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.palette,
  });

  @override
  Widget build(BuildContext context) {
    SettingsController settings = Provider.of<SettingsController>(context, listen: false);

    final double scalor = Helpers().getScalor(settings);

    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: TextStyle(color: palette.text1),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16.0 * scalor),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: palette.widget1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: palette.widget1),
        ),
        focusColor: palette.text1,
        fillColor: palette.widget1,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
          color: palette.widget1,
          fontSize: 18 * scalor,
        )
      ),
    );
  }
}