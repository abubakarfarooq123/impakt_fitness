import 'individual_bar_gym.dart';

class BarData1{
  final double sunAmount;
  final double monAmount;
  final double tueAmount;
  final double wedAmount;
  final double thurAmount;
  final double friAmount;
  final double satAmount;

  BarData1({
    required this.sunAmount,
    required this.monAmount,
    required this.friAmount,
    required this.satAmount,
    required this.thurAmount,
    required this.tueAmount,
    required this.wedAmount,
  });
List<IndividualBar1> barData =[];

void initializeBarData(){
  barData =[
    IndividualBar1(x: 0, y: sunAmount),
    IndividualBar1(x: 1, y: monAmount),
    IndividualBar1(x: 2, y: tueAmount),
    IndividualBar1(x: 3, y: thurAmount),
    IndividualBar1(x: 4, y: wedAmount),
    IndividualBar1(x: 5, y: friAmount),
    IndividualBar1(x: 6, y: satAmount),

  ];

}
}