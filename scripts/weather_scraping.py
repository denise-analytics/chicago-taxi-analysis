"""Coleta dados meteorológicos de Chicago em uma tabela HTML."""

import pandas as pd
import requests
from bs4 import BeautifulSoup


URL = (
    "https://practicum-content.s3.us-west-1.amazonaws.com/"
    "data-analyst-eng/moved_chicago_weather_2017.html"
)


def collect_weather_data(url):
    """Acessa a página e transforma a tabela meteorológica em DataFrame."""

    response = requests.get(url, timeout=30)
    response.raise_for_status()

    soup = BeautifulSoup(response.text, "html.parser")
    table = soup.find("table", attrs={"id": "weather_records"})

    if table is None:
        raise ValueError("A tabela 'weather_records' não foi encontrada.")

    columns = [
        header.get_text(strip=True)
        for header in table.find_all("th")
    ]

    rows = []

    for row in table.find_all("tr"):
        cells = row.find_all("td")

        if cells:
            rows.append([
                cell.get_text(strip=True)
                for cell in cells
            ])

    return pd.DataFrame(rows, columns=columns)


if __name__ == "__main__":
    weather_records = collect_weather_data(URL)
    print(weather_records.to_string(index=False))