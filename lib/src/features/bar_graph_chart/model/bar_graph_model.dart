import 'package:dashboard_ui_app/src/features/bar_graph_chart/model/graph_model.dart';
import 'package:flutter/material.dart';

class BarGraphModel {
  BarGraphModel(
      {required this.label, required this.color, required this.graph});
  final String label;
  final Color color;
  final List<GraphModel> graph;
}
