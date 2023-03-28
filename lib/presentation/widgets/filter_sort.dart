import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class FilterSort extends StatelessWidget {
  const FilterSort({super.key, this.isDark= true});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: isDark ? Colors.black : Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.arrow_upward_rounded,
              color: kmainButtonColor,
            ),
           VerticalDivider(
              color: isDark ? Colors.white : Colors.black,
            ),
            Icon(
              Icons.menu,
              color: kmainButtonColor,
            )
          ],
        ),
      ),
    );
  }
}
