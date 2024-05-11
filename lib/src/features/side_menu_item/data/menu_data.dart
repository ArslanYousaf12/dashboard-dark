import 'package:dashboard_ui_app/src/features/side_menu_item/model/menu_model.dart';
import 'package:flutter/material.dart';

class MenuData {
  final menu = <MenuModel>[
    MenuModel(icon: Icons.home, title: 'DashBoard'),
    MenuModel(icon: Icons.person, title: 'Profile'),
    MenuModel(icon: Icons.run_circle, title: 'Exercise'),
    MenuModel(icon: Icons.settings, title: 'setting'),
    MenuModel(icon: Icons.history, title: 'history'),
    MenuModel(icon: Icons.logout, title: 'SignOut'),
  ];
}
