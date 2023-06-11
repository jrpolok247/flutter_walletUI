import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/util/my_button.dart';
import 'package:walletappui/util/my_card.dart';
import 'package:walletappui/util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // page controller

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style:
                            TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " Cards",
                        style: TextStyle(fontSize: 26),
                      ),
                    ],
                  ),

                  // + button

                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add)),
                ],
              ),
            ),

            SizedBox(
              height: 18,
            ),

            // cards

            Container(
              height: 180,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 5250.20,
                    cardNumber: 12345678,
                    expiryMonth: 10,
                    expiryYear: 26,
                    bgColor: Colors.orangeAccent[400],
                  ),
                  MyCard(
                    balance: 5250.20,
                    cardNumber: 87654321,
                    expiryMonth: 08,
                    expiryYear: 27,
                    bgColor: Colors.deepPurple[400],
                  ),
                  MyCard(
                    balance: 5250.20,
                    cardNumber: 458759875,
                    expiryMonth: 11,
                    expiryYear: 28,
                    bgColor: Colors.blueAccent[400],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 18,
            ),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),
            ),

            SizedBox(
              height: 18,
            ),

            // 3 buttons -> send+ pay+ bills

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // send button

                  MyButton(iconImagePath: 'sendmoney.png', buttonText: 'Send'),

                  // pay button

                  MyButton(iconImagePath: 'creditcard.png', buttonText: 'Pay'),

                  // bills button

                  MyButton(iconImagePath: 'bill.png', buttonText: 'Bills'),
                ],
              ),
            ),

            // collumn -> stats + Transactions

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  MyList(
                      iconImagePath: 'cashflow.png',
                      tileName: 'Statistics',
                      tileSubName: 'Payments and Income'),
                  
                  MyList(
                      iconImagePath: 'analysis.png',
                      tileName: 'Transactions',
                      tileSubName: 'Transactions History'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
