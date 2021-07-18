import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:korean_ui/screens/screen9.dart';
import 'package:korean_ui/styles/Colors.dart';
import 'package:korean_ui/widgets/Dialog1.dart';
import 'package:korean_ui/widgets/Dialog2.dart';

class Screen7 extends StatelessWidget {
  const Screen7({Key? key}) : super(key: key);

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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '01:12',
                    style: TextStyle(fontSize: 25, fontFamily: 'RMedium'),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Image.asset('assets/images/star.png'),
                  ),
                ],
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Screen9()));
                },
                child: Card(
                  child: Container(
                    child: Image.asset(
                      'assets/images/table2.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                            barrierColor: Colors.black.withOpacity(0.7),
                            context: context,
                            builder: (context) {
                              return Dialog1();
                            });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: AppColors.mainPurple,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          '정답확인',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                            barrierColor: Colors.black.withOpacity(0.7),
                            context: context,
                            builder: (context) {
                              return Dialog2();
                            });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Color(0xff513180),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          '해설보기',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
