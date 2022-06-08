import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'constants/constants.dart';
import 'linetitles.dart';

final List<Color> gradientColors = [Colors.amber, Colors.blueAccent];

class LineChartWidgets extends StatelessWidget {
  var value;

  LineChartWidgets(this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineChart(LineChartData(
        maxX: 35,
        maxY: 2,
        minX: 0,
        minY: -2,
        lineTouchData: LineTouchData(
          handleBuiltInTouches: true,
          touchTooltipData: LineTouchTooltipData(
            tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
          ),
        ),

        // rangeAnnotations: HorizontalRangeAnnotation(y1:0.0,y2: 35.0 ),
        titlesData: LineTitles.getTitleData(),
        gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(color: Colors.white30, strokeWidth: 1);
            },
            drawVerticalLine: true,
            getDrawingVerticalLine: (value) {
              return FlLine(color: Colors.white30, strokeWidth: 1);
            }),
        borderData: FlBorderData(
            show: true,
            border: Border.all(color: Colors.amberAccent, width: 1)),
        lineBarsData: lineChartBarDataMy(value)));
  }
}

List<LineChartBarData> lineChartBarDataMy(int value) {
  if (value == 1) {
    List<LineChartBarData> data = [
      LineChartBarData(
          dotData: FlDotData(show: false),
          isCurved: true,
          barWidth: 5,
          color: const Color(0xff27b6fc),
          belowBarData: BarAreaData(
            show: true,
            //  colors:
          ),

          // gradient: LinearGradient(
          //   colors: [
          //     Color.fromARGB(255, 191, 5, 49),
          //     Color.fromARGB(255, 108, 66, 90),
          //   ],
          // ),
          spots: gatherWeightData(input1)),
    ];
    return data;
  } else if (value == 2) {
    List<LineChartBarData> data = [
      LineChartBarData(
          isCurved: true,
          barWidth: 5,
          dotData: FlDotData(show: false),
          // gradient: LinearGradient(
          //   colors: [
          //     Color.fromARGB(255, 191, 5, 49),
          //     Color.fromARGB(255, 108, 66, 90),
          //   ],
          // ),
          belowBarData: BarAreaData(
            show: true,
            //  colors:
          ),
          color: const Color(0xffaa4cfc),
          spots: gatherWeightData(input2)),
    ];

    return data;
  } else if (value == 3) {
    List<LineChartBarData> data = [
      LineChartBarData(
          dotData: FlDotData(show: false),
          color: const Color(0xff4af699),
          isCurved: true,
          barWidth: 5,
          belowBarData: BarAreaData(
            show: true,
            //  colors:
          ),
          // gradient: LinearGradient(
          //   colors: [
          //     Color.fromARGB(255, 238, 3, 58),
          //     Color.fromARGB(255, 2, 228, 130),
          //   ],
          // ),
          spots: gatherWeightData(input3)),
    ];

    return data;
  } else {
    List<LineChartBarData> data = [
      LineChartBarData(
          dotData: FlDotData(show: false),
          color: const Color(0xff4af699),
          isCurved: true,
          barWidth: 5,
          // gradient: LinearGradient(
          //   colors: [
          //     Color.fromARGB(255, 191, 5, 49),
          //     Color.fromARGB(255, 108, 66, 90),
          //   ],
          // ),
          spots: gatherWeightData(input1)),
      LineChartBarData(
          dotData: FlDotData(show: false),
          color: const Color(0xffaa4cfc),
          isCurved: true,
          barWidth: 5,
          // gradient: LinearGradient(
          //   colors: [
          //     Color.fromARGB(255, 191, 5, 49),
          //     Color.fromARGB(255, 108, 66, 90),
          //   ],
          // ),
          spots: gatherWeightData(input2)),
      LineChartBarData(
          dotData: FlDotData(show: false),
          color: const Color(0xff27b6fc),
          isCurved: true,
          barWidth: 5,
          // gradient: LinearGradient(
          //   colors: [
          //     Color.fromARGB(255, 191, 5, 49),
          //     Color.fromARGB(255, 108, 66, 90),
          //   ],
          // ),
          spots: gatherWeightData(input3))
    ];
    return data;
  }
}

