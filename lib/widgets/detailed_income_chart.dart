import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          value: 40,
          title: activeIndex == 0 ? 'Design service' : '40%',
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          titleStyle: activeIndex == 0
              ? AppStyles.styleBold16.copyWith(color: const Color(0xFF208BC7))
              : AppStyles.styleBold16.copyWith(color: Colors.white),
          color: const Color(0xFF208BC7),
          radius: activeIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          value: 25,
          title: activeIndex == 1 ? 'Design product' : '25%',
          titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
          titleStyle: activeIndex == 1
              ? AppStyles.styleBold16.copyWith(color: const Color(0xFF4DB7F2))
              : AppStyles.styleBold16.copyWith(color: Colors.white),
          color: const Color(0xFF4DB7F2),
          radius: activeIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          value: 20,
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
          titleStyle: activeIndex == 2
              ? AppStyles.styleBold16.copyWith(color: const Color(0xFF064060))
              : AppStyles.styleBold16.copyWith(color: Colors.white),
          color: const Color(0xFF064060),
          radius: activeIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          value: 22,
          title: activeIndex == 3 ? 'Others' : '22%',
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          titleStyle: activeIndex == 3
              ? AppStyles.styleBold16.copyWith(color: const Color(0xFFE2DECD))
              : AppStyles.styleBold16.copyWith(color: Colors.white),
          color: const Color(0xFFE2DECD),
          radius: activeIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
