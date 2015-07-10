#!/bin/bash

API_PATH="http://localhost:10000/json"
read -d '' JSON <<EOF
{
	"id": 1,
	"method": "register",
	"params": {
		"username": "$1",
		"password": "$2",
		"password_verification": "$2"
	}
}
EOF

echo "Request:"
echo "$JSON"
echo "Response:"
curl --silent --data "$JSON" "$API_PATH"
echo ""
