import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Homework(),
    );
  }
}

class Homework extends StatelessWidget {
  const Homework({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 783,
            child: Stack(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(200),
                    ),
                    color: Color(0xff9F8A8A).withOpacity(0.8),
                  ),
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                    ),
                    color: Color(0xff9F8A8A).withOpacity(0.9),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 140,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Главная',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 40,
                  child: Container(
                    alignment: Alignment.center,
                    width: 339,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/picture1.png',
                          height: 70,
                          width: 70,
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Начните зарабатывать!',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Приобретите тариф Behype-PRO \nи начните свою карьеру!',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: 500,
                    decoration: BoxDecoration(
                      color: Color(0xffF9F8FF),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 40),
                          Text(
                            'Категории',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Cards(
                                image: 'assets/images/picture2.png',
                                text1: 'Реклама',
                                text2: '    106 \nкомпании',
                              ),
                              Cards(
                                image: 'assets/images/picture3.png',
                                text1: 'Взаимопиар',
                                text2: '56 заявок',
                              ),
                              Cards(
                                image: 'assets/images/picture4.png',
                                text1: 'Бартер',
                                text2: '245 заявок',
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Рекламные компании',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                height: 20,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                child: Text(
                                  'Все',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Column(
                            children: [
                              Container(
                                height: 170,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: Color(0xff6322E0),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child:
                                    Image.asset('assets/images/picture5.png'),
                              ),
                              Container(
                                width: 200,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  'В новом обновлении',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  const Cards({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120,
          height: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              SizedBox(height: 20),
              Image.asset(
                image,
                height: 40,
                width: 60,
              ),
              SizedBox(height: 15),
              Text(
                text1,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                text2,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
