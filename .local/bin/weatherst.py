import requests

API_KEY = "41e86e5bd4084a72bb2104359252607"
CITY = "mansoura,eg"

def get_weather():
    url = f"http://api.weatherapi.com/v1/current.json?key={API_KEY}&q={CITY}&aqi=no"

    try:
        response = requests.get(url)
        data = response.json()

        if 'error' not in data:
            temp = int(data['current']['temp_c'])

            print(f"{temp}°C")
        else:
            print(f"Error")
    except Exception as e:
        print(f"Errror: {e}")

get_weather()
