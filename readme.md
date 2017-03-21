# Zeppelin on Openshift

A zeppelin notebook for Openshift leveraging [Oshinko](http://radanalytics.io/).

## Run

Install the Oshinko console and create a cluster named: `sparky`.

Type the following command to install the notebook:
```
mvn clean fabric8:deploy
```

It might take some time (over 1GB of data to download), depending on the speed of your connection.
