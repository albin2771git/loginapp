import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool viewpassword = true;
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "AppLogin",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blue,
              Color.fromARGB(255, 2, 12, 68),
            ],
          )),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 90, right: 90, top: 50, bottom: 50),
              child: Form(
                key: formkey,
                child: Container(
                  width: 420,
                  height: 400,
                  // padding: EdgeInsets.only(left: 150, right: 150, top: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: Colors.grey.shade200.withOpacity(0.2),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          "Registration",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 60),
                        child: TextFormField(
                          decoration: InputDecoration(
                            label: Text(
                              "Enter Your Username",
                              style: TextStyle(color: Colors.white),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(29),
                              //  borderSide: BorderSide(color: Colors.white)
                            ),
                          ),
                          validator: (number) {
                            if (number!.isEmpty || number.length < 5) {
                              return "enter a valid username";
                            } else {
                              return null;
                            }
                          },
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 20),
                        child: TextFormField(
                          //controller: password,
                          obscureText: viewpassword,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (viewpassword) {
                                    viewpassword = false;
                                  } else {
                                    viewpassword = true;
                                  }
                                });
                              },
                              icon: Icon(viewpassword == true
                                  ? Icons.remove_red_eye
                                  : Icons.password),
                            ),
                            label: Text(
                              "enter your password",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24)),
                          ),
                          validator: (password) {
                            if (password!.isEmpty || password.length < 5) {
                              return "enter valid password";
                            } else {
                              return null;
                            }
                          },
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(27)))),
                          onPressed: () {
                            final validate = formkey.currentState!.validate();
                            if (validate) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => loginPage()));
                            } else {
                              Fluttertoast.showToast(
                                  msg: "enter valid details",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.TOP,
                                  // timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            }
                          },
                          child: Text("submit ")),
                    ],
                  ),
                  //Colors.grey.shade200.withOpacity(0.5)
                ),
              ),
            ),
          ),
        ));
  }
}
