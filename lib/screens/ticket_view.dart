import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/utils/app_layout.dart';
import 'package:testflutter/utils/app_styles.dart';
import 'package:testflutter/widgets/column_layout.dart';
import 'package:testflutter/widgets/layout_builder_widget.dart';
import 'package:testflutter/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
        width: size.width * 0.9,
        height: AppLayout.getHeight(
            context, GetPlatform.isAndroid == true ? 168 : 169),
        child: Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // showing the blue part of ticket
              Container(
                decoration: BoxDecoration(
                    color: isColor == null
                        ? const Color(0xFF526799)
                        : Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21),
                    )),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ticket['from']['code'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3,
                        ),
                        Expanded(child: Container()),
                        const ThickContainer(
                          isColor: true,
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              const SizedBox(
                                  height: 24,
                                  child: const AppLayoutBuilderWidget(
                                    sections: 6,
                                  )),
                              Center(
                                child: Transform.rotate(
                                    angle: 1.5,
                                    child: Icon(
                                      Icons.local_airport_rounded,
                                      color: isColor == null
                                          ? Colors.white
                                          : const Color(0xFF8ACCF7),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        const ThickContainer(
                          isColor: true,
                        ),
                        Expanded(child: Container()),
                        Text(ticket['to']['code'],
                            style: isColor == null
                                ? Styles.headLineStyle3.copyWith(
                                    color: Colors.white,
                                  )
                                : Styles.headLineStyle3),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            ticket['from']['name'],
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white, fontSize: 12)
                                : Styles.headLineStyle4.copyWith(fontSize: 12),
                            overflow: TextOverflow.ellipsis, // Handle overflow
                          ),
                        ),
                        Text(
                          ticket['flying_time'],
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                          overflow: TextOverflow.ellipsis, // Handle overflow
                        ),
                        Expanded(
                          child: Text(
                            ticket['to']['name'],
                            textAlign: TextAlign.end,
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white, fontSize: 12)
                                : Styles.headLineStyle4.copyWith(fontSize: 12),
                            overflow: TextOverflow.ellipsis, // Handle overflow
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                color: isColor == null
                    ? Styles.orangeColor
                    : Colors.white, // const Color(0xFFF37867),
                child: Row(
                  children: [
                    const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  (constraints.constrainWidth() / 15).floor(),
                                  (index) => SizedBox(
                                        width: 5,
                                        height: 1,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: isColor == null
                                                    ? Colors.white
                                                    : Colors.grey.shade300)),
                                      )),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              // showing the orange part of ticket
              Container(
                decoration: BoxDecoration(
                    color: isColor == null ? Styles.orangeColor : Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                      bottomRight: Radius.circular(isColor == null ? 21 : 0),
                    )),
                padding: const EdgeInsets.only(
                    left: 16, top: 10, right: 16, bottom: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: ticket['date'],
                          secondText: 'Date',
                          alignment: CrossAxisAlignment.start,
                          isColor: isColor,
                        ),
                        AppColumnLayout(
                          firstText: ticket['departure_time'],
                          secondText: 'Departure time',
                          alignment: CrossAxisAlignment.center,
                          isColor: isColor,
                        ),
                        AppColumnLayout(
                          firstText: ticket['number'].toString(),
                          secondText: 'Number',
                          alignment: CrossAxisAlignment.center,
                          isColor: isColor,
                        ),
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.end,
                        //   children: [
                        //     Text(
                        //       ticket['number'].toString(),
                        //       style: isColor == null
                        //           ? Styles.headLineStyle3
                        //               .copyWith(color: Colors.white)
                        //           : Styles.headLineStyle3,
                        //     ),
                        //     Text(
                        //       'Number',
                        //       style: isColor == null
                        //           ? Styles.headLineStyle4.copyWith(
                        //               color: Colors.white, fontSize: 12)
                        //           : Styles.headLineStyle4
                        //               .copyWith(fontSize: 12),
                        //     ),
                        //   ],
                        // ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
