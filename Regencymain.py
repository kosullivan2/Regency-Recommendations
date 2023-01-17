import requests
import json

answer = input('What sort of book are you looking for? Please select from the following: \n clean, relatively_clean, adult_content, happy_endings, fantasy, film_or_tv_series,\n classics, witty, frothy, heart-warming, uplifting, Jane_Austen_inspired \n ')

def get_suggested_author(answer):
    response = requests.get("http://127.0.0.1:5001/author/{}".format(answer)
                            # , headers={'content-type': 'application/json'}
                            )
    print(response.json())
    return response

if __name__ == "__main__":
    get_suggested_author(answer)