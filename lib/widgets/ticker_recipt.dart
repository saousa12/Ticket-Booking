import 'package:flutter/material.dart';
import 'package:testflutter/screens/ticket_view.dart';
import 'package:testflutter/utils/app_info_list.dart';
import 'package:testflutter/utils/app_layout.dart';
import 'package:testflutter/utils/app_styles.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:testflutter/widgets/column_layout.dart';
import 'package:testflutter/widgets/layout_builder_widget.dart';

class TickerRecipt extends StatelessWidget {
  final int index;
  const TickerRecipt({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
        ),
        Container(
          padding: EdgeInsets.only(left: AppLayout.getHeight(context, 15)),
          child: TicketView(
            ticket: ticketList[index],
            isColor: true,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 1),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          color: Colors.white,
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(
                    firstText: "Flutter DB",
                    secondText: "Passenger",
                    alignment: CrossAxisAlignment.start,
                    isColor: false,
                  ),
                  AppColumnLayout(
                    firstText: "5221 364869",
                    secondText: "passport",
                    alignment: CrossAxisAlignment.end,
                    isColor: false,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
              ),
              const AppLayoutBuilderWidget(
                sections: 15,
                isColor: false,
                width: 5,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(
                    firstText: "333333 12345678",
                    secondText: "Number of E-ticket",
                    alignment: CrossAxisAlignment.start,
                    isColor: false,
                  ),
                  AppColumnLayout(
                    firstText: "B2SG28",
                    secondText: "Booking code",
                    alignment: CrossAxisAlignment.end,
                    isColor: false,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
              ),
              const AppLayoutBuilderWidget(
                sections: 15,
                isColor: false,
                width: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/visa.png",
                            scale: 11,
                          ),
                          Text(
                            " ⁕⁕⁕ 2462",
                            style: Styles.headLineStyle3,
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 5),
                      ),
                      Text(
                        "Payment method",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                  const AppColumnLayout(
                    firstText: "\$249.99",
                    secondText: "Price",
                    alignment: CrossAxisAlignment.end,
                    isColor: false,
                  ),
                ],
              ),
            ],
          ),
        ),
        // bar code
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(AppLayout.getHeight(context, 21)),
                bottomRight: Radius.circular(AppLayout.getHeight(context, 21)),
              )),
          margin: EdgeInsets.only(
              left: AppLayout.getHeight(context, 15),
              right: AppLayout.getHeight(context, 15)),
          padding: EdgeInsets.only(
              top: AppLayout.getHeight(context, 20),
              bottom: AppLayout.getHeight(context, 20)),
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(context, 20)),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(AppLayout.getHeight(context, 15)),
              child: BarcodeWidget(
                barcode: Barcode.code128(),
                data: 'https://github.com/saousa12/Ticket-Booking.git',
                drawText: false,
                color: Styles.textColor,
                width: double.infinity,
                height: 70,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
        ),
        Container(
          padding: EdgeInsets.only(left: AppLayout.getHeight(context, 15)),
          child: TicketView(
            ticket: ticketList[index],
          ),
        ),
      ],
    );
  }
}
