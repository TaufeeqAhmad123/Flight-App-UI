import 'package:animate_do/animate_do.dart';
import 'package:flight_app_ui/model/model.dart';
import 'package:flight_app_ui/utils/const.dart';
import 'package:flight_app_ui/views/detail/bookNow.dart';
import 'package:flight_app_ui/widgets/navigaion.dart';
import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  final Model model;
  const DetailView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Hero(
            tag: model.image,
            child: Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(model.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top:250,
            left: 0,  
            right: 0,
            
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.5),
                  ],

                ),
              ),
            ),
          ),
          Positioned(
            top: 330,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    model.name,
                    style: KLargeTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        model.description,
                        style: KsmallextStyle.copyWith(color: Colors.white),
                      ),
                      SizedBox(width: 255),
                      Icon(Icons.star, color: Colors.yellow),
                      Text(
                        model.rating.toString(),
                        style: KsmallextStyle.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Positioned(
              bottom: 0,

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                  height: 500,

                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //  SizedBox(height: 20),
                          FadeInDown(
                            delay: Duration(milliseconds: 300),
                            duration: Duration(milliseconds: 500),
                            child: Text(
                              "About",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          FadeIn(
                            delay: Duration(milliseconds: 600),
                            child: Text(
                              'lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                              'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqu',
                              style: KMediumTextStyle.copyWith(fontSize: 18),
                            ),
                          ),

                          SizedBox(height: 10),
                          FadeInLeft(
                            delay: Duration(milliseconds: 300),
                            child: Text(
                              "Photos",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 60,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return FadeInRight(
                                  delay: Duration(milliseconds: 300 + index * 200),
                                  duration: Duration(milliseconds: 500),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          newThisYear[index].image,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  SizedBox(width: 10),
                              itemCount: 3,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Benefits",
                            style: KLargeTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              benefitsWidget('Kids park'),
                              SizedBox(width: 77),
                              benefitsWidget('Free Wifi'),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              benefitsWidget('Honer Bridge'),
                              SizedBox(width: 45),
                              benefitsWidget('Free Parking'),
                            ],
                          ),
                          SizedBox(height: 10),
                          ListTile(
                            contentPadding: EdgeInsets.all(0),
                            title: FadeInLeft(
                              delay: Duration(milliseconds: 300),
                              duration: Duration(milliseconds: 500),
                              child: Text(
                                "IDR : 7000,000",
                                style: KLargeTextStyle,
                              ),
                            ),
                            subtitle: FadeInLeft(
                              delay: Duration(milliseconds: 300),
                              duration: Duration(milliseconds: 500),
                              child: Text(
                                "per person",
                                style: KMediumTextStyle.copyWith(fontSize: 18),
                              ),
                            ),
                            trailing: FadeInRight(
                              delay: Duration(milliseconds: 300), 
                              duration: Duration(milliseconds: 500),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: KPrimaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  navigateTo(BootNowView(), context);
                                },
                                child: Text(
                                  'Book Now',
                                  style: KMediumTextStyle.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget benefitsWidget(final String name) {
    return 
        FadeIn(
          delay: Duration(milliseconds: 600),
          duration: Duration(milliseconds: 500),
          child: Row(
            children: [
              Icon(Icons.check_circle, color: KPrimaryColor),
              SizedBox(width: 10),
              Text(name, style: KMediumTextStyle.copyWith(fontSize: 18)),
            ],
          ),
        );
      
    
  }
}
