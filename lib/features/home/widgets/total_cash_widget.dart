import 'package:finance/core/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class TotalCashWidget extends StatelessWidget {
  const TotalCashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Общий доход',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Text(
                  '140 000',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 1, 158, 6),
                  ),
                ),
              ],
            ),
            Icon(
              Icons.currency_ruble,
              color: const Color.fromARGB(255, 179, 178, 178),
              size: 50,
            ),
          ],
        ),
        // Divider(),
        SizedBox(height: 10),
        SizedBox(
          height: 80,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 5),
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemBuilder: (context, index) => CardWidget(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Зарплата',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '35 000',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
