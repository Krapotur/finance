import 'package:flutter/material.dart';

class TotalCashWidget extends StatelessWidget {
  const TotalCashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Общий доход', style: TextStyle(fontSize: 17)),
                Text(
                  '65 000',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 1, 158, 6),
                  ),
                ),
              ],
            ),
            SizedBox(width: 30),
            Icon(Icons.currency_ruble, color: const Color.fromARGB(255, 179, 178, 178), size: 50),
          ],
        ),
        SizedBox(width: 180, child: Divider()),
        GestureDetector(
          child: Text('подробнее', style: TextStyle(fontSize: 12)),
        ),
      ],
    );
  }
}
