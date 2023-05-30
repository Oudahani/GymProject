import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gym_app/SpHelper.dart';
import 'package:gym_app/Widget/textfield.dart';

class SingUpSreen extends StatefulWidget {
  const SingUpSreen({super.key});

  @override
  State<SingUpSreen> createState() => _SingUpSreenState();
}

class _SingUpSreenState extends State<SingUpSreen> {
  bool male = false;
  bool female = false;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> singupKey = GlobalKey();
    TextEditingController Namecontroller = TextEditingController();

    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();

    TextEditingController birthcontroller = TextEditingController();
    TextEditingController Phonecontroller = TextEditingController();

    return Scaffold(
        body: Container(
            margin: EdgeInsets.all(40),
            child: SingleChildScrollView(
              child: Form(
                key: singupKey,
                child: Column(children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      "Welcome Back",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  const Text(
                    "Welcome Back.Please Enter Your Details",
                    style: TextStyle(
                        fontSize: 13,
                        // fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      defaultFormField(
                        controller: Namecontroller,
                        type: TextInputType.name,
                        onFieldSubmitted: (value) {
                          // if (formkey.currentState!.validate()) {
                          //   ShopLoginCubit.get(context).userLogin(
                          //       email: emailcontroller.text,
                          //       password: passwordcontroller.text);
                          // }
                        },
                        validate: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter Your Name';
                          }
                          return null;
                        },
                        label: 'Your Name',
                        isPassword: true,
                        prefix: Icons.person,
                        onPressed: () {
                          //     setState(() {
                          //       ispassword = !ispassword;
                          //     });
                        },
                        // suffix: Icons.visibility,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      defaultFormField(
                          controller: emailcontroller,
                          type: TextInputType.emailAddress,
                          validate: (value) {
                            if (value.isEmpty) {
                              return 'please enter your email';
                            }
                            return null;
                          },
                          label: 'Email Address',
                          prefix: Icons.email_outlined),
                      const SizedBox(
                        height: 40,
                      ),
                      defaultFormField(
                        controller: passwordcontroller,
                        type: TextInputType.visiblePassword,
                        onFieldSubmitted: (value) {
                          // if (formkey.currentState!.validate()) {
                          //   ShopLoginCubit.get(context).userLogin(
                          //       email: emailcontroller.text,
                          //       password: passwordcontroller.text);
                          // }
                        },
                        validate: (value) {
                          if (value.isEmpty) {
                            return 'your password is too short';
                          }
                          return null;
                        },
                        label: 'password',
                        isPassword: true,
                        prefix: Icons.lock,
                        onPressed: () {
                          //     setState(() {
                          //       ispassword = !ispassword;
                          //     });
                        },
                        //  suffix: Icons.visibility,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      defaultFormField(
                        controller: birthcontroller,
                        type: TextInputType.number,
                        onFieldSubmitted: (value) {
                          // if (formkey.currentState!.validate()) {
                          //   ShopLoginCubit.get(context).userLogin(
                          //       email: emailcontroller.text,
                          //       password: passwordcontroller.text);
                          // }
                        },
                        validate: (value) {
                          if (value.isEmpty) {
                            return 'your password is too short';
                          }
                          return null;
                        },
                        label: 'Date Of Birth',
                        isPassword: true,
                        prefix: Icons.calendar_month_rounded,
                        onPressed: () {
                          //     setState(() {
                          //       ispassword = !ispassword;
                          //     });
                        },
                        //suffix: Icons.visibility,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      defaultFormField(
                        controller: Phonecontroller,
                        type: TextInputType.number,
                        onFieldSubmitted: (value) {
                          // if (formkey.currentState!.validate()) {
                          //   ShopLoginCubit.get(context).userLogin(
                          //       email: emailcontroller.text,
                          //       password: passwordcontroller.text);
                          // }
                        },
                        validate: (value) {
                          if (value.isEmpty) {
                            return 'your password is too short';
                          }
                          return null;
                        },
                        label: 'Contact Number',
                        isPassword: true,
                        prefix: Icons.phone,
                        onPressed: () {
                          //     setState(() {
                          //       ispassword = !ispassword;
                          //     });
                        },
                        //suffix: Icons.visibility,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {
                          
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {
                              SpHelper.spHelper.getUser();
                              if (singupKey.currentState!.validate()) {
                                SpHelper.spHelper.Savenewuser(
                                    Namecontroller.text,
                                    emailcontroller.text,
                                    Phonecontroller.text,
                                    passwordcontroller.text,
                                    birthcontroller.text);
                              }
                            },
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red,
                          ),
                        ),
                      ),
                      // TextButton(
                      //   onPressed: () {
                      //     // if (formkey.currentState!.validate()) {
                      //     //   ShopLoginCubit.get(context).userLogin(
                      //     //       email: emailcontroller.text,
                      //     //       password: passwordcontroller.text);
                      //     // }
                      //   },
                      //   child: Container(
                      //     height: 50,
                      //     width: double.infinity,
                      //     child: TextButton(
                      //       onPressed: () {
                      //         SpHelper.spHelper.getUser();
                      //       },
                      //       child: Text(
                      //         'SIGN ',
                      //         style: TextStyle(
                      //           color: Colors.white,
                      //         ),
                      //       ),
                      //     ),
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(5),
                      //       color: Colors.red,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ]),
              ),
            )));
  }
}
