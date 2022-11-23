// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../custom/payment.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 12,
    );

    const textStyle2 = TextStyle(
      color: Color(0xff585F95),
      fontSize: 20,
    );

    return Scaffold(
      backgroundColor: const Color(0xffF3F8FE),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomCard(textStyle2, textStyle),
            TitleLine(textStyle2),
            const CustomPaymentTile(
              cost: '\$150',
              icon: Icon(Icons.arrow_upward),
              subtitle: 'Sending Payments to Clients',
              title: 'Sent',
            ),
            const CustomPaymentTile(
              cost: '\$150',
              icon: Icon(Icons.arrow_downward),
              subtitle: 'Receiving Salary from Company',
              title: 'Receive',
            ),
            const CustomPaymentTile(
              cost: '\$400',
              icon: Icon(Icons.monetization_on_outlined),
              subtitle: 'Loan for car',
              title: 'Loan',
            ),
          ],
        ),
      ),
    );
  }

  Padding TitleLine(TextStyle textStyle2) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: [
          Text(
            'Overview',
            style: textStyle2.copyWith(
              color: const Color(0xff3D4584),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 10),
          Image.asset(
            'assets/notification.png',
            height: 35,
          ),
          const Spacer(),
          Text(
            'Sept 13,2020',
            style: textStyle2.copyWith(
              color: const Color(0xff3D4584),
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Padding CustomCard(TextStyle textStyle2, TextStyle textStyle) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadowColor: const Color(0xffE5ECF6),
        surfaceTintColor: Colors.white,
        elevation: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/menu.png',
                  height: 20,
                ),
                Image.asset(
                  'assets/dot_menu.png',
                  height: 20,
                ),
              ],
            ),
            Image.asset(
              'assets/image.png',
              height: 100,
            ),
            const SizedBox(height: 5),
            const Text(
              'Hira Riaz',
              style: TextStyle(
                color: Color(0xff555C94),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'UX/UI Designer',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '\$8900',
                        style: textStyle2,
                      ),
                      Text(
                        'Income',
                        style: textStyle,
                      ),
                    ],
                  ),
                  const VerticalDivider(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '\$5500',
                        style: textStyle2,
                      ),
                      Text(
                        'Expenses',
                        style: textStyle,
                      ),
                    ],
                  ),
                  const VerticalDivider(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '\$890',
                        style: textStyle2,
                      ),
                      Text(
                        'Loan',
                        style: textStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
