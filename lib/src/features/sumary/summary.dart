import 'package:dashboard_ui_app/src/features/sumary/pie_chart/presentation/pie_chart_screen.dart';
import 'package:dashboard_ui_app/src/features/sumary/schedule/presentation/schedule.dart';
import 'package:dashboard_ui_app/src/features/sumary/summary_details.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kDefaultIconDarkColor,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Chart(),
          Text(
            'Summary',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SummaryDetails(),
          ),
          SizedBox(
            height: 40,
          ),
          Scheduled(),
        ],
      ),
    );
  }
}
