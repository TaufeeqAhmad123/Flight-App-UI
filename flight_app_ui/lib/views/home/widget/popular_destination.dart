import 'package:animate_do/animate_do.dart';
import 'package:flight_app_ui/utils/const.dart';
import 'package:flight_app_ui/views/detail/detail_view.dart';
import 'package:flight_app_ui/widgets/navigaion.dart';
import 'package:flutter/material.dart';

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
                  GestureDetector(
                    onTap: () {
                      navigateTo(DetailView(model: data), context);
                    },
                    child: Hero(
                      tag: data.image,
                      child: Container(
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
