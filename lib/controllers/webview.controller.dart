import 'dart:ui';
import 'package:webview_flutter/webview_flutter.dart';

final webViewController = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000))
  ..setNavigationDelegate(
    NavigationDelegate(
      onProgress: (int progress) {
        // Update loading bar.
      },
      onPageStarted: (String url) {},
      onPageFinished: (String url) {},
      onWebResourceError: (WebResourceError error) {},
      onNavigationRequest: (NavigationRequest request) {
        // if (request.url.startsWith('https://www.youtube.com/')) {
        //   return NavigationDecision.prevent;
        // }
        return NavigationDecision.navigate;
      },
    ),
  )
  ..loadRequest(Uri.parse(const String.fromEnvironment('WEB_VIEW_BASE_URL')));
