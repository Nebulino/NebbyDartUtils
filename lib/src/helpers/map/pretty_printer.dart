/**
 * NebbyDartUtils- Just some utilities for an easier coding.
 * Copyright (c) 2020 Nebulino
 */

part of map_helpers;

/// This helps pretty-fy a Serializable object.
class PrettyPrinter {
  /// It returns the pretty-fied serializable object.
  static String prettyfy(
    Map<String, dynamic> object, {
    String indent = '  ',
  }) {
    return JsonEncoder.withIndent(indent).convert(object);
  }

  /// Directly prints a Serializable object.
  static void prettyPrint(
    Map<String, dynamic> object, {
    String indent = '  ',
  }) {
    print(prettyfy(
      object,
      indent: indent,
    ));
  }
}
