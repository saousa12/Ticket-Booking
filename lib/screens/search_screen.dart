import 'package:flutter/material.dart';
import 'package:testflutter/utils/app_layout.dart';
import 'package:testflutter/utils/app_styles.dart';
import 'package:testflutter/widgets/double_text_widget.dart';
import 'package:testflutter/widgets/icon_text_widget.dart';
import 'package:testflutter/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(context, 20),
          vertical: AppLayout.getHeight(context, 20),
        ),
        children: [
          Container(
            margin: EdgeInsets.only(top: AppLayout.getHeight(context, 40)),
          ),
          Text(
            "What are\nyou looking for? ",
            style: Styles.headLineStyle.copyWith(fontSize: 35),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
          ),
          AppTicketTabs(
            firstTab: 'Airline Tickets',
            secondTab: 'Hotels',
            onTabChanged: (isFirstTab) {
              print("tab tab");
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 25),
          ),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Container(
            margin: const EdgeInsets.only(top: 20),
          ),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Container(
            margin: const EdgeInsets.only(top: 25),
          ),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              decoration: BoxDecoration(
                  color: const Color(0xD91130CE),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "find tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              )),
          Container(
            margin: const EdgeInsets.only(top: 40),
          ),
          const AppDoubleTextWidget(
              bigText: "Upcoming Flights", smallText: "View all"),
          Container(
            margin: const EdgeInsets.only(top: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(context, 425),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(context, 15),
                    vertical: AppLayout.getWidth(context, 15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(context, 12)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                        height: AppLayout.getHeight(context, 190),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              AppLayout.getHeight(context, 12)),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/sit.jpg")),
                        )),
                    Container(
                      margin: EdgeInsets.only(
                          top: AppLayout.getHeight(context, 12)),
                    ),
                    Text(
                        "20% discount on the early booking of this flight. Don't miss. ",
                        style: Styles.headLineStyle3),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(context, 200),
                        decoration: BoxDecoration(
                            color: const Color(0xFF3AB8B8),
                            borderRadius: BorderRadius.circular(
                                AppLayout.getHeight(context, 18))),
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getHeight(context, 15),
                            vertical: AppLayout.getHeight(context, 15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2
                                  .copyWith(color: Colors.white),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: AppLayout.getHeight(context, 10)),
                            ),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding:
                              EdgeInsets.all(AppLayout.getHeight(context, 30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: const Color(0xFF189999)),
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                  ),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(context, 210),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(context, 15),
                        horizontal: AppLayout.getWidth(context, 15)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(context, 10)),
                        color: const Color(0xFFEC6545)),
                    child: Column(
                      children: [
                        Text(
                          "Take love",
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                        ),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: '😍',
                            style: TextStyle(fontSize: 30),
                          ),
                          TextSpan(
                            text: '🥰',
                            style: TextStyle(fontSize: 46),
                          ),
                          TextSpan(
                            text: '😘',
                            style: TextStyle(fontSize: 30),
                          ),
                        ]))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
