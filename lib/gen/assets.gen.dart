/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/image_not_found.png
  AssetGenImage get imageNotFound =>
      const AssetGenImage('assets/images/image_not_found.png');

  /// File path: assets/images/img_56101502sd00943.png
  AssetGenImage get img56101502sd00943 =>
      const AssetGenImage('assets/images/img_56101502sd00943.png');

  /// File path: assets/images/img_arrowleft.svg
  String get imgArrowleft => 'assets/images/img_arrowleft.svg';

  /// File path: assets/images/img_arrowleft_gray_400.svg
  String get imgArrowleftGray400 => 'assets/images/img_arrowleft_gray_400.svg';

  /// File path: assets/images/img_arrowright.svg
  String get imgArrowright => 'assets/images/img_arrowright.svg';

  /// File path: assets/images/img_bag.svg
  String get imgBag => 'assets/images/img_bag.svg';

  /// File path: assets/images/img_bag_24x24.svg
  String get imgBag24x24 => 'assets/images/img_bag_24x24.svg';

  /// File path: assets/images/img_facebook.svg
  String get imgFacebook => 'assets/images/img_facebook.svg';

  /// File path: assets/images/img_google.svg
  String get imgGoogle => 'assets/images/img_google.svg';

  /// File path: assets/images/img_lightbulb.svg
  String get imgLightbulb => 'assets/images/img_lightbulb.svg';

  /// File path: assets/images/img_location.svg
  String get imgLocation => 'assets/images/img_location.svg';

  /// File path: assets/images/img_lock.svg
  String get imgLock => 'assets/images/img_lock.svg';

  /// File path: assets/images/img_lock_24x24.svg
  String get imgLock24x24 => 'assets/images/img_lock_24x24.svg';

  /// File path: assets/images/img_maskgroup.png
  AssetGenImage get imgMaskgroup =>
      const AssetGenImage('assets/images/img_maskgroup.png');

  /// File path: assets/images/img_menu.svg
  String get imgMenu => 'assets/images/img_menu.svg';

  /// File path: assets/images/img_music.svg
  String get imgMusic => 'assets/images/img_music.svg';

  /// File path: assets/images/img_music_45x45.svg
  String get imgMusic45x45 => 'assets/images/img_music_45x45.svg';

  /// File path: assets/images/img_notification.svg
  String get imgNotification => 'assets/images/img_notification.svg';

  /// File path: assets/images/img_rectangle386.png
  AssetGenImage get imgRectangle386 =>
      const AssetGenImage('assets/images/img_rectangle386.png');

  /// File path: assets/images/img_search.svg
  String get imgSearch => 'assets/images/img_search.svg';

  /// File path: assets/images/img_search_gray_400.svg
  String get imgSearchGray400 => 'assets/images/img_search_gray_400.svg';

  /// File path: assets/images/img_steelseriesarc.png
  AssetGenImage get imgSteelseriesarc =>
      const AssetGenImage('assets/images/img_steelseriesarc.png');

  /// File path: assets/images/img_twitter.svg
  String get imgTwitter => 'assets/images/img_twitter.svg';

  /// File path: assets/images/img_user.svg
  String get imgUser => 'assets/images/img_user.svg';

  /// File path: assets/images/img_user_24x24.svg
  String get imgUser24x24 => 'assets/images/img_user_24x24.svg';

  /// File path: assets/images/img_vector6.png
  AssetGenImage get imgVector6 =>
      const AssetGenImage('assets/images/img_vector6.png');

  /// List of all assets
  List<dynamic> get values => [
        imageNotFound,
        img56101502sd00943,
        imgArrowleft,
        imgArrowleftGray400,
        imgArrowright,
        imgBag,
        imgBag24x24,
        imgFacebook,
        imgGoogle,
        imgLightbulb,
        imgLocation,
        imgLock,
        imgLock24x24,
        imgMaskgroup,
        imgMenu,
        imgMusic,
        imgMusic45x45,
        imgNotification,
        imgRectangle386,
        imgSearch,
        imgSearchGray400,
        imgSteelseriesarc,
        imgTwitter,
        imgUser,
        imgUser24x24,
        imgVector6
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
