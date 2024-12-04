import 'package:flutter/material.dart';
import 'package:tmdb_tiketux/app.dart';
import 'package:tmdb_tiketux/core/core/bindings/global_bindings.dart';

void main() {
  GlobalBindings().dependencies();
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Material(
      child: Container(
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              details.exception.toString(),
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  };

  runApp(const App());
}