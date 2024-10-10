import 'dart:developer';

import 'package:flutter/foundation.dart';

void debugLog(String? text){
  if (kDebugMode) {
    log("##################\n$text\n>>>>>>>>>>>>>>>>>");
  }
}