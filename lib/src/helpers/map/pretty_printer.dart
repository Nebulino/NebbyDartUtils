//                                                            //
// NebbyDartUtils - Just some utilities for an easier coding. //
//               Copyright (c) 2020 Nebulino                  //
//                                                            //

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

  /// Directly pretty-prints a Serializable object.
  static void prettyPrint(
    Map<String, dynamic> object, {
    String indent = '  ',
  }) {
    print(prettyfy(
      object,
      indent: indent,
    ));
  }

  /// It returns the pretty-fied String Serializable object/Json.
  /// Used for longer objects.
  static String stringPrettyfy(
    String input, {
    String indent = '',
  }) {
    return JsonEncoder.withIndent(indent).convert(JsonDecoder().convert(input));
  }

  /// Directly pretty-prints a long Serializable object/Json.
  /// Used for longer objects.
  static void stringPrettyPrint(String input, {String indent = '  '}) {
    stringPrettyfy(
      input,
      indent: indent,
    ).split('\n').forEach((element) => print(element));
  }
}
