from elasticsearch import Elasticsearch

# Create the client instance
client = Elasticsearch("http://localhost:9200")
# es = Elasticsearch([{'host': 'localhost', 'port': 9200}])

# Successful response!
client.info()
#print(es.info())
# {'name': 'instance-0000000000', 'cluster_name': ...}



