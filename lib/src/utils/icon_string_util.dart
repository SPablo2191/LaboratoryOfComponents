import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'folder_open': Icons.folder_open,
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
};
Icon getIcon(String iconName) {
  return Icon(_icons[iconName], color: Colors.blue,);
}