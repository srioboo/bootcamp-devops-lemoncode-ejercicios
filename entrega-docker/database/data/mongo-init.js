db = db.getSiblingDB("TopicstoreDb");

db.createCollection("Topics");

db.Topics.insertMany([
  {
    Name: "Contenedores",
  },
  {
    Name: "Docker",
  },
  {
    Name: "Kubernetes",
  },
]);
