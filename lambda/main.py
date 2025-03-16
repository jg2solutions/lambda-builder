import json

def lambda_handler(event, context):
    print("Lambda executada com sucesso!", event)
    return {
        "statusCode": 200,
        "body": json.dumps({"message": "Hello from Lambda!"})
    }
