# kong-railway
Deployment of Kong on Railway
This deployment assumes that a 'kong' database created in advance with an instance of PostgreSQL provisioned in Railway.

# Caddy Load Balancer
## Mode:
* Least Connections (least_conn): Distributes requests to server with least number of connection.
* Round Robin (round_robin): Distributes requests in a circular order.
* Random (random): Distributes requests randomly.
* First (first): Always uses the first server in the list.
* URI hash (uri_hash): Distributes requests based on the hash of the URI.

