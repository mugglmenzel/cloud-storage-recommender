
lazy val root = (project in file(".")).enablePlugins(SbtWeb)

name := "cloud-storage-recommender"

version := "1.0"

scalaVersion := "2.11.7"

libraryDependencies ++= Seq(
  "com.amazonaws" % "aws-lambda-java-core" % "1.1.0"
  )

includeFilter in (Assets, LessKeys.less) := "recommender.less"
LessKeys.compress in Assets := true

pipelineStages := Seq(uglify)