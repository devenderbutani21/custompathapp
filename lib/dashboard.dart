import 'package:flutter/material.dart';

import 'widgets/hero_card.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  PageController pageController = PageController(initialPage: 0);
  int pageChanged = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Top Pokemon of 2020',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: PageView.builder(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            pageChanged = index;
          });
        },
        itemBuilder: (context, index) {
          return HeroCard(index%10);
        },
      ),
    );
  }
}
