import 'package:finance/core/widgets/widgets.dart';
import 'package:finance/features/home/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppbarWidget(),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 60.0,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                separatorBuilder: (context, index) => SizedBox(width: 15),
                itemBuilder: (context, index) {
                  return CardWidget(isSelected: true, child: Text('Январь'));
                },
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  isShow == true
                      ? CardWidget(child: TotalCashWidget())
                      : CardWidget(child: Text('Добавить доход..')),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: Colors.green,
        onPressed: () {
          setState(() {
            isShow = !isShow;
          });
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
