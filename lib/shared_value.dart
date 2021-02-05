import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

mixin textStyle {
  static final TextStyle primaryText =
      GoogleFonts.poppins(fontSize: 12, color: color.primaryText);
  static final TextStyle textField =
      GoogleFonts.poppins(fontSize: 12, color: color.grey);
}

mixin color {
  static Color grey = Vx.hexToColor('#959595');
  static Color background = Vx.hexToColor('#FAFAFC');
  static Color lightGrey = Vx.hexToColor('#EFEFEF');
  static Color primary = Vx.hexToColor('#4CBC6B');
  static Color primaryText = Vx.hexToColor('#1D2645');
}
