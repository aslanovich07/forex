import 'package:flutter/material.dart';
import 'package:forex/services/constants/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../services/constants/strings.dart';

class AnalysisDetailPage extends StatefulWidget {
  const AnalysisDetailPage({super.key});

  @override
  State<AnalysisDetailPage> createState() => _AnalysisDetailPageState();
}

class _AnalysisDetailPageState extends State<AnalysisDetailPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(CustomColors.mainBackgroundColor)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(
        Uri.parse('https://google.com/'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: CustomColors.mainBackgroundColor,
      appBar: AppBar(
        title: const Text(
          CustomStrings.google,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: CustomColors.white,
            fontFamily: "Unbounded",
          ),
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: CustomColors.privacy,
          ),
        ),
        backgroundColor: CustomColors.mainBackgroundColor,
      ),
      body: Stack(
        children: [
          const Center(child: CircularProgressIndicator()),
          Center(
            child: Column(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height - 140,
                  child: WebViewWidget(
                    controller: _controller,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
