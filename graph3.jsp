<%@page import="ChartDirector.*" %>
<%
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
%>
<html>
<body style="margin:5px 0px 0px 5px">
<div style="font-size:18pt; font-family:verdana; font-weight:bold">
    Prediction Bar Chart
</div>


<img src='<%=response.encodeURL("getchart.jsp?"+chart1URL)%>'
    usemap="#map1" border="0">
<map name="map1"><%=imageMap1%></map>
</body>
</html>
