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
   String urlString = "http://api.openweathermap.org/data/2.5/weather?" +
                      "q=" + city + "," + countryCode + "&units=imperial&appid=" + apiKey;
   URL url = new URL(urlString);

   // Open a connection to the URL and read the response
   BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream()));
   String response = "";
   String line;
   while ((line = reader.readLine()) != null) {
      response += line;
   }
   reader.close();

   // Parse the response as a JSON object
   JSONObject json = new JSONObject(response);

   // Get the weather data from the JSON object
   JSONObject weatherData = json.getJSONArray("weather").getJSONObject(0);
   String description = weatherData.getString("description");
   double temperature = json.getJSONObject("main").getDouble("temp");

   // Print the weather data
   out.println("Current weather in " + city + ": ");
   out.println("Description: " + description);
   out.println("Temperature: " + temperature + "F");
%>
