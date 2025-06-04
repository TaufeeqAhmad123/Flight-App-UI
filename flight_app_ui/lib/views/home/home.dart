import 'package:animate_do/animate_do.dart';
import 'package:flight_app_ui/utils/const.dart';
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

class rowWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const rowWidget({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FadeInLeft(child: Text(title, style: KLargeTextStyle)),
        Spacer(),
        FadeInRight(
          child: Text(
            subtitle,
            style: KMediumTextStyle.copyWith(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}

class NewThisYearWidget extends StatelessWidget {
  const NewThisYearWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          var data = newThisYear[index];
          return FadeInDown(
            duration: Duration(milliseconds: 500),
            delay: Duration(milliseconds: index * 100),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(data.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Text(data.name, style: KLargeTextStyle),
                      SizedBox(height: 5),
                      Text(data.description, style: KsmallextStyle),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 20),
                        SizedBox(width: 5),
                        Text(data.rating, style: KMediumTextStyle),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 10),
        itemCount: newThisYear.length,
      ),
    );
  }
}

class popularDestination extends StatelessWidget {
  const popularDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: topDestinations.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var data = topDestinations[index];
          return FadeInRight(
            delay: Duration(milliseconds: index * 100),
            duration: Duration(milliseconds: 500),
            child: Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 170,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(data.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,

                      children: [
                        Container(
                          height: 30,
                          width: 70,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.orange, size: 20),
                              SizedBox(width: 5),
                              Text('4.5', style: KMediumTextStyle),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(data.name, style: KLargeTextStyle),
                  SizedBox(height: 5),
                  Text(data.description, style: KsmallextStyle),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
