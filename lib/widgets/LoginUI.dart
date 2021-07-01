import 'package:flutter/material.dart';

class LoginUI extends StatefulWidget {
  final Function toggle;

  const LoginUI(this.toggle);

  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  final _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 50,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildEmailField(),
            _buildPasswordField(),
            _buildSubmitButton(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Forgot Password ?',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Help',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text('OR'),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () => widget.toggle(),
              icon: Icon(Icons.person),
              label: Text('Create an Account'),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).accentColor),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                textStyle: MaterialStateProperty.all(
                  TextStyle(
                    fontSize: 25,
                  ),
                ),
                minimumSize:
                    MaterialStateProperty.all(Size(double.infinity, 56)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TextFormField(
        validator: (value) {
          return "Invalid Email";
        },
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          fontSize: 20,
          color: Theme.of(context).primaryColor,
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            gapPadding: 10,
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 10,
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Theme.of(context).accentColor,
              width: 2,
            ),
          ),
          hintText: 'Email / Username',
          border: OutlineInputBorder(
            gapPadding: 10,
            borderRadius: BorderRadius.circular(30),
          ),
          contentPadding: const EdgeInsets.all(16),
          hintStyle: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TextFormField(
        style: TextStyle(
          fontSize: 20,
          color: Theme.of(context).primaryColor,
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            gapPadding: 10,
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 10,
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Theme.of(context).accentColor,
              width: 2,
            ),
          ),
          hintText: '********',
          border: OutlineInputBorder(
            gapPadding: 10,
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: const EdgeInsets.all(16),
          hintStyle: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
        obscureText: true,
      ),
    );
  }

  Widget _buildSubmitButton() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.login),
        label: Text('Login'),
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).primaryColor),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          textStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 25,
            ),
          ),
          minimumSize: MaterialStateProperty.all(Size(double.infinity, 56)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )),
        ),
      ),
    );
  }
}
