enum EnviromentType {
  dev(
    type: "DEV",
    url: "https://tyger_dev.com",
    kakaoKey: "{dev_native_app_key}",
  ),
  qa(
    type: "QA",
    url: "https://tyger_dev.com",
    kakaoKey: "{qa_native_app_key}",
  ),
  prod(
    type: "PROD",
    url: "https://tyger.com",
    kakaoKey: "{native_app_key}",
  );

  final String type;
  final String url;
  final String kakaoKey;

  const EnviromentType({
    required this.type,
    required this.url,
    required this.kakaoKey,
  });
}
