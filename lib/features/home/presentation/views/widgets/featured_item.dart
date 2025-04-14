import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_style.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/featured_item_button.dart';
import 'package:svg_flutter/svg.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: itemWidth,
      child: AspectRatio(
        aspectRatio: 342 / 158,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: itemWidth * .4,
              child: SvgPicture.asset(
                Assets.assetsImagesPageViewItem2Image,
                fit: BoxFit.fill,
              ),
            ),
            Container(
                width: itemWidth * .5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: svg.Svg(Assets.assetsImagesFeaturedItem),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        'عروض العيد',
                        style:
                            TextStyles.regular13.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      Text(
                        'خصم 25%',
                        style: TextStyles.bold19.copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      FeaturedItemButton(onPressed: () {}),
                      const SizedBox(
                        height: 29,
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
