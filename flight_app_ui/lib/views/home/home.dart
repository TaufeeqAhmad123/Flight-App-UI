import 'package:flight_app_ui/views/home/widget/new_this_year.dart';
import 'package:flight_app_ui/views/home/widget/popular_destination.dart';
import 'package:flight_app_ui/views/home/widget/row_widget.dart';
import 'package:flight_app_ui/views/home/widget/topWidget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              topWidget(),
              SizedBox(height: 20),
              rowWidget(title: 'Top Destinations', subtitle: 'See all'),
              SizedBox(height: 10),
              popularDestination(),
              SizedBox(height: 20),
              rowWidget(title: 'New This Year', subtitle: 'See all'),

              NewThisYearWidget(),
            ],
          ),
        ),
      ),
    );
  }
}


