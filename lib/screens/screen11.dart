import 'package:flutter/material.dart';
import 'package:korean_ui/screens/screen12.dart';
import 'package:korean_ui/styles/Colors.dart';

class Screen11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen12()));
              },
              trailing: Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.black,
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
                radius: 25,
              ),
              title: Text(
                '유재석',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.mainPurple,
                ),
              ),
              subtitle: Text(
                '2021.06.24 5:30 PM',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[600],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: ListView(
              children: [
                ScreenCard(text: '친구초대'),
                SizedBox(height: 5),
                ScreenCard(text: '구매내역 복원'),
                SizedBox(height: 5),
                ScreenCard(text: '이용약관'),
                SizedBox(height: 5),
                ScreenCard(text: '개인정보 처리방침'),
                SizedBox(height: 5),
                ScreenCard(text: '오픈소스 라이센스'),
                SizedBox(height: 15),
                Text(
                  ' 문의 및 제안 : aaa@vvv.com으로 의견을 보내주세요.',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  ' 앱 버전: v1.0',
                  style: TextStyle(
                    color: AppColors.mainPurple,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ScreenCard extends StatelessWidget {
  final text;

  const ScreenCard({this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.4,
      child: Container(
          height: 60,
          padding: EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(fontSize: 16),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Colors.grey,
                ),
              ],
            ),
          )),
    );
  }
}
