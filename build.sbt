name := "liftbase"

organization := "no.ovstetun"

version := "0.1-SNAPSHOT"

scalaVersion := "2.8.1"

seq(WebPlugin.webSettings :_*)

jettyScanDirs := Nil

libraryDependencies ++= Seq(
  "net.liftweb" %% "lift-webkit" % "2.4-M2" % "compile" withSources(),
  "ch.qos.logback" % "logback-classic" % "0.9.26"
)

libraryDependencies ++= Seq(
  "org.scalaquery" % "scalaquery_2.9.0" % "0.9.4" withSources(),
  "com.h2database" % "h2" % "1.3.155"
)

libraryDependencies ++= Seq(
  "org.eclipse.jetty" % "jetty-webapp" % "7.3.0.v20110203" % "jetty"
)

