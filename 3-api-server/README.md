# 

```bash
docker run --name sisho-demo-db -e POSTGRES_PASSWORD=test -v ./init.sql:/docker-entrypoint-initdb.d/init.sql -d -p 5432:5432 postgres
```

```bash
docker rm -f sisho-demo-db
```

```bash
sisho make models/todo.js usecases/getTodos/index.js usecases/postTodo/index.js server/index.js -a
```

```bash
node index.js
```

```bash
curl -X GET 'http://localhost:3000/todos?page=1&countParPage=10' -H 'accept: application/json'
curl -X GET 'http://localhost:3000/todos?page=1&countParPage=10&query=example' -H 'accept: application/json'

curl -X POST 'http://localhost:3000/todos' -H 'Content-Type: application/json' -d '{
  "id": "example-id",
  "title": "Sample Todo",
  "description": "This is a sample description"
}'
```

# Directory Structure

* server
  * Entry point
  * Routing
* usecases
  * Business logic
* models
  * Models corresponding to tables