// class _LineChart extends StatelessWidget {
//   const _LineChart({required this.isShowingMainData});

//   final bool isShowingMainData;

//   @override
//   Widget build(BuildContext context) {
//     return LineChart(
//       isShowingMainData ? sampleData1 : sampleData2,
//       swapAnimationDuration: const Duration(milliseconds: 1000),
//       swapAnimationCurve: Curves.fastLinearToSlowEaseIn, // Optional
//     );
//   }

//   LineChartData get sampleData1 => LineChartData(
//         lineTouchData: lineTouchData1, //For user interaction
//         gridData: gridData, //
//         titlesData: titlesData1,
//         borderData: borderData,
//         lineBarsData: lineBarsData1,
//         minX: 0,
//         maxX: 40,
//         maxY: 1.5,
//         minY: -1.5,
//       );

//   LineChartData get sampleData2 => LineChartData(
//         lineTouchData: lineTouchData2,
//         gridData: gridData,
//         titlesData: titlesData2,
//         borderData: borderData,
//         lineBarsData: lineBarsData2,
//         minX: 0,
//         maxX: 15,
//         maxY: 32,
//         minY: 0,
//       );

//   LineTouchData get lineTouchData1 => LineTouchData(
//         handleBuiltInTouches: true,
//         touchTooltipData: LineTouchTooltipData(
//           tooltipBgColor: Colors.amberAccent.withOpacity(0.8),
//         ),
//       );

//   FlTitlesData get titlesData1 => FlTitlesData(
//         bottomTitles: AxisTitles(
//           sideTitles: bottomTitles,
//         ),
//         rightTitles: AxisTitles(
//           sideTitles: SideTitles(showTitles: false),
//         ),
//         topTitles: AxisTitles(
//           sideTitles: SideTitles(showTitles: false),
//         ),
//         leftTitles: AxisTitles(
//           sideTitles: leftTitles(),
//         ),
//       );

//   List<LineChartBarData> get lineBarsData1 => [
//         lineChartBarData1_1,
//         lineChartBarData1_2,
//         lineChartBarData1_3,
//       ];

//   LineTouchData get lineTouchData2 => LineTouchData(
//         enabled: true,
//       );

//   FlTitlesData get titlesData2 => FlTitlesData(
//         bottomTitles: AxisTitles(
//           sideTitles: bottomTitles,
//         ),
//         rightTitles: AxisTitles(
//           sideTitles: SideTitles(showTitles: false),
//         ),
//         topTitles: AxisTitles(
//           sideTitles: SideTitles(showTitles: false),
//         ),
//         leftTitles: AxisTitles(
//           sideTitles: leftTitles(),
//         ),
//       );

//   List<LineChartBarData> get lineBarsData2 => [
//         lineChartBarData2_1,
//         lineChartBarData2_2,
//         lineChartBarData2_3,
//       ];

//   Widget leftTitleWidgets(double value, TitleMeta meta) {
//     const style = TextStyle(
//       color: Color(0xff75729e),
//       fontWeight: FontWeight.bold,
//       fontSize: 14,
//     );
//     String text;
//     switch (value.toInt()) {
//       case 1:
//         text = '1m';
//         break;
//       case 2:
//         text = '2m';
//         break;
//       case 3:
//         text = '3m';
//         break;
//       case 4:
//         text = '5m';
//         break;
//       case 5:
//         text = '6m';
//         break;
//       default:
//         return Container();
//     }

//     return Text(text, style: style, textAlign: TextAlign.center);
//   }

