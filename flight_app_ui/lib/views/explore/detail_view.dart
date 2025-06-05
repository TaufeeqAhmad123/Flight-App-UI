import 'package:flight_app_ui/model/model.dart';
import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  final Model model;
  const DetailView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(model.image),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Positioned(
            top:
                450, // You can tweak this value to control how much it overlaps
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
               
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                child: SingleChildScrollView(
                  child: Column(children: [
                    SizedBox(height: 20),
                    Text(model.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(model.description, style: TextStyle(fontSize: 16, color: Colors.grey[700])),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.location_on, size: 30, color: Colors.blue),
                            SizedBox(height: 5),
                            Text('Location', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.calendar_today, size: 30, color: Colors.blue),
                            SizedBox(height: 5),
                            Text('Date', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.attach_money, size: 30, color: Colors.blue),
                            SizedBox(height: 5),
                            Text('Price', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                  ],),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
