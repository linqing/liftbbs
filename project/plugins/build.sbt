resolvers += "Web plugin repo" at "http://siasia.github.com/maven2"

libraryDependencies <+= sbtVersion("com.github.siasia" %% "xsbt-web-plugin" % _)

libraryDependencies += "de.hars" %% "ensime-plugin" % "0.1"