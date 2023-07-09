package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ChartDirector.*;

public final class graph2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');

// The data for the bar chart
String LR=request.getParameter("LR");
String CF=request.getParameter("CF");
double prediction=Double.parseDouble(LR);
double prediction2=Double.parseDouble(CF);
// The data for the bar chart
double[] data = {prediction, prediction2};

// The labels for the bar chart
String[] labels = {"Linear Regression", "Collaborative Filtering"};

// Create a XYChart object of size 600 x 360 pixels
XYChart c = new XYChart(600, 360);

// Set the plotarea at (70, 20) and of size 500 x 300 pixels, with transparent background and border
// and light grey (0xcccccc) horizontal grid lines
c.setPlotArea(70, 20, 500, 300, Chart.Transparent, -1, Chart.Transparent, 0xcccccc);

// Set the x and y axis stems to transparent and the label font to 12pt Arial
c.xAxis().setColors(Chart.Transparent);
c.yAxis().setColors(Chart.Transparent);
c.xAxis().setLabelStyle("Arial", 12);
c.yAxis().setLabelStyle("Arial", 12);

// Add a blue (0x6699bb) bar chart layer using the given data
BarLayer layer = c.addBarLayer(data, 0x6699bb);

// Use bar gradient lighting with the light intensity from 0.8 to 1.3
layer.setBorderColor(Chart.Transparent, Chart.barLighting(0.8, 1.3));

// Set rounded corners for bars
layer.setRoundedCorners();

// Display labela on top of bars using 12pt Arial font
layer.setAggregateLabelStyle("Arial", 12);

// Set the labels on the x axis.
c.xAxis().setLabels(labels);

// For the automatic y-axis labels, set the minimum spacing to 40 pixels.
c.yAxis().setTickDensity(40);

// Add a title to the y axis using dark grey (0x555555) 14pt Arial Bold font
c.yAxis().setTitle("Cost", "Arial Bold", 14, 0x555555);

// Output the chart
String chart1URL = c.makeSession(request, "chart1");

// Include tool tip for the chart
String imageMap1 = c.getHTMLImageMap("", "", "title='{xLabel}: ${value}M'");

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<body style=\"margin:5px 0px 0px 5px\">\r\n");
      out.write("<div style=\"font-size:18pt; font-family:verdana; font-weight:bold\">\r\n");
      out.write("    Prediction Bar Chart\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<img src='");
      out.print(response.encodeURL("getchart.jsp?"+chart1URL));
      out.write("'\r\n");
      out.write("    usemap=\"#map1\" border=\"0\">\r\n");
      out.write("<map name=\"map1\">");
      out.print(imageMap1);
      out.write("</map>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else log(t.getMessage(), t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
