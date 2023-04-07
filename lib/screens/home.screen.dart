import 'package:flutter/material.dart';
import 'package:web_view/controllers/webview.controller.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            backgroundColor: Colors.white,
            elevation: 0.0,
          ),
          body: WebViewWidget(controller: webViewController),
        ),
        onWillPop: () async {
          if (await webViewController.canGoBack()) {
            await webViewController.goBack();
            return false;
          }
          return true;
        });
  }
}
