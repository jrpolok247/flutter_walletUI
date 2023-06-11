import 'package:flutter/material.dart';

class MyCard extends StatelessWidget{

  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final  bgColor;

  const MyCard ({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.bgColor,

  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 320,
        padding: EdgeInsets.all(20),

        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 15),
                Image.asset('lib/icons/visa.png', height: 50,)
              ],
            ),
            Text('Balance',
              style: TextStyle(color: Colors.white,
              ),
            ),
            SizedBox(height: 8,),
            Text('\$ '+ balance.toString(),
                style: TextStyle(color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // card number
                Text(cardNumber.toString(),
                  style: TextStyle(color: Colors.white,
                  ),
                ),
                // expiry date
                Text(expiryMonth.toString()+'/'+expiryYear.toString(),style: TextStyle(color: Colors.white,
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


}