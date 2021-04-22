import 'package:flutter/material.dart';
import 'package:kidsapp/models/cart_model.dart';
import 'package:kidsapp/models/user_model.dart';
import 'package:kidsapp/screens/home_screen.dart';
import 'package:scoped_model/scoped_model.dart';

class Starts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: ScopedModelDescendant<UserModel>(
          builder: (context, child, model){
            return ScopedModel<CartModel>(
              model: CartModel(model),
              child: MaterialApp(
                  title: "Anda Recicla",
                  theme: ThemeData(
                      primarySwatch: Colors.green,
                      primaryColor: Color.fromARGB(255, 0,128,0)
                  ),
                  debugShowCheckedModeBanner: false,
                  home: HomeScreen()
              ),
            );
          }
      ),
    );
  }
}
