import 'package:flutter/material.dart';
import 'package:plugins_objc/src/screens/plugin_ui.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: PluginUI(),
    ));
  }
}
