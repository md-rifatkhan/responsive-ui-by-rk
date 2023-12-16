import 'package:responsive/config/responsive.dart';

import '../export.dart';

class BoxInfoHeader extends StatelessWidget {
  final String icon;
  final String label;
  final String amount;

  const BoxInfoHeader({
    super.key,
    required this.icon,
    required this.label,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(minWidth: Responsive.isDesktop(context) ? 200 : 160),
      padding: EdgeInsets.only(
          left: 20,
          top: 20,
          bottom: 20,
          right: Responsive.isDesktop(context) ? 40 : 20),
      // padding for element in container
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: AppColors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            icon,
            width: 35,
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 2,
          ),
          PrimaryText(
            text: label,
            color: AppColors.secondary,
            size: 16,
          ),
          PrimaryText(
            text: amount,
            fontWeight: FontWeight.w700,
            color: AppColors.black,
            size: 18,
          )
        ],
      ),
    );
  }
}
