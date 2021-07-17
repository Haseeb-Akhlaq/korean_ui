import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:korean_ui/styles/Colors.dart';
import 'package:korean_ui/widgets/Dialog1.dart';

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
              Card(
                child: Container(
                  child: Image.asset(
                    'assets/images/table2.jpg',
                    fit: BoxFit.contain,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Dialog2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.mainPurple,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.lock_outline,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '한국사비법노트',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'RMedium',
                    ),
                  ),
                  SizedBox(height: 0),
                  Text(
                    '전체 회차 해설',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: AppColors.mainPurple,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      '₩4,900원구매하기',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '미리보기 >',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
