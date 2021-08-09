import 'package:authui/constant.dart';
import 'screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Flexible(
              child: Column(children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Image(
                      image: AssetImage('assets/images/team_illustration.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Enterprise team\ncollaboration.",
                    style: Headline, textAlign: TextAlign.center),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    "Bring together your files, your tools, project and people, including a new mobile and desktop application.",
                    style: BodyText,
                    textAlign: TextAlign.center,
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Expanded(
                      child: MyTextButton(
                        bgColor: Colors.white,
                        buttonName: 'Register',
                        onTap: () {},
                        textColor: Colors.black87,
                      ),
                    ),
                    Expanded(
                      child: MyTextButton(
                        bgColor: Colors.transparent,
                        buttonName: 'Sign In',
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => Login(),
                              ));
                        },
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    Key? key,
    required this.buttonName,
    required this.onTap,
    required this.bgColor,
    required this.textColor,
  }) : super(key: key);
  final String buttonName;
  final VoidCallback onTap;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith(
            (states) => Colors.black12,
          ),
        ),
        onPressed: onTap,
        child: Text(
          buttonName,
          style: ButtonText.copyWith(color: textColor),
        ),
      ),
    );
  }
}
