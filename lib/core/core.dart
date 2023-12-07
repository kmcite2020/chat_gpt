import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

extension ObjectExtensions on Object? {
  Widget text({
    double textScaleFactor = 1,
    TextStyle? style,
  }) {
    return Text(
      toString(),
      style: style,
      textScaler: TextScaler.linear(textScaleFactor),
    );
  }
}

extension WidgetExtensions on Widget {
  Widget pad() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: this,
    );
  }
}

String get version => '0.1';
String get userName => 'Adnan Farooq';

String get randomID => Uuid().v4();
