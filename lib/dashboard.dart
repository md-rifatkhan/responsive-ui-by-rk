import 'package:responsive/component/barChartComponent.dart';
import 'package:responsive/component/boxInfoHeader.dart';
import 'package:responsive/component/historyTable.dart';
import 'package:responsive/component/side_bar.dart';
import 'package:responsive/config/responsive.dart';
import 'package:responsive/export.dart';

import 'component/appBarActionItems.dart';
import 'component/header.dart';
import 'component/paymentDetailsList.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
    SizeConfig().init(context);
    return Scaffold(
        key: _drawerkey,
        drawer: SizedBox(width: 100, child: SideMenu(),),
        appBar: !Responsive.isDesktop(context) ? AppBar(
          elevation: 0,
          backgroundColor: AppColors.white,
          leading: IconButton(
            onPressed: () {
              _drawerkey.currentState?.openDrawer();
            },
            icon: Icon(Icons.menu, color: AppColors.black,),
          ),
          actions: [appBarActionItems()],
        ): const PreferredSize(preferredSize: Size.zero, child: SizedBox()),
        body: SafeArea(
            child: Row( // Row for whole screen and divided by expanded
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(Responsive.isDesktop(context))
                Expanded(flex: 1, child: SideMenu()), // Left menu bar
                Expanded(
                    flex: 10,
                    child: SafeArea(
                      child: SingleChildScrollView(
                        padding:
                        EdgeInsets.symmetric(
                            horizontal:  Responsive.isDesktop(context) ? 60 :30, vertical: 60),
                        // Padding that making center
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Header(),
                            SizedBox(
                              height: SizeConfig.blockSizeVertical! * 4,
                            ),
                            SizedBox(
                              width: SizeConfig.screenWidth,
                              child: const Wrap(
                                runSpacing: 20,
                                spacing: 0,
                                alignment: WrapAlignment.spaceBetween,
                                children: [
                                  BoxInfoHeader(
                                      icon: "assets/credit-card.svg",
                                      label: "Transfer Via \nCard Number",
                                      amount: "\$1200"),
                                  BoxInfoHeader(
                                      icon: "assets/bank.svg",
                                      label: "Transfer via \nBank",
                                      amount: "\$125"),
                                  BoxInfoHeader(
                                      icon: "assets/transfer.svg",
                                      label: "Transfer to \nOther bank",
                                      amount: "\$1200"),
                                  BoxInfoHeader(
                                      icon: "assets/invoice.svg",
                                      label: "Transfer via \nPaypal",
                                      amount: "\$359"),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.blockSizeVertical! * 4,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    PrimaryText(
                                      text: "Balance ",
                                      size: 16,
                                      fontWeight: FontWeight.w800,
                                      color: AppColors.secondary,
                                    ),
                                    PrimaryText(
                                      text: "\$1500",
                                      size: 30,
                                      fontWeight: FontWeight.w800,
                                      color: AppColors.black,
                                    )
                                  ],
                                ),
                                PrimaryText(
                                  text: "Past 30 Day",
                                  size: 16,
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.secondary,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: SizeConfig.blockSizeVertical! * 3,
                            ),
                            Container(
                              height: 100,
                              child: BarChartCopmponent(),
                            ),
                            SizedBox(
                              height: SizeConfig.blockSizeVertical! * 5,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PrimaryText(
                                  text: "History",
                                  size: 30,
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.black,
                                ),
                                PrimaryText(
                                  text: "Transaction of last 6 month",
                                  size: 16,
                                  color: AppColors.secondary,
                                )
                              ],
                            ),
                            SizedBox(
                              height: SizeConfig.blockSizeVertical! * 3,
                            ),
                            HistoryTable()
                          ],
                        ),
                      ),
                    )),
                if(Responsive.isDesktop(context))
                Expanded(
                  flex: 4,
                  child: SafeArea(
                    child: Container(
                      width: double.infinity,
                      height: SizeConfig.screenHeight,
                      color: AppColors.secondaryBg,
                      child: const SingleChildScrollView(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30, vertical: 30),
                        child: Column(
                          children: [appBarActionItems(), PaymentDetailsList()],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}
