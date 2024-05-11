import 'package:dashboard_ui_app/src/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: kcardBackgroundColor,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 5),
          hintText: 'Search',
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
            size: 21,
          )),
    );
  }
}
