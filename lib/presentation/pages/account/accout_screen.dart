import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:sajilo_dokan/presentation/pages/account/views/list_item_cart.dart';
import 'package:sajilo_dokan/presentation/pages/landing_home/home_controller.dart';
import 'package:sajilo_dokan/presentation/routes/sajilodokan_navigation.dart';

import 'package:sajilo_dokan/presentation/widgets/scaffold.dart';

class AccountScreen extends StatelessWidget {
  final int index;

  AccountScreen(this.index);

  final controller = Get.find<HomeController>();
  Future<void> logout() async {
    controller.logout();

    Get.offAllNamed(SajiloDokanRoutes.login);
  }

  @override
  Widget build(BuildContext context) {
    final user = controller.user();

    return SafeArea(child: Obx(() {
      if (controller.isLoading.value) {
        return SajiloDokanScaffold(
          title: null,
          background: null,
          body: Container(
            child: ListView(
              children: [
                Container(
                  height: 50,
                ),
                Center(
                  child: Text(
                    user.username,
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
                ListItemCart(
                  icon: Icons.person,
                  title: 'My Account',
                  onpressed: () {},
                ),
                ListItemCart(
                  icon: Icons.badge,
                  title: 'My Orders',
                  onpressed: () {},
                ),
                ListItemCart(
                  icon: Icons.location_city,
                  title: 'Shipping Address',
                  onpressed: () {},
                ),
                ListItemCart(
                  icon: Icons.card_giftcard,
                  title: 'My Cards',
                  onpressed: () {},
                ),
                ListItemCart(
                  icon: Icons.settings,
                  title: 'Settings',
                  onpressed: () {},
                ),
                ListItemCart(
                  icon: Icons.chat,
                  title: 'Contact Us',
                  onpressed: () {},
                ),
                ListItemCart(
                  icon: Icons.logout,
                  title: 'Logout',
                  onpressed: logout,
                ),
              ],
            ),
          ),
          bottomMenuIndex: index,
        );
      } else {
        return Container();
      }
    }));
  }
}