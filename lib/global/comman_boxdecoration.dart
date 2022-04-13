import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

class InnerShadow extends SingleChildRenderObjectWidget {
  const InnerShadow({
    Key? key,
    this.blur = 10,
    this.color = Colors.black38,
    this.offset = const Offset(10, 10),
    Widget? child,
  }) : super(key: key, child: child);
  final double blur;
  final Color color;
  final Offset offset;
  @override
  RenderObject createRenderObject(BuildContext context) {
    final _RenderInnerShadow renderObject = _RenderInnerShadow();
    updateRenderObject(context, renderObject);
    return renderObject;
  }

  @override
  void updateRenderObject(
      BuildContext context, _RenderInnerShadow renderObject) {
    renderObject
      ..color = color
      ..blur = blur
      ..dx = offset.dx
      ..dy = offset.dy;
  }
}

class _RenderInnerShadow extends RenderProxyBox {
  late double blur;
  late Color color;
  late double dx;
  late double dy;
  @override
  void paint(PaintingContext context, Offset offset) {
    if (child == null) return;
    final Rect rectOuter = offset & size;
    final Rect rectInner = Rect.fromLTWH(
      offset.dx,
      offset.dy,
      size.width - dx,
      size.height - dy,
    );
    final Canvas canvas = context.canvas..saveLayer(rectOuter, Paint());
    context.paintChild(child!, offset);
    final Paint shadowPaint = Paint()
      ..blendMode = BlendMode.srcATop
      ..imageFilter = ImageFilter.blur(sigmaX: blur, sigmaY: blur)
      ..colorFilter = ColorFilter.mode(color, BlendMode.srcOut);
    canvas
      ..saveLayer(rectOuter, shadowPaint)
      ..saveLayer(rectInner, Paint())
      ..translate(dx, dy);
    context.paintChild(child!, offset);
    context.canvas..restore()..restore()..restore();
  }
}

Widget commanTextfiled({Function()? ontap}) {
  return InnerShadow(
      blur: 5,
      color: Colors.white,
      offset: const Offset(3, 3),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: TextField(
          onTap: ontap,
          decoration: InputDecoration(
            fillColor: Color(0xff303234),
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(25)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white.withOpacity(0.1)),
                borderRadius: BorderRadius.circular(25)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
            hintText: 'Search your fav food',
            hintStyle: TextStyle(
                fontFamily: 'Dosis-Regulars',
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(19),
              child: SvgPicture.asset(
                'assets/svg/serach.svg',
                color: Color(0xffB9BECC),
              ),
            ),
          ),
        ),
      ));
}
