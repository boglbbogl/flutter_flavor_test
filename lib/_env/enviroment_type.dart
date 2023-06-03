enum EnviromentType {
  dev(type: "DEV", url: "https://tyger_dev.com"),
  qa(type: "QA", url: "https://tyger_dev.com"),
  prod(type: "PROD", url: "https://tyger_dev.com");

  final String type;
  final String url;

  const EnviromentType({
    required this.type,
    required this.url,
  });
}
