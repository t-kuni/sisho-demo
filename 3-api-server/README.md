# Api Server Generation Demo

This demo generates code to start an API Server in Node.js. It generates API and DB access code based on [open-api.yaml](./open-api.yaml) and [init.sql](./init.sql). You can get different results by modifying the specifications and generating the code again.

# Usage

Install the [Sisho](https://github.com/t-kuni/sisho).

```bash
GOPROXY=direct go install github.com/t-kuni/sisho@master
```

Generate codes.

```bash
export ANTHROPIC_API_KEY="YOUR_API_KEY"
sisho make models/todo.js usecases/getTodos/index.js usecases/postTodo/index.js server/index.js -a
````

Boot the DB.

```bash
docker run --name sisho-demo-db -e POSTGRES_PASSWORD=test -v ./init.sql:/docker-entrypoint-initdb.d/init.sql -d -p 5432:5432 postgres
```

Boot the server.

```bash
node index.js
```

Access the server.

```bash
curl -X GET 'http://localhost:3000/todos?page=1&countParPage=10' -H 'accept: application/json'
curl -X GET 'http://localhost:3000/todos?page=1&countParPage=10&query=of' -H 'accept: application/json'

curl -X POST 'http://localhost:3000/todos' -H 'Content-Type: application/json' -d '{
  "title": "Sample Todo",
  "description": "This is a sample description"
}'
curl -X POST 'http://localhost:3000/todos' -H 'Content-Type: application/json' -d '{
  "id": "98e8b4ef-850f-44d6-8664-d1be441d891b",
  "title": "Updated Todo",
  "description": "This is a sample description (updated)"
}'
```

Delete the DB.

```bash
docker rm -f sisho-demo-db
```

# Directory Structure

* server
  * Entry point
  * Routing
* usecases
  * Business logic
  * Depends on infrastructure via DI
* infrastructure
  * External communication
* models
  * Models corresponding to tables

# For Development

Show logs.

```
docker logs sisho-demo-db
```

Show tables.

```
docker exec -it sisho-demo-db psql -U postgres -c "\dt"
```