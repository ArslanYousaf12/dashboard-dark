import 'package:dashboard_ui_app/src/features/sumary/pie_chart/presentation/pie_chart_screen.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Chart(),
        ],
      ),
    );
  }
}