//   SideTitles leftTitles() => SideTitles(
//         //getTitlesWidget: leftTitleWidgets,
//         showTitles: true,
//         interval: 1,
//         reservedSize: 40,
//       );

//   Widget bottomTitleWidgets(double value, TitleMeta meta) {
//     const style = TextStyle(
//       color: Color(0xff72719b),
//       fontWeight: FontWeight.bold,
//       fontSize: 16,
//     );
//     Widget text;
//     switch (value.toInt()) {
//       case 0:
//         text = const Text('0', style: style);
//         break;
//       case 5:
//         text = const Text('5', style: style);
//         break;
//       case 10:
//         text = const Text('10', style: style);
//         break;
//       case 15:
//         text = const Text('15', style: style);
//         break;
//       case 20:
//         text = const Text('20', style: style);
//         break;
//       case 25:
//         text = const Text('25', style: style);
//         break;
//       case 30:
//         text = const Text('30', style: style);
//         break;
//       case 35:
//         text = const Text('35', style: style);
//         break;
//       default:
//         text = const Text('');
//         break;
//     }

//     return SideTitleWidget(
//       axisSide: meta.axisSide,
//       space: 10,
//       child: text,
//     );
//   }

//   SideTitles get bottomTitles => SideTitles(
//         showTitles: true,
//         reservedSize: 32,
//         interval: 1,
//         getTitlesWidget: bottomTitleWidgets,
//       );

//   FlGridData get gridData => FlGridData(show: true);

//   FlBorderData get borderData => FlBorderData(
//         show: true,
//         border: const Border(
//           bottom: BorderSide(color: Color(0xff4e4965), width: 4),
//           left: BorderSide(color: Colors.transparent),
//           right: BorderSide(color: Colors.transparent),
//           top: BorderSide(color: Colors.transparent),
//         ),
//       );

//   List<FlSpot> gatherWeightData(var input1) {
//     List<FlSpot> fldata = [];
//     for (int i = 0; i < input1.length; i++) {
//       fldata.add(FlSpot((i * 1.0), input1.elementAt(i).toDouble()));
//     }
//     return fldata;
//   }

//   LineChartBarData get lineChartBarData1_1 => LineChartBarData(
//       isCurved: true,
//       color: const Color(0xff4af699),
//       barWidth: 4,
//       isStrokeCapRound: true,
//       dotData: FlDotData(show: false),
//       belowBarData: BarAreaData(show: false),
//       spots: gatherWeightData(input1));

//   LineChartBarData get lineChartBarData1_2 => LineChartBarData(
//       isCurved: true,
//       color: const Color(0xffaa4cfc),
//       barWidth: 4,
//       isStrokeCapRound: true,
//       dotData: FlDotData(show: false),
//       belowBarData: BarAreaData(
//         show: false,
//         color: const Color(0x00aa4cfc),
//       ),
//       spots: gatherWeightData(input2));

//   LineChartBarData get lineChartBarData1_3 => LineChartBarData(
//       isCurved: true,
//       color: const Color(0xff27b6fc),
//       barWidth: 4,
//       isStrokeCapRound: true,
//       dotData: FlDotData(show: false),
//       belowBarData: BarAreaData(show: false),
//       spots: gatherWeightData(input3)

//       // [
//       //   FlSpot(0, input3.first.toDouble()),
//       //   FlSpot(1, input3.elementAt(1).toDouble()),
//       //   FlSpot(2, input3.elementAt(2).toDouble()),
//       //   FlSpot(3, input3.elementAt(3).toDouble()),
//       //   FlSpot(4, input3.elementAt(4).toDouble()),
//       //   FlSpot(5, input3.elementAt(5).toDouble()),
//       //   FlSpot(6, input3.elementAt(6).toDouble()),
//       //   FlSpot(7, input3.elementAt(7).toDouble()),
//       //   FlSpot(8, input3.elementAt(8).toDouble()),
//       //   // FlSpot(9, input3.elementAt(9).toDouble()),
//       //   // FlSpot(10, input3.elementAt(10).toDouble()),
//       //   // FlSpot(11, input3.elementAt(11).toDouble()),
//       //   // FlSpot(12, input1.elementAt(12).toDouble()),
//       // ],
//       );

