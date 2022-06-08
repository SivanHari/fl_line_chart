import 'package:flutter/material.dart';

import '../linechart.dart';

class LineChartPage extends StatelessWidget {
  const LineChartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        color: Color.fromARGB(255, 161, 187, 209),
        child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Container(
              height: 200,
              width: 300,
              child: LineChartWidgets(3),
            )),
      ),
      Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        color: Color.fromARGB(255, 75, 77, 78),
        child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Container(
              height: 200,
              width: 300,
              child: LineChartWidgets(2),
            )),
      ),
      Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        color: Color.fromARGB(255, 161, 187, 209),
        child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Container(
              height: 200,
              width: 300,
              child: LineChartWidgets(4),
            )),
      ),
      Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        color: Color.fromARGB(255, 161, 187, 209),
        child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Container(
              height: 200,
              width: 300,
              child: LineChartWidgets(1),
            )),
      ),
    ]);
  }
}
