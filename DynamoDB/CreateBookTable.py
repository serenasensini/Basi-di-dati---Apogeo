import boto3


def create_book_table(dynamodb=None):
    if not dynamodb:
        dynamodb = boto3.resource('dynamodb', endpoint_url="http://localhost:8000")

    table = dynamodb.create_table(
        TableName='books',
        KeySchema=[
            {
                'AttributeName': 'year',
                'KeyType': 'HASH'  
            },
            {
                'AttributeName': 'title',
                'KeyType': 'RANGE'  
            }
        ],
        AttributeDefinitions=[
            {
                'AttributeName': 'year',
                'AttributeType': 'N'
            },
            {
                'AttributeName': 'title',
                'AttributeType': 'S'
            },

        ],
        ProvisionedThroughput={
            'ReadCapacityUnits': 10,
            'WriteCapacityUnits': 10
        }
    )
    return table


if __name__ == '__main__':
    book_table = create_book_table()
    print("Table status:", book_table.table_status)