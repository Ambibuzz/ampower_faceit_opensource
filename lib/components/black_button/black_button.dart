///Import Dart Modules
import 'package:attendancemanagement/helpers/colors.dart';
import 'package:flutter/material.dart';

final ButtonStyle raisedBlackButtonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: themeBlack,
  minimumSize: const Size(370, 58),
  // padding: const EdgeInsets.symmetric(horizontal: 10),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
);
