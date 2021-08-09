import 'package:authui/constant.dart';
import 'package:authui/screens/register.dart';
import 'package:authui/widgets/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: BackgroundColor,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image(
              width: 24,
              color: Colors.white,
              image: Svg('assets/images/back_arrow.svg'),
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back.',
                  style: Headline,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "You've been missed!",
                  style: BodyText2,
                ),
                SizedBox(height: 60),
                MyTextField(
                  hintText: 'Phone, email or username',
                  inputType: TextInputType.text,
                ),
                MyPasswordField(
                  isPasswordVisible: isPasswordVisible,
                  onTap: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont't have an account? ",
                      style: BodyText,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => Register(),
                          ),
                        );
                      },
                      child: Text(
                        'Register',
                        style: BodyText.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                MyTextButton(
                  buttonName: 'Sign In',
                  onTap: () {},
                  bgColor: Colors.white,
                  textColor: Colors.black87,
                ),
              ],
            ),
          ),
        ));
  }
}
