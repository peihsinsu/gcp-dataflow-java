# Dataflow Java using Maven

Here is a sample using dataflow java in docker. 

## Run the env

```
$ docker run -it peihsinsu/gcp-dataflow-java bash
```

## Auth 

You need do auth in the docker instance.

Inside docker:

```
docker auth login
docker auth application-default login
```

## Run

Inside docker...

### Create the project

```
mvn archetype:generate \
      -DarchetypeArtifactId=google-cloud-dataflow-java-archetypes-examples \
      -DarchetypeGroupId=com.google.cloud.dataflow \
      -DgroupId=com.example \
      -DartifactId=first-dataflow \
      -Dversion="0.1" \
      -DinteractiveMode=false \
      -Dpackage=com.google.cloud.dataflow.examples
```

### Run the example

```
mvn compile exec:java \
      -Dexec.mainClass=com.google.cloud.dataflow.examples.WordCount \
      -Dexec.args="--project=<my-cloud-project> \
      --stagingLocation=gs://<my-wordcount-storage-bucket>/staging/ \
      --output=gs://<your-bucket-id>/output \
      --runner=BlockingDataflowPipelineRunner"
```

## Ref

* https://cloud.google.com/dataflow/docs/quickstarts/quickstart-java-maven
