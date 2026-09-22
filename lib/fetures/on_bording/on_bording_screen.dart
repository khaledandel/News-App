import 'package:flutter/material.dart';
import 'package:news_app/fetures/on_bording/controller/on_bording_controller.dart';
import 'package:news_app/fetures/on_bording/models/on_bording_model.dart';
import 'package:provider/provider.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext _) {
    return ChangeNotifierProvider<OnBordingController>(
      create: (BuildContext _) => OnBordingController(),
      builder: (context, _) {
        final controller = context.read<OnBordingController>();
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFF5F5F5),
            actions: [
              if (!controller.isLastIndex)
                Consumer<OnBordingController>(
                  builder:
                      (
                        BuildContext context,
                        OnBordingController index,
                        Widget? child,
                      ) {
                        return index.currentIndex == 2
                            ? SizedBox()
                            : TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Skip',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: .w400,
                                  ),
                                ),
                              );
                      },
                ),
            ],
          ),

          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    itemCount: OnBordingModel.onBordingList.length,
                    controller: controller.pageController,
                    onPageChanged: (index) {
                      context.read<OnBordingController>().changeIndex(index);
                    },
                    itemBuilder: (BuildContext context, int index) {
                      final model = OnBordingModel.onBordingList[index];
                      return SafeArea(
                        child: Column(
                          children: [
                            Image.asset(model.imagePath),
                            SizedBox(height: 24),
                            Text(
                              model.title,
                              style: TextStyle(
                                color: Color(0xFF4E4B66),
                                fontSize: 20,
                                fontWeight: .w700,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              model.desc,
                              textAlign: .center,
                              style: TextStyle(
                                color: Color(0xFF6E7191),
                                fontSize: 16,
                                fontWeight: .w400,
                              ),
                            ),

                            // Spacer(),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                Consumer<OnBordingController>(
                  builder: (BuildContext context, value, Widget? child) {
                    return Row(
                      mainAxisAlignment: .center,
                      children: [
                        ...List.generate(
                          3,
                          (index) => Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(
                                value.currentIndex == index
                                    ? 0XffC53030
                                    : 0xffD3D3D3,
                              ),
                              //#D3D3D3
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                SizedBox(height: 162),
                Consumer<OnBordingController>(
                  builder: (BuildContext context, value, Widget? child) {
                    return ElevatedButton(
                      onPressed: () {
                        controller.pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(MediaQuery.of(context).size.width, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      child: Text(
                        (controller.isLastIndex) ? 'Get Started' : 'Next',
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
