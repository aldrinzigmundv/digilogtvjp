import 'package:flutter/material.dart';

import 'package:digilogtvjp/services/channels.dart';

class FormattingProvider {
  formatIcon(Source source) {
    if (source == Source.iptv) {
      return const Icon(
        Icons.satellite_alt,
        color: Color(0xFFDC143C),
      );
    } else {
      return const Icon(
        Icons.smart_display,
        color: Colors.red,
      );
    }
  }
}
