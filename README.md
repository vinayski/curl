# how to use this docker image with kubernetes

```
kubectl run curl --image=vinayski/curl --restart=Never -it --rm  http://elasticsearch:9200/current-datetime/_search/\?size\=1000\&pretty\=true
{
  "error" : {
    "root_cause" : [
      {
        "type" : "index_not_found_exception",
        "reason" : "no such index [current-datetime]",
        "resource.type" : "index_or_alias",
        "resource.id" : "current-datetime",
        "index_uuid" : "_na_",
        "index" : "current-datetime"
      }
    ],
    "type" : "index_not_found_exception",
    "reason" : "no such index [current-datetime]",
    "resource.type" : "index_or_alias",
    "resource.id" : "current-datetime",
    "index_uuid" : "_na_",
    "index" : "current-datetime"
  },
  "status" : 404
}
pod "curl" deleted
```
