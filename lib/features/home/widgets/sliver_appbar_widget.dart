import 'package:flutter/material.dart';

class SliverAppbarWidget extends StatelessWidget {
  const SliverAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Мои финансы', style: TextStyle(color: Colors.white)),
          Text(
            'Январь 2026',
            style: TextStyle(
              fontSize: 15,
              color: const Color.fromARGB(255, 253, 253, 253),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 1, 138, 138),
    );
  }
}
