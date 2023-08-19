import 'package:flight_ticket/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF4F6F0),
        borderRadius: BorderRadius.circular(
          AppLayout.getWidth(50),
        ),
      ),
      child: Row(
        children: [
          Container(
            // Airline Tickets
            width: size.width * .44,
            padding: EdgeInsets.all(AppLayout.getHeight(7)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppLayout.getWidth(50)),
                bottomLeft: Radius.circular(AppLayout.getWidth(50)),
              ),
              color: Colors.white,
            ),
            child: Text(
              firstTab,
              textAlign: TextAlign.center,
            ),
          ),
          // Hotels
          Container(
            width: size.width * .44,
            padding: EdgeInsets.all(AppLayout.getHeight(7)),
            child: Text(
              secondTab,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
