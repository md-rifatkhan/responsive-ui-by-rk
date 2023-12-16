import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config/responsive.dart';
import '../config/size_config.dart';
import '../style/colors.dart';
import 'menu_item_button.dart';


class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        decoration: BoxDecoration(color: AppColors.secondaryBg),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                alignment: Alignment.topCenter,
                width: double.infinity,
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 35,
                  height: 20,
                  child: Responsive.isDesktop(context) ? SvgPicture.asset('assets/mac-action.svg') : SizedBox(),
                ),
              ),
              buildMenuIconButton('assets/home.svg', () {} ),
              buildMenuIconButton('assets/pie-chart.svg', () {} ),
              buildMenuIconButton('assets/clipboard.svg', () {} ),
              buildMenuIconButton('assets/credit-card.svg', () {}),
              buildMenuIconButton('assets/trophy.svg', () {}),
              buildMenuIconButton('assets/invoice.svg', () {}),
            ],
          ),
        ),
      ),
    );
  }
}
