import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  /// Equivalent to `Theme.of(context)`
  ThemeData get theme => Theme.of(this);

  /// Equivalent to `ScaffoldMessenger.of(context)`
  ScaffoldMessengerState get messenger => ScaffoldMessenger.of(this);

  /// Equivalent to `Theme.of(context).textTheme`
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Equivalent to `Theme.of(context).colorScheme`
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  /// Shows a snackbar
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackbar(
    SnackBar snackBar,
  ) =>
      ScaffoldMessenger.of(this).showSnackBar(snackBar);
}
