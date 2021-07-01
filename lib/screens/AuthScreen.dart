import 'package:auth_ui/widgets/LoginUI.dart';
import 'package:auth_ui/widgets/SignUpUI.dart';
import 'package:flutter/material.dart';

enum AuthMode { LOGIN, SIGNUP }

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var _authMode = AuthMode.LOGIN;

  void toggleAuthMode() {
    setState(() {
      if (_authMode == AuthMode.LOGIN)
        _authMode = AuthMode.SIGNUP;
      else
        _authMode = AuthMode.LOGIN;
    });
  }

  Widget _buildLoginUI(double appBarHeight) {
    final height = MediaQuery.of(context).size.height * 0.3;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height,
            child: CustomPaint(
              painter: Cut(Theme.of(context).primaryColor),
              child: Column(
                children: [
                  SizedBox(height: appBarHeight),
                  SizedBox(height: 50),
                  Icon(
                    Icons.lock,
                    color: Colors.white,
                    size: 150,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(16),
            child: LoginUI(toggleAuthMode),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpUI(double appBarHeight) {
    final height = MediaQuery.of(context).size.height * 0.3;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height,
            child: CustomPaint(
              painter: Cut(Theme.of(context).primaryColor),
              child: Column(
                children: [
                  SizedBox(height: appBarHeight),
                  SizedBox(height: 50),
                  Icon(
                    Icons.lock,
                    color: Colors.white,
                    size: 150,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SignUpUI(toggleAuthMode),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _appBarHeight = AppBar().preferredSize.height;

    return Scaffold(
      body: _authMode == AuthMode.LOGIN
          ? _buildLoginUI(_appBarHeight)
          : _buildSignUpUI(_appBarHeight),
    );
  }
}

class Cut extends CustomPainter {
  Color color;

  Cut(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
          size.width / 2, size.height + 100, size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
