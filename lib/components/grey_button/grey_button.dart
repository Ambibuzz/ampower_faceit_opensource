///Import Dart Modules
import 'package:attendancemanagement/helpers/colors.dart';
import 'package:flutter/material.dart';

final ButtonStyle raisedGreyButtonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: themeGrey,
  minimumSize: const Size(370, 48),
  // padding: const EdgeInsets.symmetric(horizontal: 10),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);
