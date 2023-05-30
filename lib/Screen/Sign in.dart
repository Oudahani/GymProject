import 'package:flutter/material.dart';
import 'package:gym_app/Screen/Sing_up.dart';
import 'package:gym_app/SpHelper.dart';
import 'package:gym_app/Widget/textfield.dart';

class SinginScreen extends StatefulWidget {
  @override
  State<SinginScreen> createState() => _SinginScreenState();
}

class _SinginScreenState extends State<SinginScreen> {
  //const SinginScreen({super.key});
  bool remmber = false;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> singinKey = GlobalKey();
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Form(
            key: singinKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Login to your Account",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 15,
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
                  // suffix: Icons.visibility,
                ),
                const SizedBox(
                  height: 15,
                ),
                // Row(
                //   children: [
                //     Checkbox(
                //         value: remmber,
                //         onChanged: (val) {
                //           setState(() {
                //             remmber = val!;
                //           });
                //         }),
                //     Text("Remmber Me"),
                //   ],
                // ),
                const SizedBox(
                  height: 15,
                ),
                TextButton(
                  onPressed:  () {
                    // if (formkey.currentState!.validate()) {
                    //   ShopLoginCubit.get(context).userLogin(
                    //       email: emailcontroller.text,
                    //       password: passwordcontroller.text);
                    // }
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child:  TextButton(
                      onPressed: ()  {
                        SpHelper.spHelper.getUser();
                        if (singinKey.currentState!.validate()) {
                          SpHelper.spHelper.Saveuser(
                              emailcontroller.text, passwordcontroller.text);
                        }
                      },
                      child:  Text (
                        'Sign in',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.red),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an Account?'),
                    TextButton(
                      onPressed: () {
                        navigateTo(
                          context,
                          SingUpSreen(),
                        );
                      },
                      child: Text(
                        'SIGN UP'.toUpperCase(),
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void navigateTo(context, Widget) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => Widget,
    ));
