CREATE TABLE todos (
      id UUID PRIMARY KEY,
      title VARCHAR(255) NOT NULL,
      description TEXT NOT NULL
);

INSERT INTO todos (id, title, description) VALUES
     ('f48a1a55-8db0-4f2b-a31f-11b8a6e04d57', 'Buy groceries', 'Need to buy milk, bread, and eggs'),
     ('bc8bca78-98a3-4c1f-bc38-8e9b68dbfa63', 'Finish project', 'Complete the presentation for the project'),
     ('de6a8a2f-9b4d-4a5e-8cde-14e8f49d2f7d', 'Clean the house', 'Do a thorough cleaning of the living room'),
     ('ae9f8b12-567a-4ba7-9e74-07a17f512f17', 'Read a book', 'Start reading the new novel'),
     ('b7a7a6d9-e4e8-4d6a-9fc2-84d9f0123f9a', 'Workout', 'Go to the gym for an hour of exercise'),
     ('f264b93f-33eb-4b88-9d56-5023a5b23c9f', 'Call mom', 'Catch up with mom over the phone'),
     ('98e8b4ef-850f-44d6-8664-d1be441d891b', 'Plan vacation', 'Research and plan the next family vacation'),
     ('f3578e5c-e63f-4f60-8961-92f8721abdbd', 'Pay bills', 'Pay the electricity and water bills'),
     ('d3b3d8f5-4ef9-4f6c-aabb-2e5488ef91c8', 'Attend meeting', 'Join the team meeting at 10 AM'),
     ('accde1bc-9f16-4b1b-bc69-3b5e8459d52d', 'Submit report', 'Send the monthly report to the manager');
