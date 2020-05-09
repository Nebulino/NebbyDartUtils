//                                                            //
// NebbyDartUtils - Just some utilities for an easier coding. //
//               Copyright (c) 2020 Nebulino                  //
//                                                            //

import 'dart:convert';

import 'package:nebby_dart_utils/helpers.dart';

// Just some examples
void main() {
  final justAJson = {
    'Hello': 'World!',
  };
  final longJson = {
    'Hello': 'World 1!',
  };

  PrettyPrinter.prettyPrint(justAJson);
  PrettyPrinter.stringPrettyPrint(jsonEncode(longJson));
}
