import 'package:flutter/material.dart';
import 'package:kidsapp/tabs/home_tab.dart';
import 'package:kidsapp/tabs/orders_tab.dart';
import 'package:kidsapp/tabs/places_tab.dart';
import 'package:kidsapp/tabs/products_tab.dart';
import 'package:kidsapp/tabs/sobre_tab.dart';
import 'package:kidsapp/tabs/retirada_tab.dart';
import 'package:kidsapp/widgets/cart_button.dart';
import 'package:kidsapp/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
          floatingActionButton: CartButton(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Não Eletrônicos (Ecopontos - SP)"),
            centerTitle: true,
          ),
          body: WebViewExample(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Reciclagens de Eletrônicos"),
            centerTitle: true,
          ),
          body: PlacesTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Agendamento de Retirada"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: MateriaisTab(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Retiradas Agendadas"),
            centerTitle: true,
          ),
          body: OrdersTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Sobre o Aplicativo"),
            centerTitle: true,
          ),
          body: Sobre(),
          drawer: CustomDrawer(_pageController),
        )
      ],
    );
  }
}
