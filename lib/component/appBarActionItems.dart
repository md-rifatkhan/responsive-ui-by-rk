import 'package:flutter/material.dart';

import '../style/colors.dart';
import 'menu_item_button.dart';

class appBarActionItems extends StatelessWidget {
  const appBarActionItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        buildMenuIconButton(
            'assets/calendar.svg',
                () {}
        ),
        const SizedBox(width: 10,),
        buildMenuIconButton(
            'assets/ring.svg',
                () {}
        ),
        const SizedBox(width: 15,),
        Row(
          children: [
            CircleAvatar(
              radius:17,
              backgroundImage: NetworkImage("https://cdn.shopify.com/s/files/1/0045/5104/9304/t/27/assets/AC_ECOM_SITE_2020_REFRESH_1_INDEX_M2_THUMBS-V2-1.jpg?v=8913815134086573859"),
            ),
            Icon(Icons.arrow_drop_down_outlined, color: AppColors.black,)
          ],
        )
      ],
    );
  }
}