import 'package:flutter/material.dart';

extension Ext on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}
