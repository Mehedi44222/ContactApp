import 'package:contacts_app/pages/contact_form_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact App',),backgroundColor: Colors.lightBlue,centerTitle: true),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, ContactFormPage.routeName);
        }, child:const Icon(Icons.add),
      ),
    );
  }
}
