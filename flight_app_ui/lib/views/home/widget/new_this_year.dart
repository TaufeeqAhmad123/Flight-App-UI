import 'package:animate_do/animate_do.dart';
import 'package:flight_app_ui/utils/const.dart';
import 'package:flight_app_ui/views/detail/detail_view.dart';
import 'package:flight_app_ui/widgets/navigaion.dart';
import 'package:flutter/material.dart';

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
            child: GestureDetector(
               onTap: () {
                      navigateTo(DetailView(model: data), context);
                    },
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
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 10),
        itemCount: newThisYear.length,
      ),
    );
  }
}

