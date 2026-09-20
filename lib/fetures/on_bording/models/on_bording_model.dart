class OnBordingModel {
  final String imagePath;
  final String title;
  final String desc;

  OnBordingModel({
    required this.imagePath,
    required this.title,
    required this.desc,
  });

  static List<OnBordingModel> onBordingList = [
    OnBordingModel(
      imagePath: 'assets/images/page_view_builder_one.png',
      title: 'Trending News',
      desc:
          'Stay in the loop with the biggest breaking stories in a stunning visual slider. Just swipe to explore what’s trending right now!',
    ),
    OnBordingModel(
      imagePath: 'assets/images/page_view_builder_two.png',
      title: 'Pick What You Love',
      desc:
          'No more endless scrolling! Tap into your favorite topics like Tech, Politics, or Sports and get personalized news in seconds',
    ),
    OnBordingModel(
      imagePath: 'assets/images/page_view_builder_three.png',
      title: 'Save It. Read It Later. Stay Smart.',
      desc:
          'Found something interesting? Tap the bookmark and come back to it anytime. Never lose a great read again!',
    ),
  ];
}
