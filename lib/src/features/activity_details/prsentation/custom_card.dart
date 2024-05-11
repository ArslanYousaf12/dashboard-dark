import 'package:dashboard_ui_app/src/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, this.padding, this.color, required this.child});
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        color: color ?? kcardBackgroundColor,
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(12),
        child: child,
      ),
    );
  }
}
