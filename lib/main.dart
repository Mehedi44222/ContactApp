import 'package:contacts_app/pages/contact_details_page.dart';
import 'package:contacts_app/pages/contact_form_page.dart';
import 'package:contacts_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter Demo',
      theme: ThemeData( primarySwatch: Colors.lightBlue),
      initialRoute:HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        ContactFormPage.routeName: (context) => const ContactFormPage(),
        ContactDetailsPage.routeName: (context) => const ContactDetailsPage(),
      },
    );
  }
}