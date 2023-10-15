import 'package:flutter/material.dart';

class SmoothPageIndicator extends StatefulWidget {
  final List<Widget> images;

  SmoothPageIndicator({required this.images});

  @override
  _SmoothPageIndicatorState createState() => _SmoothPageIndicatorState();
}

class _SmoothPageIndicatorState extends State<SmoothPageIndicator> {
  PageController _pageController = PageController(viewportFraction: 0.8);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            children: widget.images,
          ),
        ),
        _buildIndicator(),
      ],
    );
  }

  Widget _buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        widget.images.length,
        (index) => _buildDot(index),
      ),
    );
  }

  Widget _buildDot(int index) {
    double dotSize = 8.0;
    double lineHeight = 5.0;
    double spacing = 8.0;
    Color color =
        (index == _currentPage) ? Color(0xffe7323e) : Color(0xff2a2a2a);

    if (index == _currentPage) {
      return Container(
        width: dotSize * 2.5,
        height: lineHeight,
        margin: EdgeInsets.all(spacing),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(lineHeight / 2),
          color: color,
        ),
      );
    } else {
      return Container(
        width: dotSize,
        height: dotSize,
        margin: EdgeInsets.all(spacing),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      );
    }
  }
}

/*import 'package:flutter/material.dart';

class SmoothPageIndicator extends StatelessWidget {
  final int count;
  final int activeIndex;

  SmoothPageIndicator({required this.count, required this.activeIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        count,
        (index) => _buildDot(index),
      ),
    );
  }

  Widget _buildDot(int index) {
    double dotSize = 10.0;
    double lineHeight = 10.0;
    double spacing = 8.0;
    Color color =
        (index == activeIndex) ? Color(0xffe7323e) : Color(0xff2a2a2a);

    if (index == activeIndex) {
      return Container(
        width: dotSize * 2.5,
        height: lineHeight,
        margin: EdgeInsets.all(spacing),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(lineHeight / 2),
          color: color,
        ),
      );
    } else {
      return Container(
        width: dotSize,
        height: dotSize,
        margin: EdgeInsets.all(spacing),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      );
    }
  }
}
*/
