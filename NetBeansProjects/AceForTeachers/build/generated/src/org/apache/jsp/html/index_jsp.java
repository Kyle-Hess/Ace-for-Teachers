package org.apache.jsp.html;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Ace for Teachers - Home</title>\n");
      out.write("        <link href=\"../css/main.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");

            if (session.getAttribute("userName") == null) {
                response.sendRedirect("login-page.jsp");
            }
        
      out.write("\n");
      out.write("\n");
      out.write("        <div id=\"header-container\">\n");
      out.write("            <div id=\"header\">\n");
      out.write("                <div id=\"navigation\">\n");
      out.write("                    <h1 class=\"logo\">ACE For Teachers</h1>\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                        <li><a href=\"lessons.jsp\">Lessons</a></li>\n");
      out.write("                        <li><a href=\"practice.jsp\">Practice</a></li>\n");
      out.write("                        <li><a href=\"videos.jsp\">Videos</a></li>\n");
      out.write("                        <li><form action=\"Logout\" method=\"POST\"><input type=\"submit\" value=\"Logout\"></form></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"content\">\n");
      out.write("            <h1 class=\"home-page\">Welcome back ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${userName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("!</h1>     \n");
      out.write("            <div class=\"topBanner\">\n");
      out.write("                <a href=\"lessons.jsp\">\n");
      out.write("                    <img src=\"../images/play_icon.PNG\" width=\"200\" height=\"200\">\n");
      out.write("                    <h2>Continue Lesson</h2>\n");
      out.write("                    <div class=\"top-container\">    \n");
      out.write("                        <div class=\"myProgress\">\n");
      out.write("                            <div class=\"myBar\">60%</div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>  \n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"hp-menu\">\n");
      out.write("                <ul class=\"hp-list\">\n");
      out.write("                    <li class=\"hp-list-item\">\n");
      out.write("                        <a class=\"hp-menu-item\">\n");
      out.write("                            <a href=\"lessons.jsp\">\n");
      out.write("                                <img src=\"../images/Lesson%20button.PNG\">\n");
      out.write("                            </a>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"hp-list-item\">\n");
      out.write("                        <a class=\"hp-menu-item\">\n");
      out.write("                            <a href=\"practice.jsp\">\n");
      out.write("                                <img src=\"../images/practice.PNG\">\n");
      out.write("                            </a>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"hp-list-item\">\n");
      out.write("                        <a class=\"hp-menu-item\">\n");
      out.write("                            <a href=\"profile.jsp\">\n");
      out.write("                                <img src=\"../images/profile.PNG\">\n");
      out.write("                            </a>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"bottomBanner\">\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
