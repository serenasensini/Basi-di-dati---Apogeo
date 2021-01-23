from decimal import Decimal
import json
import boto3


def load_books(books, dynamodb=None):
    if not dynamodb:
        dynamodb = boto3.resource('dynamodb', endpoint_url="http://localhost:8000")

    table = dynamodb.Table('books')
    for book in books:
        year = int(book['Anno'])
        title = book['Titolo']
        print("Adding book:", year, title)
        table.put_item(Item=book)


if __name__ == '__main__':
    with open("bookdata.json") as json_file:
        book_list = json.load(json_file, parse_float=Decimal)
    load_books(book_list)