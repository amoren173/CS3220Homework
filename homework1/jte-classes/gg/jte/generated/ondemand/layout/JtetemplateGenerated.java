package gg.jte.generated.ondemand.layout;
public final class JtetemplateGenerated {
	public static final String JTE_NAME = "layout/template.jte";
	public static final int[] JTE_LINE_INFO = {0,0,0,0,9,9,9,9,42,42,42,57,57,57,0,1,1,1,1};
	public static void render(gg.jte.html.HtmlTemplateOutput jteOutput, gg.jte.html.HtmlInterceptor jteHtmlInterceptor, gg.jte.Content content, String title) {
		jteOutput.writeContent("<!doctype html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\"\r\n          content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n    <title>");
		jteOutput.setContext("title", null);
		jteOutput.writeUserContent(title);
		jteOutput.writeContent("</title>\r\n    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n</head>\r\n<body>\r\n<div>\r\n    <nav class=\"navbar navbar-expand-lg bg-primary\" data-bs-theme=\"dark\">\r\n        <div class=\"container-fluid\">\r\n            <a class=\"navbar-brand\" href=\"/\"><img src=\"dolphin128x128.png\" height=\"25px\">Dolphins Swim Academy</a>\r\n            <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n                <span class=\"navbar-toggler-icon\"></span>\r\n            </button>\r\n            <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n                <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n                    <li class=\"nav-item\">\r\n                        <a class=\"nav-link\" href=\"/displayclasses\">Classes</a>\r\n                    </li>\r\n                    <li class=\"nav-item\">\r\n                        <a class=\"nav-link\" href=\"/students\">Students</a>\r\n                    </li>\r\n                    <li class=\"nav-item\">\r\n                        <a class=\"nav-link\" href=\"#\">Coaches</a>\r\n                    </li>\r\n                    <li>\r\n                        <a class=\"nav-link\" href=\"/registerclass\">Create New Class</a>\r\n                    </li>\r\n\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </nav>\r\n</div>\r\n\r\n<main>\r\n    ");
		jteOutput.setContext("main", null);
		jteOutput.writeUserContent(content);
		jteOutput.writeContent("\r\n</main>\r\n\r\n\r\n<div class=\"container mt-5\" >\r\n\r\n    <p class=\"p-3 mb-2 bg-light text-light-emphasis text-center\">\r\n        Copyright &copy; Dolphins Swim Academy 2024<br>\r\n        Dolphin icon is created by <a href=\"https://www.flaticon.com/authors/freepik\">Freepik</a> from <a href=\"https://www.flaticon.com/\">Flaticon</a>\r\n    </p>\r\n</div>\r\n\r\n<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz\" crossorigin=\"anonymous\"></script>\r\n</body>\r\n</html>\r\n");
	}
	public static void renderMap(gg.jte.html.HtmlTemplateOutput jteOutput, gg.jte.html.HtmlInterceptor jteHtmlInterceptor, java.util.Map<String, Object> params) {
		gg.jte.Content content = (gg.jte.Content)params.get("content");
		String title = (String)params.get("title");
		render(jteOutput, jteHtmlInterceptor, content, title);
	}
}
