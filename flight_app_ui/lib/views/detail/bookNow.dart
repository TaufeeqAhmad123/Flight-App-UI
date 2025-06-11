import 'package:flight_app_ui/model/model.dart';
import 'package:flight_app_ui/utils/const.dart';
import 'package:flight_app_ui/views/payNow/payNow.dart';
import 'package:flight_app_ui/widgets/navigaion.dart';
import 'package:flutter/material.dart';

class BootNowView extends StatefulWidget {
   final Model model;
  const BootNowView({super.key,required this.model});

  @override
  State<BootNowView> createState() => _BootNowViewState();
}

class _BootNowViewState extends State<BootNowView> {
  List<String> selectedSeats = [];
  final List<List<String?>> seats = [
    ['A1', 'B1', null, 'C1', 'D1'],
    ['A2', 'B2', null, 'C2', 'D2'],
    ['A3', 'B3', null, 'C3', 'D3'],
    ['A4', 'B4', null, 'C4', 'D4'],
    ['A5', 'B5', null, 'C5', 'D5'],
    ['A6', 'B6', null, 'C6', 'D6'],
    ['A7', 'B7', null, 'C7', 'D7'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 220, 220),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        children: [
          Text('Select Your \nFavorite Seat', style: KLargeTextStyle),
          SizedBox(height: 15),
          selectionrowWidget(),
          SizedBox(height: 30),

          const SizedBox(height: 20),
          _buildSeatGrid(),
          const SizedBox(height: 20),
          // Selected seat display
          seatAndPriceWidget(selectedSeats: selectedSeats),
          const SizedBox(height: 20),
          // Book Now button
          ElevatedButton(
            onPressed: () {
              navigateTo(PayNowView(model: widget.model,), context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: KPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              fixedSize: Size(double.infinity, 50),
              // padding: const EdgeInsets.symmetric(vertical: 15),
            ),
            child: Text(
              'Continue to Checkout',
              textAlign: TextAlign.center,
              style: KMediumTextStyle.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSeatGrid() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
           Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                SizedBox(height: 40),
                Text('A', style: KMediumTextStyle),
                SizedBox(width: 20),
                Text('B', style: KMediumTextStyle),
                SizedBox(width: 40),
                SizedBox(width: 20),
                Text('C', style: KMediumTextStyle),
                SizedBox(width: 20),
                Text('D', style: KMediumTextStyle),
              ],
            ),
          ),
          Column(
            children: seats.asMap().entries.map((rowEntry) {
              int rowIndex = rowEntry.key;
              List<String?> row = rowEntry.value;
          
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: row.asMap().entries.map((entry) {
                  int colIndex = entry.key;
                  String? seat = entry.value;
          
                  if (seat == null) {
                    return Text('${rowIndex + 1}');
                  }
          
                  bool isSelected = selectedSeats.contains(seat);
          
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isSelected) {
                          selectedSeats.remove(seat);
                        } else {
                          selectedSeats.add(seat);
                        }
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: isSelected ? KPrimaryColor : Colors.purple.shade100,
                        border: Border.all(
                          color: KPrimaryColor,
                          width: isSelected ? 3 : 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                         isSelected ? 'You' :"",
                          style: KMediumTextStyle.copyWith(
                            fontSize: 15,
                            color:  Colors.white ,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class seatAndPriceWidget extends StatelessWidget {
  const seatAndPriceWidget({super.key, required this.selectedSeats});

  final List<String> selectedSeats;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text("Your Seats: ", style: KsmallextStyle),
              Spacer(),
              Text(
                "${selectedSeats.join(', ')}",
                style: KMediumTextStyle.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Price: ", style: KsmallextStyle),
              Text(
                "IDR ${selectedSeats.isEmpty ? '700.00' : (selectedSeats.length * 700).toStringAsFixed(2)}",
                style: KMediumTextStyle.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class selectionrowWidget extends StatelessWidget {
  const selectionrowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: index == 1 ? KPrimaryColor : Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: index == 1 ? KPrimaryColor : Colors.grey,
                    width: 3,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Text(
                index == 0
                    ? 'Available'
                    : index == 1
                    ? 'Selected'
                    : 'Unavailable',
                style: KsmallextStyle.copyWith(color: KPrimaryColor),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: 3,
      ),
    );
  }
}
