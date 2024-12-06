import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_tiketux/core/core/constant/colors.dart';
import 'package:tmdb_tiketux/feature/dashboard/dashboard_screen.dart';
import 'package:tmdb_tiketux/feature/home/home_screen.dart';
import 'package:tmdb_tiketux/feature/login/login_controller.dart';
import 'package:tmdb_tiketux/feature/widgets/error_snackbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: LoginController(),
        builder: (controller) => Scaffold(
          body: SafeArea(child: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/login_header.png'),
                          fit: BoxFit.cover
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          const Spacer(),
                          Image.asset('assets/images/tmdb_logo.png',
                            height: 200.w,
                          ),
                          SizedBox(height: 18.h,),
                          Text('Siap-siaplah untuk terjun ke dalam kisah-kisah terhebat di TV dan Film',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.sp),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Form(
                        key: controller.formKey,
                        child: Column(
                          children: [
                            SizedBox(height: 24.h),
                            TextFormField(
                              controller: controller.userName,
                              cursorColor: Colors.black,
                              onTapOutside: (event){
                                FocusScope.of(context).unfocus();
                              },
                              style: TextStyle(
                                  fontSize: 14
                              ),
                              decoration: InputDecoration(
                                labelText: 'Alamat Email',
                                labelStyle: TextStyle(
                                  fontSize: 12.sp,
                                  color: controller.formKey.currentState?.validate() == false && controller.userName.text == '' ? Colors.red : grayTua
                                ),
                                hintStyle: TextStyle(
                                    fontSize:10
                                ),
                                contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                                errorStyle: const TextStyle(height: 0.01),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: graySoft),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: primaryColor),
                                  borderRadius: BorderRadius.circular(50.0),
                                )
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 10,),
                            TextFormField(
                              controller: controller.password,
                              obscureText: true,
                              cursorColor: Colors.black,
                              onTapOutside: (event){
                                FocusScope.of(context).unfocus();
                              },
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                      fontSize: 12.sp,
                                      color: controller.formKey.currentState?.validate() == false && controller.password.text == '' ? Colors.red : grayTua
                                  ),
                                  fillColor: surface,
                                  hintStyle: TextStyle(fontSize:10),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                                  errorStyle: const TextStyle(height: 0.01),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: graySoft),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: primaryColor),
                                    borderRadius: BorderRadius.circular(50.0),
                                  )
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 24.h,),
                            TextButton(
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 4),
                                width: double.infinity,
                                child: Center(
                                  child: Text(
                                    'Log In',
                                    style: TextStyle(fontSize: 12.sp),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                if (controller.formKey.currentState!.validate()) {
                                  controller.logIn();
                                } else {
                                  ErrorSnackbar(Get.context, 'Isi form yang dibutuhkan');
                                }
                              },
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  elevation: 2,
                                  backgroundColor: primaryColor),
                            ),
                            SizedBox(height: 24.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(child: Divider(
                                    height: 1,
                                  )
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text('atau',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 10.sp
                                    ),
                                  ),
                                ),
                                Expanded(child: Divider(
                                  height: 1,
                                  )
                                ),
                              ],
                            ),
                            SizedBox(height: 24.h,),
                            TextButton(
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 4),
                                width: double.infinity,
                                child: Center(
                                  child: Text(
                                    'Masuk Sebagai Tamu',
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 12.sp
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Get.to<void>(const DashboardScreen());
                              },
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  elevation: 2,
                                  backgroundColor: Colors.white,
                                side: BorderSide(
                                  color: gray,
                                ),
                              ),
                            ),
                            SizedBox(height: 24.h,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0),
                              child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'Dengan membuat akun atau masuk, Anda setuju dengan ',
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Colors.black87,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Ketentuan Layanan ',
                                          style: TextStyle(
                                              color: stepperColor,
                                              decoration: TextDecoration.underline,
                                              fontWeight: FontWeight.bold
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () => print('click')
                                      ),
                                      TextSpan(
                                        text: 'dan '
                                      ),
                                      TextSpan(
                                          text: 'Kebijakan Privasi ',
                                          style: TextStyle(
                                              color: stepperColor,
                                              decoration: TextDecoration.underline,
                                              fontWeight: FontWeight.bold
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () => print('click')
                                      ),
                                      TextSpan(
                                        text: 'kami'
                                      )
                                    ]
                                )
                              ),
                            )
                          ],
                        ),
                      ),
                  )
                ],
              ),
          )
          ),
        )
    );
  }

}