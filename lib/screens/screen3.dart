import 'package:flutter/material.dart';
import 'package:korean_ui/styles/Colors.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          '표 계산',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.mainPurple,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 27,
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/heart.png',
                      color: Colors.white,
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      'assets/images/heart.png',
                      color: Colors.white,
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      'assets/images/heart.png',
                      color: Colors.white,
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      'assets/images/heart.png',
                      color: Colors.white.withOpacity(0.4),
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      'assets/images/heart.png',
                      color: Colors.white.withOpacity(0.4),
                      width: 25,
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
            Table(
              border: TableBorder.all(width: 1),
              children: [
                TableRow(children: [
                  TableCell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('            링'),
                        SizedBox(height: 25),
                        Text('구분         '),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(' 임주의보\n 진안자 수\n      (밍)'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text('구분 폭염\n 진안자 수\n      (밍)'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text('구분 폭염\n    폭염\n      (폭)'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text('구분 폭염\n    폭염'),
                    ),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'A',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '90',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '55',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '90',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '100',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'B',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '20',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '65',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '20',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '10',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'C',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '45',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '55',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '90',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '200',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'D',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '10',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '85',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '20',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '70',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'E',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '10',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '25',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '50',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '10',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'F',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '20',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '65',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '20',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '70',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '전체',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        '(    )',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        '165',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        '150',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        '210',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ]),
              ],
            ),
            Text(
              '00:10',
              style: TextStyle(
                fontSize: 45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
