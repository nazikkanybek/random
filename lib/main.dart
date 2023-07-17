import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:random/user_model.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const  MyApp());
}

class MyApp extends StatefulWidget {
 const   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

 
}

class _MyAppState extends State<MyApp> {
   String image = 'https://sbis.perm.ru/wp-content/uploads/2019/09/placeholder.png';
String name = '';
String phone = '';
String email = '';
String userName = '';
double lat =0;
double lng = 0;
@override

void initState(){
    getData();
    super.initState();

  
  
  }
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
                  onPressed: getData,
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
                child: CircleAvatar(
                    backgroundImage: NetworkImage(image),
                    radius: 70),
              ),
              const SizedBox(height: 56),
              Center(
                child: Container(
                  height: 56,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 5.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                const       Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: const Text('Name',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                      Text(name,
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
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 5.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                const       Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: const Text('Username',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                      Text(userName,
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
                  width: double.infinity,
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
                      Text(phone,
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
                  width: double.infinity,
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
                        padding: EdgeInsets.all(2.0),
                        child:const Text('Email',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                      Text(
                        email,
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
                child: Container( height: 56, width: double.infinity,
                  child: ElevatedButton( style: ElevatedButton.styleFrom(backgroundColor: Color(0xff263775),),
                      onPressed:_launchUrl,
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
  Future<void> getData() async {
    final Dio dio =Dio();
    final response = await dio.get('https://randomuser.me/api/');
    final result = UserModel.fromJson(response.data);


 image = result.results?.first.picture?.large ?? '';
  name = '${result.results?.first.name?.first} ${result.results?.first.name?.last}'; 
   phone = result.results?.first.phone ?? '';
  email = result.results?.first.email ??'';
   userName = result.results?.first.login?.username??'';
  lat = double.tryParse(result.results?.first.location?.coordinates?.latitude?? '') ?? 0;
   lng = double.tryParse(result.results?.first.location?.coordinates?.longitude?? '') ?? 0;

setState(() {
  
});
  }

Future<void> _launchUrl() async {
  final Uri _url = Uri.parse('https://maps.google.com/?q=$lat,$lng');
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}



}
