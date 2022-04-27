import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:tres_astronautas_flutter/bloc/alerts_bloc.dart';
import 'package:tres_astronautas_flutter/bloc/authentication_bloc.dart';
import 'package:tres_astronautas_flutter/bloc/products_bloc.dart';
import 'package:tres_astronautas_flutter/generated/l10n.dart';
import 'package:tres_astronautas_flutter/models/products_model.dart';
import 'package:tres_astronautas_flutter/providers/products_provider.dart';
import 'package:tres_astronautas_flutter/share_prefs/user_preferences.dart';
import 'package:tres_astronautas_flutter/styles/colors.dart';
import 'package:tres_astronautas_flutter/widgets/alerts.dart';
import 'package:tres_astronautas_flutter/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _prefs = new UserPreferences();
  bool _isLoading = false;
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    ProductProvider().getProducts(context);
    AuthBloc().setRoute = 'homePage';
    _scrollController.addListener(() {
      print('touching');
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // _agregar10();
        //fetchData();
        print('no more data');
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          exit(0);
        },
        child: SafeArea(
            child: Scaffold(
                appBar: gradientAppBar(TextLanguage.of(context).home, () {
                  exit(0);
                }),
                floatingActionButton: FloatingActionButton(
                  backgroundColor: blue2,
                  child: Icon(Icons.add),
                  onPressed: () {
                    createProductDialog(context, 'Create Product', () async {
                      Navigator.of(context).pop();
                      AlertsBloc().setAlert =
                          Alerts('Creating Product', "Updating");
                      var resp = await ProductProvider().createProduct(
                          context,
                          ProductsBloc().productPriceValue,
                          ProductsBloc().productNameValue);
                      if (resp["ok"]) {
                        AlertsBloc().setAlert =
                            Alerts('Product Created', "Updated");
                      }
                    });
                  },
                ),
                body: SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Hola ' + _prefs.name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Your products:',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 25),
                            ),
                            Column(
                              children: [
                                StreamBuilder<Object>(
                                    stream: ProductsBloc().products,
                                    builder: (context, snapshot) {
                                      if (!snapshot.hasData) {
                                        _isLoading = true;
                                      } else {
                                        _isLoading = false;
                                      }
                                      return _crearLoading();
                                    }),
                                Container(
                                  height: 400,
                                  child: RefreshIndicator(
                                    onRefresh: () {
                                      return ProductProvider()
                                          .getProducts(context);
                                    },
                                    child: StreamBuilder(
                                      stream: ProductsBloc().products,
                                      builder: (BuildContext context,
                                          AsyncSnapshot<List<Product>>
                                              snapshot) {
                                        return _crarLista(snapshot.hasData
                                            ? snapshot.data
                                            : []);
                                      },
                                    ),
                                  ),
                                ),
                                StreamBuilder(
                                  stream: AlertsBloc().alert,
                                  builder: (BuildContext context,
                                      AsyncSnapshot snapshot) {
                                    WidgetsBinding.instance
                                        .addPostFrameCallback(
                                            (_) => onAfterBuild(context));
                                    return Container();
                                  },
                                ),
                              ],
                            )
                          ],
                        ))))));
  }

  Widget _crarLista(List<Product> products) {
    return ListView.builder(
        //controller: _scrollController,
        itemCount: products.length > 0 ? products.length : 1,
        itemBuilder: (context, i) {
          if (products.length == 0) {
            return Text(
              'You dont have products.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            );
          } else {
            _isLoading = false;
            return Column(
              children: [
                Slidable(
                  key: const Key('dismissibleTile'),
                  endActionPane: ActionPane(
                    motion: DrawerMotion(),
                    dismissible: Text('dismiss'),
                    children: [
                      SlidableAction(
                        onPressed: (_context) {
                          confirmationDialog(
                              _context,
                              'Are you sure you want delete this product',
                              'Delete Confirmation', () async {
                            Navigator.of(context).pop();
                            AlertsBloc().setAlert =
                                Alerts('Deleting Product', "Updating");
                            var resp = await ProductProvider().deleteProduct(
                              context,
                              products[i].id,
                            );
                            if (resp["ok"]) {
                              AlertsBloc().setAlert =
                                  Alerts('Product Deleted', "Updated");
                            }
                          }, () {
                            Navigator.of(context).pop();
                            print('closing');
                          });
                        },
                        icon: Icons.delete,
                        backgroundColor: Colors.white10,
                      )
                    ],
                  ),
                  child: ListTile(
                    onTap: () {
                      ProductsBloc().setProductName = products[i].name;
                      ProductsBloc().setProductPrice = products[i].price;
                      updateProductDialog(
                          products[i], context, 'Update product', () async {
                        Navigator.of(context).pop();
                        AlertsBloc().setAlert =
                            Alerts('Creating Product', "Updating");
                        var resp = await ProductProvider().updateProduct(
                            context,
                            products[i].id,
                            ProductsBloc().productPriceValue,
                            ProductsBloc().productNameValue);
                        if (resp["ok"]) {
                          AlertsBloc().setAlert =
                              Alerts('Product Updated', "Updated");
                        }
                      });
                    },
                    leading: Icon(
                      Icons.shopping_bag_sharp,
                      color: blue1,
                    ),
                    title:
                        Text(products[i].name, style: TextStyle(fontSize: 20)),
                    trailing: Text('${products[i].price} \$',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ),
                Divider()
              ],
            );
          }
        });
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[circularProgressCustom()],
          ),
          SizedBox(height: 15.0)
        ],
      );
    } else {
      return Container();
    }
  }
}
