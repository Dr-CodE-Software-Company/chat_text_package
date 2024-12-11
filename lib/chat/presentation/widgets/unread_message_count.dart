import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class UnreadMessagesCountComponent extends StatelessWidget {
  final Color backgroundColor;
  final int unreadMessagesCount;

  const UnreadMessagesCountComponent(
      {super.key,
      this.backgroundColor = ColorsPackage.primary,
      required this.unreadMessagesCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          unreadMessagesCount.toString(),
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 12,
              color: ColorsPackage.whiteColor,
              fontWeight: FontWeight.bold),
          //textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
