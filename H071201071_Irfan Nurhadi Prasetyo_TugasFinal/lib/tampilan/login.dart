import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:myproject/tampilan/menu.dart';
import 'package:myproject/tampilan/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController textController1;
  late TextEditingController textController2;
  late bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFFAFAFA),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Welcome',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 35,
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                child: TextFormField(
                  controller: textController1,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController1',
                    const Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: 'Email',
                    labelStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff808080)),
                    hintStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: const Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 22,
                    ),
                  ),
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                child: TextFormField(
                  controller: textController2,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController2',
                    const Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: !passwordVisibility,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff808080),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                    // hintStyle: FlutterFlowTheme.of(context).bodyText1,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => passwordVisibility = !passwordVisibility,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        passwordVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Colors.black,
                        size: 22,
                      ),
                    ),
                  ),
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),

              Container(
                width: 100,
                height: 65,
                padding: const EdgeInsetsDirectional.fromSTEB(65, 20, 65, 0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Menu()));
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 65,
                padding: const EdgeInsetsDirectional.fromSTEB(65, 20, 65, 0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xffB92401),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsetsDirectional.fromSTEB(45, 20, 45, 0),
              //   child: FFButtonWidget(
              //     onPressed: () {
              //       print('Button pressed ...');
              //     },
              //     text: 'Login',
              //     options: FFButtonOptions(
              //       height: 40,
              //       color: Colors.black,
              //       textStyle: FlutterFlowTheme.of(context).subtitle2.override(
              //             fontFamily: 'Poppins',
              //             color: Colors.white,
              //           ),
              //       elevation: 5,
              //       borderSide: BorderSide(
              //         color: Colors.transparent,
              //         width: 1,
              //       ),
              //       borderRadius: 15,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
