<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="org.json.*" %>

<%
   // Set the API key for OpenWeatherMap
   String apiKey = "your-api-key-here";

   // Set the location to get weather data for
   String city = "Burbank";
   String countryCode = "CA";

   // Construct the URL for the OpenWeatherMap API
   // onecall?lat={lat}&lon={lon}&exclude={part}&appid={API key}
   String urlString = "http://api.openweathermap.org/data/3.0/onecall?" +
                      "lat=34.180839&lon=-118.308966&appid=" + apiKey;
   URL url = new URL(urlString);

   // Open a connection to the URL and read the response
   BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream()));
   String responseJson = "";
   String line;
   while ((line = reader.readLine()) != null) {
      responseJson += line;
   }
   reader.close();

   // Parse the response as a JSON object
//   JSONObject json = new JSONObject(responseJson);

   // Get the weather data from the JSON object/
//   JSONObject weatherData = json.getJSONArray("weather").getJSONObject(0);
//   String description = weatherData.getString("description");
//   double temperature = json.getJSONObject("main").getDouble("temp");

   // Print the weather data
   %>
   <%=responseJson%>
sss
