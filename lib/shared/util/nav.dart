import 'package:flutter/material.dart';
import '../../core.dart';

class Nav {
  static to(Widget view) async {
    await Navigator.push(
      globalContext,
      MaterialPageRoute(builder: (context) => view),
    );
  }

  static offAll(Widget view) async {
    Navigator.pushReplacement(
      globalContext,
      MaterialPageRoute(builder: (context) => view),
    );
  }

  static back() async {
    Navigator.pop(globalContext);
  }
}
