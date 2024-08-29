import 'package:flutter/material.dart';
// import 'package:testflutter/screens/ticket_view.dart';
// import 'package:testflutter/utils/app_info_list.dart';
import 'package:testflutter/utils/app_layout.dart';
import 'package:testflutter/utils/app_styles.dart';
// import 'package:testflutter/widgets/column_layout.dart';
// import 'package:testflutter/widgets/layout_builder_widget.dart';
import 'package:testflutter/widgets/ticker_recipt.dart';
import 'package:testflutter/widgets/ticket_tabs.dart';
// import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  _TicketScreenState createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  bool isUpcomingSelected = true;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(context, 20),
                vertical: AppLayout.getWidth(context, 20)),
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40),
              ),
              Text(
                "Tickets",
                style: Styles.headLineStyle,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
              ),
              Column(
                children: [
                  AppTicketTabs(
                    firstTab: "Upcoming",
                    secondTab: "Previous",
                    onTabChanged: (isFirstTab) {
                      setState(() {
                        isUpcomingSelected = isFirstTab;
                      });
                    },
                  ),
                  isUpcomingSelected
                      ? const TickerRecipt(
                          index: 0,
                        )
                      : const TickerRecipt(
                          index: 1,
                        ), // เปลี่ยน AnotherWidget() เป็น widget ที่ต้องการแสดงเมื่อกด "Previous"
                ],
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(context, 22),
            top: AppLayout.getHeight(context, 295),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(context, 22),
            top: AppLayout.getHeight(context, 295),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
