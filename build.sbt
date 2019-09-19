
lazy val root = (project in file(".")).
  settings(
    organization := "com.anz",
    name := "hackathon-delta-lake",
    scalaVersion := "2.12.6",
    mainClass in Compile := Some("com.anz.hackathon.delta.lake.SparkClient"),
    version := "0.1"
  )

libraryDependencies ++= Seq(
  // https://mvnrepository.com/artifact/org.apache.spark/spark-core
  "io.delta" %% "delta-core" % "0.3.0",
  "org.apache.spark" %% "spark-core" % "2.4.3",
  "org.apache.spark" %% "spark-sql" % "2.4.3",


)