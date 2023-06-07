import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'bar_data_gym.dart';
class MyBarGraph1 extends StatelessWidget {
  final List weeklySummary;
  const MyBarGraph1({Key? key,required this.weeklySummary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   BarData1 myBarData = BarData1(
       sunAmount: weeklySummary[0],
       monAmount: weeklySummary[1],
       friAmount: weeklySummary[2],
       satAmount: weeklySummary[3],
       thurAmount: weeklySummary[4],
       tueAmount: weeklySummary[5],
       wedAmount:weeklySummary[6]);

   myBarData.initializeBarData();

    return BarChart(
      BarChartData(
        maxY: 150,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          show: true,
        topTitles: AxisTitles(sideTitles: SideTitles(
            showTitles: false
        )),
          leftTitles: AxisTitles(sideTitles: SideTitles(
              showTitles: false
          )),
          rightTitles: AxisTitles(sideTitles: SideTitles(
              showTitles: false
          )),
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true,getTitlesWidget: getBottomTiels))
        ),
        barGroups: myBarData.barData.map((data) =>
            BarChartGroupData(
                x: data.x,
              barRods:[
                BarChartRodData(
                    toY: data.y,
                  color: Color.fromARGB(255, 211, 35, 66),
                  width: 10,
                  borderRadius: BorderRadius.circular(20),
                  backDrawRodData: BackgroundBarChartRodData(
                    show: true,
                    toY: 100,
                    color: Colors.black12
                  )
                ),
              ],
            ),
        ).toList()
      ),
    );

  }
}
Widget getBottomTiels(double value, TitleMeta meta){
  const style = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  Widget text;
  switch (value.toInt()){
    case 0:
      text = const Text('21',style: style,);
      break;
    case 1:
      text = const Text('22',style: style,);
      break;
    case 2:
      text = const Text('23',style: style,);
      break;
    case 3:
      text = const Text('24',style: style,);
      break;
    case 4:
      text = const Text('25',style: style,);
      break;
    case 5:
      text = const Text('26',style: style,);
      break;
    case 6:
      text = const Text('27',style: style,);
      break;
    default:
      text = const Text('',style: style,);
      break;
  }
  return SideTitleWidget(child: text,axisSide: meta.axisSide);
}
