/// Text Styles are defined here i.e. Heading Text Style, SubHeading Text Style, etc.

import "font_weight.dart" as weight;
import 'fonts.dart' as fonts;
import 'font_sizes.dart' as fontsize;

import 'package:flutter/material.dart';

// ignore: constant_identifier_names
const TextStyle HEADING_TEXT_STYLE = TextStyle(
  fontFamily: fonts.OPEN_SANS,
  fontWeight: weight.BOLD,
  fontSize: fontsize.HEADING_TEXT_SIZE,
);

// ignore: constant_identifier_names
const TextStyle SUB_HEADING_TEXT_STYLE = TextStyle(
  fontFamily: fonts.OPEN_SANS,
  fontWeight: weight.BOLD,
  fontSize: fontsize.SUB_HEADING_TEXT_SIZE,
);

// ignore: constant_identifier_names
const TextStyle BODY_TEXT_STYLE = TextStyle(
  fontFamily: fonts.OPEN_SANS,
  fontWeight: weight.NORMAL,
  fontSize: fontsize.BODY_TEXT_SIZE,
);

// ignore: constant_identifier_names
const TextStyle BUTTON_TEXT_STYLE = TextStyle(
  fontFamily: fonts.OPEN_SANS,
  fontWeight: weight.BOLD,
  fontSize: fontsize.BUTTON_TEXT_SIZE,
);

// ignore: constant_identifier_names
const TextStyle CAPTION_TEXT_STYLE = TextStyle(
  fontFamily: fonts.OPEN_SANS,
  fontWeight: weight.NORMAL,
  fontSize: fontsize.CAPTION_TEXT_SIZE,
);

// ignore: constant_identifier_names
const TextStyle OVERLINE_TEXT_STYLE = TextStyle(
  fontFamily: fonts.OPEN_SANS,
  fontWeight: weight.NORMAL,
  fontSize: fontsize.OVERLINE_TEXT_SIZE,
);

// ignore: constant_identifier_names
const TextStyle INPUT_TEXT_STYLE = TextStyle(
  fontFamily: fonts.OPEN_SANS,
  fontWeight: weight.NORMAL,
  fontSize: fontsize.INPUT_TEXT_SIZE,
);

// ignore: constant_identifier_names
const TextStyle LABEL_TEXT_STYLE = TextStyle(
  fontFamily: fonts.OPEN_SANS,
  fontWeight: weight.NORMAL,
  fontSize: fontsize.LABEL_TEXT_SIZE,
);

// ignore: constant_identifier_names
const TextStyle TITLE_TEXT_STYLE = TextStyle(
  fontFamily: fonts.OPEN_SANS,
  fontWeight: weight.BOLD,
  fontSize: fontsize.TITLE_TEXT_SIZE,
);

// ignore: constant_identifier_names
const TextStyle SUBTITLE_TEXT_STYLE = TextStyle(
  fontFamily: fonts.OPEN_SANS,
  fontWeight: weight.BOLD,
  fontSize: fontsize.SUBTITLE_TEXT_SIZE,
);




// End of text_styles.dart