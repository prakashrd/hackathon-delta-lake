package com.anz.hackathon.delta.lake

import org.apache.spark.sql.{SaveMode, SparkSession}

object SparkClient {

  implicit val spark = SparkSession.builder().appName(s"Attribute-to-Segement-Transformer").config("spark.speculation", false).getOrCreate()

  val data = spark.range(0, 5)
  data.write.format("delta").save("/tmp/delta-table")
}
