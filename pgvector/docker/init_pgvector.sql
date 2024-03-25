-- Install the extension we just compiled

CREATE EXTENSION IF NOT EXISTS vector;

/*
For simplicity, we are directly adding the content into this table as
a column containing text data. It could easily be a foreign key pointing to
another table instead that has the content you want to vectorize for
semantic search, just storing here the vectorized content in our "items" table.

"1536" dimensions for our vector embedding is critical - that is the
number of dimensions our aws bedrock embeddings model "amazon.titan-embed-text-v1" shall generate.
*/

CREATE TABLE items (id bigserial PRIMARY KEY, content TEXT, embedding vector(1536));