import 'package:contacts_app/models/contact_model.dart';
import 'package:flutter/material.dart';

class ContactFormPage extends StatefulWidget {
  static const String routeName = '/form_page';

  const ContactFormPage({super.key});

  @override
  State<ContactFormPage> createState() => _ContactFormPageState();
}

class _ContactFormPageState extends State<ContactFormPage> {
  final _nameController = TextEditingController();
  final _designationController = TextEditingController();
  final _companyController = TextEditingController();
  final _addressController = TextEditingController();
  final _mobileController = TextEditingController();
  final _webController = TextEditingController();
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New contact'),
        actions: [IconButton(onPressed: _save, icon: Icon(Icons.save))],
      backgroundColor: Colors.deepPurple,),
      body: Form(

          key: _formKey,
          child: ListView( padding: EdgeInsets.all(15),
        children: [

          TextFormField(
          controller:_nameController,
          decoration: InputDecoration(
             labelText: 'contact name',
            prefixIcon: Icon(Icons.person),
           filled: true,
          ),
          validator: (value){
            if ( value == null || value.isEmpty){
              return 'This field must not be Empty!';
            }
            if (value.length > 12){
              return 'Contact name should not be 12 chars longer';
            }
            return null;
          },
        ),
          TextFormField(
            keyboardType: TextInputType.numberWithOptions(),
            controller:_mobileController,
            decoration: InputDecoration(
              labelText: 'Mobile Number',
              prefixIcon: Icon(Icons.call),
              filled: true,
            ),
            validator: (value){
              if ( value == null || value.isEmpty){
                return 'This field must not be Empty!';
              }
              if (value.length < 11){
                return 'vai tui 11 er ceye km dichis ken?';
              }
              return null;
            },
          ),
          TextFormField(
            controller:_emailController,
            decoration: InputDecoration(
              labelText: "Email",
              prefixIcon: Icon(Icons.email),
              filled: true,
            ),
          ),
          TextFormField(
            controller:_companyController,
            decoration: InputDecoration(
              labelText: "Company",
              prefixIcon: Icon(Icons.home),
              filled: true,
            ),
          ),
          TextFormField(
            controller:_addressController,
            decoration: InputDecoration(
              labelText: "Address",
              prefixIcon: Icon(Icons.find_in_page),
              filled: true,
            ),
          ),
          TextFormField(
            controller:_designationController,
            decoration: InputDecoration(
              labelText: "Designation",
              prefixIcon: Icon(Icons.design_services),
              filled: true,
            ),

          ),
          TextFormField(
            controller:_webController,
            decoration: InputDecoration(
              labelText: "Website",
              prefixIcon: Icon(Icons.web),
              filled: true,
            ),
          )

        ],)),
    );
  }

  void _save() {
    if ( _formKey.currentState!.validate()){
      final contactModel = ContactModel(
         name: _nameController.text,
              number: _mobileController.text,
        address: _addressController.text,
        company: _companyController.text,
        designation: _designationController.text,
        email: _emailController.text,
        website: _webController.text,


      );


    }


  }




  @override

  void dispose() {
    _nameController.dispose();
    _designationController.dispose();
    _companyController.dispose();
    _addressController.dispose();
    _mobileController.dispose();
    _webController.dispose();
    _emailController.dispose();
    super.dispose();
  }

}
