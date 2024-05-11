import 'package:dashboard_ui_app/src/features/activity_details/model/health.dart';
import 'package:flutter/material.dart';

class HealthDetails {
  final healthData = <HealthModel>[
    HealthModel(
      icon: 'assets/icons/burn.png',
      value: '305',
      title: 'Calories burn',
    ),
    HealthModel(
      icon: 'assets/icons/steps.png',
      value: '10,331',
      title: 'steps ',
    ),
    HealthModel(
        icon: 'assets/icons/distance.png', value: '7km', title: 'Distance'),
    HealthModel(
      icon: 'assets/icons/sleep.png',
      value: '7h48m',
      title: 'sleep',
    ),
  ];
}
