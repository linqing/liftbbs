name := "liftbase"

organization := "no.ovstetun"

version := "0.1-SNAPSHOT"

scalaVersion := "2.8.1"

seq(WebPlugin.webSettings :_*)

jettyScanDirs := Nil

scalacOptions += "-deprecation"

libraryDependencies ++= Seq(
  "net.liftweb" %% "lift-webkit" % "2.4-M2" % "compile" withSources(),
  "ch.qos.logback" % "logback-classic" % "0.9.26"
)

libraryDependencies ++= Seq(
  // "org.scalaquery" % "scalaquery_2.8.1" % "0.9.4" withSources(),
  "org.squeryl" %% "squeryl" % "0.9.4" % "compile" withSources(),
  "net.liftweb" %% "lift-mapper" % "2.4-M2" % "compile" withSources(),
  "net.liftweb" %% "lift-squeryl-record" % "2.4-M2" % "compile" withSources(),
  "mysql" % "mysql-connector-java" % "5.1.13"
)


resolvers += "snapshots" at "http://scala-tools.org/repo-snapshots"

libraryDependencies ++= Seq(
  "org.eclipse.jetty" % "jetty-webapp" % "7.3.0.v20110203" % "jetty",
  "org.specs2" %% "specs2" % "1.4" % "test" withSources()
)

