import 'package:flutter/material.dart';
import 'package:testflutter/utils/app_layout.dart';
import 'package:testflutter/utils/app_styles.dart';
import 'package:testflutter/widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
          ),
          Text(
            "What are\nyou looking for? ",
            style: Styles.headLineStyle.copyWith(fontSize: 35),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
          ),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xFFF4F6FD),
                    ),
                    padding: const EdgeInsets.all(3.5),
                    child: Row(
                      children: [
                        // airline ticker
                        Container(
                          width: size.width * .44,
                          padding: const EdgeInsets.symmetric(vertical: 7),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(50)),
                            color: Colors.white,
                          ),
                          child: const Center(child: Text('Airline Tickets')),
                        ),
                        //hotel
                        Container(
                          width: size.width * .44,
                          padding: const EdgeInsets.symmetric(vertical: 7),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(50)),
                            color: Colors.transparent,
                          ),
                          child: const Center(
                            child: Text('Hotels'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
                  color: Color(0xD91130CE),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "find tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              )),
        ],
      ),
    );
  }
}
