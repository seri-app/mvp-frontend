import 'package:flutter/material.dart';

class PhoneNumberForm extends StatefulWidget {
  @override
  _PhoneNumberFormState createState() => _PhoneNumberFormState();
}

class _PhoneNumberFormState extends State<PhoneNumberForm> {
  final _formKey = GlobalKey<FormState>();
  String _phoneNumber = '';

  void _continueButtonPressed() {
    if (_formKey.currentState!.validate()) {
      // Do something with the phone number
      print('Phone number is: $_phoneNumber');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Phone number',
            ),
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a phone number';
              }
              return null;
            },
            onSaved: (value) {
              _phoneNumber = value!;
            },
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: _continueButtonPressed,
            child: Text('Continue'),
          ),
        ],
      ),
    );
  }
}