//   LineChartBarData get lineChartBarData2_1 => LineChartBarData(
//         isCurved: true,
//         curveSmoothness: 0,
//         color: const Color(0x444af699),
//         barWidth: 4,
//         isStrokeCapRound: true,
//         dotData: FlDotData(show: true),
//         belowBarData: BarAreaData(show: false),
//         spots: [
//           FlSpot(0, input1.first.toDouble()),
//           FlSpot(1, input1.elementAt(1).toDouble()),
//           FlSpot(2, input1.elementAt(2).toDouble()),
//           FlSpot(3, input1.elementAt(3).toDouble()),
//           FlSpot(4, input1.elementAt(4).toDouble()),
//           FlSpot(5, input1.elementAt(5).toDouble()),
//           FlSpot(6, input1.elementAt(6).toDouble()),
//           FlSpot(7, input1.elementAt(7).toDouble()),
//           FlSpot(8, input1.elementAt(8).toDouble()),
//           FlSpot(9, input1.elementAt(9).toDouble()),
//           FlSpot(10, input1.elementAt(10).toDouble()),
//           FlSpot(11, input1.elementAt(11).toDouble()),
//         ],
//       );

//   LineChartBarData get lineChartBarData2_2 => LineChartBarData(
//         isCurved: true,
//         color: const Color(0x99aa4cfc),
//         barWidth: 4,
//         isStrokeCapRound: true,
//         dotData: FlDotData(show: true),
//         belowBarData: BarAreaData(
//           show: true,
//           color: const Color(0x33aa4cfc),
//         ),
//         spots: [
//           FlSpot(0, input1.first.toDouble()),
//           FlSpot(1, input1.elementAt(1).toDouble()),
//           FlSpot(2, input1.elementAt(2).toDouble()),
//           FlSpot(3, input1.elementAt(3).toDouble()),
//           FlSpot(4, input1.elementAt(4).toDouble()),
//           FlSpot(5, input1.elementAt(5).toDouble()),
//           FlSpot(6, input1.elementAt(6).toDouble()),
//           FlSpot(7, input1.elementAt(7).toDouble()),
//           FlSpot(8, input1.elementAt(8).toDouble()),
//           FlSpot(9, input1.elementAt(9).toDouble()),
//           FlSpot(10, input1.elementAt(10).toDouble()),
//           FlSpot(11, input1.elementAt(11).toDouble()),
//         ],
//       );

//   LineChartBarData get lineChartBarData2_3 => LineChartBarData(
//         isCurved: true,
//         curveSmoothness: 0,
//         color: const Color(0x4427b6fc),
//         barWidth: 2,
//         isStrokeCapRound: true,
//         dotData: FlDotData(show: true),
//         belowBarData: BarAreaData(show: false),
//         spots: [
//           FlSpot(0, input1.first.toDouble()),
//           FlSpot(1, input1.elementAt(1).toDouble()),
//           FlSpot(2, input1.elementAt(2).toDouble()),
//           FlSpot(3, input1.elementAt(3).toDouble()),
//           FlSpot(4, input1.elementAt(4).toDouble()),
//           FlSpot(5, input1.elementAt(5).toDouble()),
//           FlSpot(6, input1.elementAt(6).toDouble()),
//           FlSpot(7, input1.elementAt(7).toDouble()),
//           FlSpot(8, input1.elementAt(8).toDouble()),
//           FlSpot(9, input1.elementAt(9).toDouble()),
//           FlSpot(10, input1.elementAt(10).toDouble()),
//           FlSpot(11, input1.elementAt(11).toDouble()),
//         ],
//       );
// }
