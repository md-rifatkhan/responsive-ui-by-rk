import 'package:responsive/config/responsive.dart';
import 'package:responsive/data.dart';

import '../export.dart';

class HistoryTable extends StatelessWidget {
  const HistoryTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Responsive.isDesktop(context) ? Axis.vertical : Axis.horizontal,
      child: SizedBox(
        width: Responsive.isDesktop(context) ? double.infinity : SizeConfig.screenWidth,
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: List.generate(transactionHistory.length, (index) =>
              TableRow(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
                    child: CircleAvatar(
                      radius: 17,
                      backgroundImage: NetworkImage(transactionHistory[index]['avatar']!),
                    ),
                  ),
                  PrimaryText(
                    text: transactionHistory[index]['label'],
                    size: 16,
                    color: AppColors.secondary,
                  ),
                  PrimaryText(
                    text: transactionHistory[index]['time'],
                    size: 16,
                    color: AppColors.secondary,
                  ),
                  PrimaryText(
                    text: transactionHistory[index]['amount'],
                    size: 16,
                    color: AppColors.secondary,
                  ),
                  PrimaryText(
                    text: transactionHistory[index]['status'],
                    size: 16,
                    color: AppColors.secondary,
                  ),
                ]
              )
          ),
        ),
      ),
    );
  }
}
