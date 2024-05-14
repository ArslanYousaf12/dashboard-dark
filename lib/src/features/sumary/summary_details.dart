import 'package:dashboard_ui_app/src/common_widgets/custom_card.dart';
import 'package:dashboard_ui_app/src/features/sumary/build_details.dart';
import 'package:flutter/material.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomCard(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BuildDetails(keys: 'cal', value: '305'),
        BuildDetails(keys: 'Steps', value: '10982'),
        BuildDetails(keys: 'Distance', value: '7km'),
        BuildDetails(keys: 'sleep', value: '7hr'),
      ],
    ));
  }
}
