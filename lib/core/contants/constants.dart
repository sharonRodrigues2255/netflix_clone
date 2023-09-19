import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';

const kwidth = SizedBox(
  width: 10,
);
const kheight = SizedBox(
  height: 10,
);

// font settings
const large = 30.0;
const small = 15.0;
const medium = 20.0;
const boldfont = FontWeight.w900;
const mediumfont = FontWeight.w600;
const regularfont = FontWeight.w200;

myfont({size = 20.0, weight = boldfont, color = kwhite}) {
  return TextStyle(
    fontFamily: GoogleFonts.hahmlet().fontFamily,
    fontSize: size,
    fontWeight: weight,
    color: color,
  );
}

// radius

BorderRadius kradius = BorderRadius.circular(10);
