import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/splash/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        controller: pageController,
        children: [
          PageViewItem(
            isVisible: true,
            image: Assets.imagesFruitBasket,
            backggroundImage: Assets.imagesOrangeBackgroend,
            subTitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'مرحبًا بك في ',
                  style: Styles.textStyle28Bold,
                ),
                Text(
                  'HUB',
                  style: Styles.textStyle28Bold
                      .copyWith(color: AppColor.kSecondryColor),
                ),
                Text(
                  'Fruit',
                  style: Styles.textStyle28Bold
                      .copyWith(color: AppColor.kPrimaryColor),
                ),
              ],
            ),
          ),
          const PageViewItem(
            isVisible: false,
            image: Assets.imagesPineapple,
            backggroundImage: Assets.imagesTeelBackgroend,
            subTitle:
                'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
            title: Text(
              'ابحث وتسوق',
              style: Styles.textStyle28Bold,
            ),
          )
        ],
      ),
    );
  }
}
