import 'package:animate_do/animate_do.dart';
import 'package:flight_app_ui/model/model.dart';
import 'package:flight_app_ui/utils/const.dart';
import 'package:flight_app_ui/views/explore/explore.dart';
import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class PayNowView extends StatelessWidget {
  final Model model;
  const PayNowView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 220, 220),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            flightRoot(),
            flightDetail(),
            SizedBox(height: 25),
            FadeInDown(
              duration: Duration(milliseconds: 500),
              delay: Duration(milliseconds: 2 * 100),
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                                image: AssetImage(model.image),
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
                              Text(model.name, style: KLargeTextStyle),
                              SizedBox(height: 5),
                              Text(model.description, style: KsmallextStyle),
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
                                Text(model.rating, style: KMediumTextStyle),
                              ],
                            ),
                          ),
                        ],
                      ),
                  
                      SizedBox(height: 10),
                      Text(
                        'Booking Details ${model.name}',
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
              ),
            ),
            SizedBox(height: 20),
            FadeInDown(
              duration: Duration(milliseconds: 500),
              delay: Duration(milliseconds: 3 * 100),
              child: Container(
                height: 140,
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                 
                  children: [
                    Text('Payment Detail', style: KLargeTextStyle),
                    SizedBox(height: 10),
                    ListTile(
                      leading: Container(
                        height: 100,width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: KPrimaryColor
                         
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/icon/plan3.png', height: 30, width: 30, fit: BoxFit.cover,color: Colors.white,),
                            SizedBox(width: 10),
                            Text('Pay', style: KLargeTextStyle.copyWith(color: Colors.white)),
                          ],
                        ),
                        
                      ),
                      title: Text('IDR 2400,00', style: KLargeTextStyle),
                      subtitle: Text('Visa, Mastercard, etc', style: KMediumTextStyle.copyWith(
                        color: Colors.grey.shade700,
                        fontSize: 17,
                      )),
                    )
                  ],
                )
              ),
            ),
            SizedBox(height: 20),
             ElevatedButton(
            onPressed: () {
             
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: KPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              fixedSize: Size(350, 50),
              // padding: const EdgeInsets.symmetric(vertical: 15),
            ),
            child: Text(
              'Pay Now',
              textAlign: TextAlign.center,
              style: KMediumTextStyle.copyWith(color: Colors.white),
            ),
          ),
          ],
        ),
      ),
    );
  }
}

class flightDetail extends StatelessWidget {
  const flightDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(
                'assets/icon/pin.png',
                height: 35,
                width: 35,
                fit: BoxFit.cover,
              ),
              Text('CGK', style: KLargeTextStyle),
              Text('Jakarta', style: KsmallextStyle),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Image.asset(
                'assets/icon/pin.png',
                height: 35,
                width: 35,
                fit: BoxFit.cover,
                color: KPrimaryColor,
              ),
              Text('TLC', style: KLargeTextStyle),
              Text('Japan', style: KsmallextStyle),
            ],
          ),
        ],
      ),
    );
  }
}

class flightRoot extends StatelessWidget {
  const flightRoot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 100,
          width: 350,
          child: CustomPaint(painter: curvedPainter()),
        ),
        Positioned(
          top: 40,
          left: 100,
          child: Image.asset(
            'assets/icon/plan2.png',
            height: 35,
            width: 35,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

class curvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    // Create a path that defines the curved shape
    double h = size.height;
    double w = size.width;

    var startPoint = Offset(30, h);
    var controlPoint1 = Offset(w / 4, h / 4); // Gentle curve
    var controlPoint2 = Offset(w * 3 / 4, h / 4);

    var endPoint = Offset(w - 30, h);

    final path = Path();
    path.moveTo(startPoint.dx, startPoint.dy);
    path.cubicTo(
      controlPoint1.dx,
      controlPoint1.dy,
      controlPoint2.dx,
      controlPoint2.dy,
      endPoint.dx,
      endPoint.dy,
    );
    var carvePath = dashPath(
      path,
      dashArray: CircularIntervalList<double>([5, 5]),
    );
    canvas.drawPath(carvePath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
