import sbt._

class LiftProject(info: ProjectInfo) extends DefaultWebProject(info) {
  val liftVersion = "2.4-M2"

  // uncomment the following if you want to use the snapshot repo
  val scalatoolsSnapshot = ScalaToolsSnapshots

  // If you're using JRebel for Lift development, uncomment
  // this line
  // override def scanDirectories = Nil

  override def libraryDependencies = Set(
    "net.liftweb" %% "lift-webkit" % liftVersion % "compile",
    "net.liftweb" %% "lift-mapper" % liftVersion % "compile",
    "org.squeryl" %% "squeryl" % "0.9.4" % "compile",
    "net.liftweb" %% "lift-squeryl-record" % liftVersion % "compile",
    "mysql" % "mysql-connector-java" % "5.1.13",
    "org.specs2" %% "specs2" % "1.4" % "test",
    "org.mortbay.jetty" % "jetty" % "6.1.22" % "test"
  ) ++ super.libraryDependencies
}
