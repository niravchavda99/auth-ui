import 'package:flutter/material.dart';

class SignUpUI extends StatefulWidget {
  final Function toggle;

  const SignUpUI(this.toggle);

  @override
  _SignUpUIState createState() => _SignUpUIState();
}

class _SignUpUIState extends State<SignUpUI> {
  final _formKey = GlobalKey();
  final _passController = TextEditingController();
  final _rePassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Text(
              'Create Account',
              style: TextStyle(
                fontSize: 50,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            _buildNameField(),
            _buildEmailField(),
            _buildPasswordField(),
            _buildRePasswordField(),
            _buildSubmitButton(),
            SizedBox(height: 30),
            Text('OR'),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => widget.toggle(),
              child: Text('Already Have An Account? Login'),
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
          hintText: 'Email',
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

  Widget _buildNameField() {
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
          hintText: 'Name',
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
        controller: _passController,
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
          hintText: 'Password',
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

  Widget _buildRePasswordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TextFormField(
        controller: _rePassController,
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
          hintText: 'Re-enter Password',
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
        icon: Icon(Icons.person_outline),
        label: Text('Create Account'),
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
