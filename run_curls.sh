#!/bin/bash

# Rota base definida pelo documento
BASE_URL="http://127.0.0"

# 1. Demo Create an Account (rest-create-done)
echo "--- COMMAND ---" > rest-create-done
echo "curl -i -X POST $BASE_URL -H \"Content-Type: application/json\" -d '{\"name\":\"John Doe\",\"email\":\"john@doe.com\",\"address\":\"123 Main St.\",\"phone_number\":\"555-1212\"}'" >> rest-create-done
echo -e "\n--- OUTPUT ---" >> rest-create-done
curl -i -X POST http://127.0.0 \
  -H "Content-Type: application/json" \
  -d '{"name":"John Doe","email":"john@doe.com","address":"123 Main St.","phone_number":"555-1212"}' >> rest-create-done

# 2. Demo List All Accounts (rest-list-done)
echo "--- COMMAND ---" > rest-list-done
echo "curl -i -X GET $BASE_URL" >> rest-list-done
echo -e "\n--- OUTPUT ---" >> rest-list-done
curl -i -X GET http://127.0.0 >> rest-list-done

# 3. Demo Read an Account (rest-read-done)
echo "--- COMMAND ---" > rest-read-done
echo "curl -i -X GET $BASE_URL/1" >> rest-read-done
echo -e "\n--- OUTPUT ---" >> rest-read-done
curl -i -X GET http://127.0.0/1 >> rest-read-done

# 4. Demo Update an Account (rest-update-done)
echo "--- COMMAND ---" > rest-update-done
echo "curl -i -X PUT $BASE_URL/1 -H \"Content-Type: application/json\" -d '{\"name\":\"John Doe\",\"email\":\"john@doe.com\",\"address\":\"123 Main St.\",\"phone_number\":\"555-1111\"}'" >> rest-update-done
echo -e "\n--- OUTPUT ---" >> rest-update-done
curl -i -X PUT http://127.0.0/1 \
  -H "Content-Type: application/json" \
  -d '{"name":"John Doe","email":"john@doe.com","address":"123 Main St.","phone_number":"555-1111"}' >> rest-update-done

# 5. Demo Delete an Account (rest-delete-done)
echo "--- COMMAND ---" > rest-delete-done
echo "curl -i -X DELETE $BASE_URL/1" >> rest-delete-done
echo -e "\n--- OUTPUT ---" >> rest-delete-done
curl -i -X DELETE http://127.0.0/1 >> rest-delete-done
