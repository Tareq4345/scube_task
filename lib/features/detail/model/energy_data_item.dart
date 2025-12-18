import 'package:flutter/material.dart';

class EnergyChartModel {
  final String title;
  final double totalKw;
  final List<EnergyDataItem> items;

  EnergyChartModel({
    required this.title,
    required this.totalKw,
    required this.items,
  });
}

class EnergyDataItem {
  final String title;
  final Color color;
  final double data;
  final double percentage;
  final int cost;

  EnergyDataItem({
    required this.title,
    required this.color,
    required this.data,
    required this.percentage,
    required this.cost,
  });
}

final List<EnergyChartModel> energyChartList = [
  EnergyChartModel(
    title: 'Energy Chart',
    totalKw: 20.05,
    items: [
      EnergyDataItem(
        title: 'Data A',
        color: const Color(0xFF0A84FF),
        data: 2798.50,
        percentage: 29.53,
        cost: 35689,
      ),
      EnergyDataItem(
        title: 'Data B',
        color: const Color(0xFF7ED6FF),
        data: 72598.50,
        percentage: 35.39,
        cost: 5259689,
      ),
      EnergyDataItem(
        title: 'Data C',
        color: const Color(0xFF7B61FF),
        data: 6598.36,
        percentage: 83.90,
        cost: 5698756,
      ),
      EnergyDataItem(
        title: 'Data D',
        color: const Color(0xFFFF9500),
        data: 6598.26,
        percentage: 36.59,
        cost: 356987,
      ),
    ],
  ),

  EnergyChartModel(
    title: 'Energy Chart',
    totalKw: 5.53,
    items: [
      EnergyDataItem(
        title: 'Data A',
        color: const Color(0xFF0A84FF),
        data: 2798.50,
        percentage: 29.53,
        cost: 35689,
      ),
      EnergyDataItem(
        title: 'Data B',
        color: const Color(0xFF7ED6FF),
        data: 72598.50,
        percentage: 35.39,
        cost: 5259689,
      ),
      EnergyDataItem(
        title: 'Data C',
        color: const Color(0xFF7B61FF),
        data: 6598.36,
        percentage: 83.90,
        cost: 5698756,
      ),
      EnergyDataItem(
        title: 'Data D',
        color: const Color(0xFFFF9500),
        data: 6598.26,
        percentage: 36.59,
        cost: 356987,
      ),
    ],
  ),
];

final energyChart = EnergyChartModel(
  title: "Energy Chart",
  totalKw: 5.53,
  items: [
    EnergyDataItem(
      title: 'Data A',
      color: const Color(0xFF0A84FF),
      data: 2798.50,
      percentage: 29.53,
      cost: 35689,
    ),
    EnergyDataItem(
      title: 'Data B',
      color: const Color(0xFF7ED6FF),
      data: 72598.50,
      percentage: 35.39,
      cost: 5259689,
    ),
    EnergyDataItem(
      title: 'Data C',
      color: const Color(0xFF7B61FF),
      data: 6598.36,
      percentage: 83.90,
      cost: 5698756,
    ),
    EnergyDataItem(
      title: 'Data D',
      color: const Color(0xFFFF9500),
      data: 6598.26,
      percentage: 36.59,
      cost: 356987,
    ),
  ],
);
