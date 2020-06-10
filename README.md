[![Language grade: Python](https://img.shields.io/lgtm/grade/python/g/vinayski/curl.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/vinayski/curl/context:docker)

## how to use this minimal curl docker image with kubernetes

```
docker run -it vinayski/curl google.com

kubectl run curl --image=vinayski/curl --restart=Never -it --rm  http://<any url inside k8 cluster>
eg:
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
