import 'package:flutter/material.dart';
import 'package:responsive_login/responsive_widget.dart';

import 'app_colors.dart';
import 'app_styles.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.backColor,

      body: SizedBox(
        height: height,
        width: width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          ResponsiveWidget.isSmallScreen(context) ? SizedBox() : Expanded(
              child: Container(
                height: height,
                color: AppColors.mainBlueColor,
                child: Center(
                  child: Text('Rayitos' , 
                  style: ralewayStyle.copyWith(
                    fontSize: 48.0,
                    color: AppColors.whiteColor ,
                    fontWeight: FontWeight.w800
                  ),),
                ),
              ) 
            ) ,
            //SizedBox(width: width * 0.1) ,
            Expanded(
              child: Container(
                height: height,
                 margin: EdgeInsets.symmetric(horizontal: ResponsiveWidget.isSmallScreen(context)? height * 0.032 : height * 0.12),
                color: AppColors.backColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start ,
                  children: [
                    SizedBox(height: height * 0.145) , 
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(
                         // text: 'Vamos a ' , 
                          style: ralewayStyle.copyWith(
                            fontSize: 25.0,
                            color: AppColors.textColor ,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: 'Iniciar Sesión' , 
                          style: ralewayStyle.copyWith(
                            fontSize: 25.0,
                            color: AppColors.blueDarkColor ,
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ]  ))
                    , SizedBox(height: height * 0.02) , 
                      Text(
                    'Ingresa tus datos para continuar',
                    style: ralewayStyle.copyWith(
                      fontSize: 18.0,
                      color: AppColors.textColor ,
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                      SizedBox(height: height * 0.064) , 

                        Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text('Correo Electronico',
                          style: ralewayStyle.copyWith(
                            fontSize: 12.0,
                            color: AppColors.blueDarkColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      Container(
                        height: 50.0,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: AppColors.whiteColor,
                        ),
                        child: TextFormField(

                          style: ralewayStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.blueDarkColor,
                            fontSize: 12.0,
                          ),

                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: IconButton(
                              onPressed: (){},
                              icon:  Icon(Icons.email),
                            ),
                            contentPadding: const EdgeInsets.only(top: 16.0),
                            hintText: 'Enter Email',
                            hintStyle: ralewayStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColors.blueDarkColor.withOpacity(0.5),
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.014),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text('Password',
                          style: ralewayStyle.copyWith(
                            fontSize: 12.0,
                            color: AppColors.blueDarkColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      Container(
                        height: 50.0,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: AppColors.whiteColor,
                        ),
                        child: TextFormField(

                          style: ralewayStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.blueDarkColor,
                            fontSize: 12.0,
                          ),
                          obscureText: true,

                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.visibility_off),
                            ),
                            prefixIcon: IconButton(
                              onPressed: (){},
                              icon:  Icon(Icons.lock),
                            ),
                            contentPadding: const EdgeInsets.only(top: 16.0),
                            hintText: 'Enter Password',
                            hintStyle: ralewayStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColors.blueDarkColor.withOpacity(0.5),
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.03),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: (){}, 
                          child: Text('Olvidaste la contraseña ?',
                            style: ralewayStyle.copyWith(
                              fontSize: 16.0,
                              color: AppColors.mainBlueColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          ),
                      ),
                      
                      SizedBox(height: height * 0.05),

                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){
                          print('Ancho $width');
                          print('Largo $height');
                        },
                        borderRadius: BorderRadius.circular(16.0),
                        child: Ink(
                        padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 18.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: AppColors.mainBlueColor,
                        ),
                        child: Text('Iniciar Sesión' , 
                        style: ralewayStyle.copyWith(
                          fontSize: 16.0,
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w700,
                        ),),
                        ),
                        ),
                      )
                  ],
                )
              ) 
            )
          ],
        ),
      )
    );
  }
}