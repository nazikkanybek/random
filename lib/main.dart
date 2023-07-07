import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff68B1C9),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Generate',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0042EB),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 28),
              Center(
                child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/photo.png'),
                    radius: 70),
              ),
              const SizedBox(height: 56),
              Center(
                child: Container(
                  height: 56,
                  width: 328,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 5.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: const Text('Name',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                      Text('Alex Marshall',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
              Center(
                child: Container(
                  height: 56,
                  width: 328,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 5.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: const Text('Username',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                      Text('alex_marshall',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
              Center(
                child: Container(
                  height: 56,
                  width: 328,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 5.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: const Text('Phone number',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                      Text('+1457825547',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
              Center(
                child: Container(
                  height: 56,
                  width: 328,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 5.0),
                    ),
                  ),
                  child:const  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(2.0),
                        child: const Text('Email',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                      Text(
                        'alexmarshall2022@gmail.com',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox( height: 20),
              Center(
                child: Container( height: 56, width: 328,
                  child: ElevatedButton( style: ElevatedButton.styleFrom(backgroundColor: Color(0xff263775),),
                      onPressed: () {},
                      child: const  Text(
                        'Get location',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFFFFFF),
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
