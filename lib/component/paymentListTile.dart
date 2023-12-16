import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive/config/size_config.dart';

import '../style/colors.dart';
import '../style/style.dart';

class paymentListTile extends StatelessWidget {
  final String? icon;
  final String? label;
  final String? amount;
  const paymentListTile({
    super.key, required this.icon, required this.label, required this.amount,
  });

  Widget amountSize() {
    if (amount!.length > 4) {
      return PrimaryText(
        text: amount!,
        size: 15,
        color: AppColors.black,
        fontWeight: FontWeight.w600,
      );
    } else {
      return PrimaryText(
        text: amount!,
        size: 16,
        color: AppColors.black,
        fontWeight: FontWeight.w600,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 0, right: 20),
      visualDensity: VisualDensity.standard,
      leading: Container(
        width: 50,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        child: SvgPicture.asset(icon!, width: 20,),
      ),
      title: PrimaryText(text: label!, size: 14, fontWeight: FontWeight.w500,),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryText(text: "Successfully Billed", size: 12, color: AppColors.secondary),
          amountSize()
        ],
      ),

    );
  }
}