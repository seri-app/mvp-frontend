import 'package:flutter/material.dart';

class LogInForm extends StatefulWidget {
  @override
  bool phone = true;
  _LogInFormState createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  bool _phone = true;
  String _text = 'Use Email Instead';
  String _hintText = 'Phone number';
  final _formKey = GlobalKey<FormState>();
  String _phoneNumber = '';

  void _continueButtonPressed() {
    if (_formKey.currentState!.validate()) {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const EmailForm()),
      // );
      _formKey.currentState?.save();
      print('Phone number is: $_phoneNumber');
    }
  }

  String? validateForm(String? value) {
    if (_phone) {
      if (value!.length < 8) {
        return 'Number too short';
      } else if (value.length > 12) {
        return 'Number too long';
      } else {
        return null;
      }
    } else {
      RegExp regex = RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
      if (!regex.hasMatch(value!)) {
        return 'Enter Valid Email';
      } else {
        return null;
      }
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
              hintText: _hintText,
            ),
            keyboardType: TextInputType.phone,
            validator: validateForm,
            onSaved: (value) {
              _phoneNumber = value!;
            },
          ),
          SizedBox(height: 10.0),
          TextButton(
            onPressed: () => setState(() {
              if (_phone) {
                _text = 'Use Email Instead';
                _hintText = 'Email';
                _phone = false;
              } else {
                _text = 'Use Phone Number Instead';
                _hintText = 'Phone number';
                _phone = true;
              }
            }),
            child: Text(
              _text,
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
          ElevatedButton(
            onPressed: _continueButtonPressed,
            child: Text('Continue'),
          ),
        ],
      ),
    );
  }
}

