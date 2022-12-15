import os
import openai
import re
from datetime import datetime
import requests

openai.api_key = "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"

human = "write for me ten titles for news article that are going to generate local internet traffic from Burbank California"

response = openai.Completion.create(
  model="text-davinci-003",
  prompt="The following is a conversation with an AI assistant. The assistant is helpful, creative, clever, and very friendly.\n\nHuman: Hello, who are you?\nAI: I am an AI created by OpenAI. How can I help you today?\nHuman: "+ human +"\nAI:",
  temperature=0.9,
  max_tokens=2000,
  top_p=1,
  frequency_penalty=0.0,
  presence_penalty=0.6,
  stop=[" Human:", " AI:"]
)

titles = response.choices[0].text

print(titles)

titles_array = titles.split("\n")

print(titles_array)

# Loop through the array of strings
for title in titles_array:
    # Print each string
    print(title)
    if "." in title:
        print("The string contains a period.")
        period_index = title.find(".")
        # Extract the substring from the period to the end of the string
        substring = title[period_index +1:]
        # Print the substring
        print(substring)
        substring = substring.replace('"', '')
        substring = substring.strip()
        print(substring)
        human = "write news article on this topic " + substring
        responsearticle = openai.Completion.create(
          model="text-davinci-003",
          prompt="The following is a conversation with an AI assistant. The assistant is helpful, creative, clever, and very friendly.\n\nHuman: Hello, who are you?\nAI: I am an AI created by OpenAI. How can I help you today?\nHuman: "+ human +"\nAI:",
          temperature=0.9,
          max_tokens=2000,
          top_p=1,
          frequency_penalty=0.0,
          presence_penalty=0.6,
          stop=[" Human:", " AI:"]
        )
        article = responsearticle.choices[0].text
        print(article)

        human = "write one sentence on this topic " + substring
        responsesentence = openai.Completion.create(
          model="text-davinci-003",
          prompt="The following is a conversation with an AI assistant. The assistant is helpful, creative, clever, and very friendly.\n\nHuman: Hello, who are you?\nAI: I am an AI created by OpenAI. How can I help you today?\nHuman: "+ human +"\nAI:",
          temperature=0.9,
          max_tokens=2000,
          top_p=1,
          frequency_penalty=0.0,
          presence_penalty=0.6,
          stop=[" Human:", " AI:"]
        )
        sentence = responsesentence.choices[0].text
        print(sentence)

        filename = re.sub(r'[^a-zA-Z ]', '', substring)
        print(filename)
        # Replace spaces with underscores in the string
        filename = filename.replace(" ", "_") + ".html"
        # Print the resulting string
        print(filename)
        # Define the path to the file
        file_path = "/var/lib/tomcat9/webapps4/ROOT/pages/news/template.html"
        # Open the file in read-only mode
        with open(file_path, "r") as file:
            # Read the contents of the file into a string
            file_contents = file.read()


        # Get the current date and time
        now = datetime.now()

        # Format the date and time as a string
        date_time_str = now.strftime("%B %d, %Y at %I:%M %p")

        try:
            responseimg = openai.Image.create(
              prompt= "style " + substring + " dog",
              n=1,
              size="512x512"
            )
        except Exception:
            # code that will be executed if any error is raised
            # result = handle_error()
            # add random file from existing stock photos
            print("Failed AI Image")
        else:
            # code that will be executed if no errors are raised
            image_url = responseimg['data'][0]['url']
            print(image_url)
            URL = image_url
            response = requests.get(URL)
            open("/var/lib/tomcat9/webapps4/ROOT/pages/news/images/" + filename + ".png", "wb").write(response.content)

        # Print the resulting string
        file_contents = file_contents.replace("<BL-KEYWORD>", sentence)
        file_contents = file_contents.replace("<BL-TXT>", substring)
        file_contents = file_contents.replace("<BL-THREF>", filename)
        file_contents = file_contents.replace("<BL-LHREF>", filename)
        file_contents = file_contents.replace("<BL-IMG>", filename + ".png")
        file_contents = file_contents.replace("<BL-DATE>", date_time_str)
        file_contents = file_contents.replace("<BL-TITLE>", substring)
        file_contents = file_contents.replace("<BL-TITLE-DES>", sentence)
        file_contents = file_contents.replace("<BL-P-LOW>", article.replace("\n", "<BR>"))
        print(file_contents)

        file_path = "/var/lib/tomcat9/webapps4/ROOT/pages/news/published/" + filename
        with open(file_path, "w") as file:
            # Write the string to the file
            file.write(file_contents)
    else:
        print("The string does not contain a period.")
