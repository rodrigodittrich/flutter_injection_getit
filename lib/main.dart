import 'package:flutter/material.dart';
import 'inject.dart';
import 'app.dart';

void main() {
  Inject.init();
  runApp(const App());
}