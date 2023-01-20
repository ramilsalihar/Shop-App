import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/orders_screen.dart';
import '../screens/user_products_screen.dart';
import '../providers/auth.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildBody(context),
        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    const name = 'Ramil Salihar';
    const email = 'ramilsalihar@gmail.com';

    Widget userAvatar = CircleAvatar(
      backgroundColor: theme.cardColor,
      radius: 52,
      child: const Icon(
        Icons.person,
        size: 52,
        color: Colors.black,
      ),
    );

    return Flexible(
      flex: 1,
      child: Container(
        color: Theme.of(context).primaryColor,
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            userAvatar,
            const SizedBox(
              height: 12,
            ),
            Text(
              name,
              style: theme.textTheme.headline1,
            ),
            const SizedBox(
              height: 7,
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                email,
                style: theme.textTheme.headline1,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: MediaQuery.of(context).padding.bottom,
        ),
        child: Column(
          children: [
            // TODO: Add animation to icons
            ListTile(
              leading: const Icon(Icons.shop),
              title: const Text('Shop'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.payment),
              title: const Text('Orders'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(OrdersScreen.routeName);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Manage Products'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(UserProductsScreen.routeName);
              },
            ),
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.all(5),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushReplacementNamed('/');

                    // Navigator.of(context)
                    //     .pushReplacementNamed(UserProductsScreen.routeName);
                    Provider.of<Auth>(context, listen: false).logout();
                  },
                  child: const Text(
                    'LOGOUT',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}