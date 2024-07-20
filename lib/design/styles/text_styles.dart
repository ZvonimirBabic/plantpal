import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/color_constants.dart';

class PlantPalTextStyles {
  /// Headlines - FontWeight.bold
  static final TextStyle headlineLarge = TextStyle(
      color: PlantPalColors.black,
      fontFamily: GoogleFonts.asap().fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: 26);

  /// Titles - FontWeight.normal
  static final TextStyle titleLarge = TextStyle(
      color: PlantPalColors.black,
      fontFamily: GoogleFonts.asap().fontFamily,
      fontWeight: FontWeight.normal,
      fontSize: 26);
}
