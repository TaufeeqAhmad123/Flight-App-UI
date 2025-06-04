import 'package:animate_do/animate_do.dart';
import 'package:flight_app_ui/utils/const.dart';
import 'package:flutter/material.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: SizedBox(
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
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
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
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 20,
                                ),
                                SizedBox(width: 5),
                                Text(data.rating, style: KMediumTextStyle),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10),
                      Text(
                        'Booking Details ${data.name}',
                        style: KMediumTextStyle.copyWith(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      detailRow(
                        title: 'Trevelers',
                        subtitle: '0',
                        detail: 'Person',
                      ),
                      SizedBox(height: 10),
                      detailRow(title: 'Seat', subtitle: 'A1', detail: 'B1'),
                      SizedBox(height: 10),
                      detailRow(
                        title: 'Insurance',
                        subtitle: '',
                        detail: 'Yes',
                        color: const Color.fromARGB(255, 5, 223, 219),
                      ),
                      SizedBox(height: 10),
                      detailRow(
                        title: 'Refundable',
                        subtitle: '',
                        detail: 'NO',
                        color: Colors.red,
                      ),
                      SizedBox(height: 10),
                      detailRow(
                        title: 'Price',
                        subtitle: 'IDR',
                        detail: '1400,00',
                      ),
                      SizedBox(height: 10),
                      detailRow(
                        title: 'Grand Total',
                        subtitle: 'IDR',
                        detail: '2000,00',
                        color: Colors.deepPurple,
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(height: 10),
            itemCount: newThisYear.length,
          ),
        ),
      ),
    );
  }
}

class detailRow extends StatelessWidget {
  final String title, subtitle, detail;
  final Color? color;
  const detailRow({
    super.key,
    required this.title,
    required this.subtitle,
    required this.detail,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.check_circle_outline_outlined, color: Colors.deepPurple),
        SizedBox(width: 5),
        Text(title, style: KMediumTextStyle),
        Spacer(),
        Text(subtitle, style: KMediumTextStyle.copyWith(fontSize: 16)),
        SizedBox(width: 8),
        Text(
          detail,
          style: KMediumTextStyle.copyWith(
            fontSize: 16,
            color: color ?? Colors.black,
          ),
        ),
      ],
    );
  }
}
