import 'package:flutter/material.dart';
import 'package:responsive/component/paymentListTile.dart';
import 'package:responsive/data.dart';
import 'package:responsive/style/style.dart';

import '../config/size_config.dart';
import '../style/colors.dart';

class PaymentDetailsList extends StatelessWidget {
  const PaymentDetailsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
          child: const Divider(
            color: Colors.black,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                    color: AppColors.iconGray,
                    blurRadius: 15.0,
                    offset: Offset(10, 15))
              ]),
          child: Image.asset('assets/card.png'),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 10,
          child: const Divider(
            color: Colors.black,
          ),
        ),
        // Card Screen ended

        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: "Recent Activies",
              size: 18,
              fontWeight: FontWeight.w800,
            ),
            PrimaryText(
              text: "02, March 2023",
              size: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            ),
          ],
        ),
        SizedBox(height: SizeConfig.blockSizeVertical! * 2),
        Column(
          children: List.generate(
            recentActivities.length, (index) =>
              paymentListTile(
                  icon: recentActivities[index]["icon"],
                  label: recentActivities[index]["label"],
                  amount: recentActivities[index]["amount"]
              ),
          )
        ),
        SizedBox(height: SizeConfig.blockSizeVertical! * 5),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: "Upcoming Payments",
              size: 18,
              fontWeight: FontWeight.w800,
            ),
            PrimaryText(
              text: "Recent Activies",
              size: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            ),
          ],
        ),
        Column(
            children: List.generate(
              upcomingPayments.length, (index) =>
                paymentListTile(
                    icon: upcomingPayments[index]["icon"],
                    label: upcomingPayments[index]["label"],
                    amount: upcomingPayments[index]["amount"]
                ),
            )
        ),
      ],
    );
  }
}
