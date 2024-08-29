import 'package:flutter/material.dart';

class AppTicketTabs extends StatefulWidget {
  final String firstTab;
  final String secondTab;
  final Function(bool) onTabChanged; // เพิ่ม callback function

  const AppTicketTabs(
      {super.key,
      required this.firstTab,
      required this.secondTab,
      required this.onTabChanged});

  @override
  _AppTicketTabsState createState() => _AppTicketTabsState();
}

class _AppTicketTabsState extends State<AppTicketTabs> {
  bool isFirstTabSelected = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FittedBox(
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
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFirstTabSelected = true;
                      });
                      widget.onTabChanged(true); // เรียก callback function
                    },
                    child: Container(
                      width: size.width * .44,
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.horizontal(
                            left: Radius.circular(50)),
                        color: isFirstTabSelected
                            ? Colors.white
                            : Colors.transparent,
                      ),
                      child: Center(child: Text(widget.firstTab)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFirstTabSelected = false;
                      });
                      widget.onTabChanged(false); // เรียก callback function
                    },
                    child: Container(
                      width: size.width * .44,
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.horizontal(
                            right: Radius.circular(50)),
                        color: isFirstTabSelected
                            ? Colors.transparent
                            : Colors.white,
                      ),
                      child: Center(child: Text(widget.secondTab)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
