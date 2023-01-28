import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First app"),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "SIGN UP",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.login_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: "Введите логин",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                style: TextStyle(fontSize: 16, color: Colors.deepOrange),
                maxLines: 1,
                onSubmitted: (text) {
                  print("your text is $text");
                },
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password_outlined),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  labelText: "Введите пароль",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                style: TextStyle(fontSize: 16, color: Colors.deepOrange),
                maxLines: 1,
                onSubmitted: (text) {
                  print("your text is $text");
                },
              ),
              CheckBox(),
              ElevatedButton(
                onPressed: () {},
                child: Text("SIGN UP"),
                style:
                    ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Forgot password?",
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 20),
                      child: Divider(
                        height: 3,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text("OR"),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Divider(
                        height: 3,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.g_mobiledata_outlined,
                  size: 24.0,
                ),
                label: Text('Continue with google'),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.deepPurpleAccent),
                  minimumSize: MaterialStateProperty.all(Size.fromHeight(50))
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CheckBox();
  }
}

class _CheckBox extends State<CheckBox> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: Colors.black,
      value: _isChecked,
      onChanged: (newBool) {
        setState(() {
          _isChecked = newBool;
        });
      },
      contentPadding: EdgeInsets.all(0),
      title: Text("Remember me"),
      controlAffinity: ListTileControlAffinity.leading,
      subtitle: Text("subtitle"),
    );
  }
}
