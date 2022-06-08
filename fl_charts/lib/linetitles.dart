import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
      show: true,
      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      bottomTitles: AxisTitles(
          sideTitles: SideTitles(
        // getTitlesWidget: bottomTitleWidgets,
        interval: 5,
        showTitles: true,
        reservedSize: 35,
      )),
      leftTitles: AxisTitles(
          sideTitles: SideTitles(
              showTitles: true,
              // getTitlesWidget: bottomTitleWidgets,
              interval: 3,
              reservedSize: 35)));
}

Widget leftTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Color(0xff72719b),
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text('0', style: style);
      break;
    case 5:
      text = const Text('5', style: style);
      break;
    case 10:
      text = const Text('10', style: style);
      break;
    case 15:
      text = const Text('15', style: style);
      break;
    case 20:
      text = const Text('20', style: style);
      break;
    case 25:
      text = const Text('25', style: style);
      break;
    case 30:
      text = const Text('30', style: style);
      break;
    case 35:
      text = const Text('35', style: style);
      break;
    default:
      text = const Text('');
      break;
  }

  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 10,
    child: text,
  );
}

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Color(0xff72719b),
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text('0', style: style);
      break;
    case 5:
      text = const Text('5', style: style);
      break;
    case 10:
      text = const Text('10', style: style);
      break;
    case 15:
      text = const Text('15', style: style);
      break;
    case 20:
      text = const Text('20', style: style);
      break;
    case 25:
      text = const Text('25', style: style);
      break;
    case 30:
      text = const Text('30', style: style);
      break;
    case 35:
      text = const Text('35', style: style);
      break;
    default:
      text = const Text('');
      break;
  }

  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 10,
    child: text,
  );
}
