import 'package:fl_charts/main.dart';
import 'package:flutter/material.dart';

import 'linechartpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.title),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(8),
          child: PageView(
            children: [LineChartPage()],
          )),
    );
  }
}
