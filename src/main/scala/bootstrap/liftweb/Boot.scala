package bootstrap.liftweb

import net.liftweb._
import util._
import Helpers._

import common._
import http._
import sitemap._
import Loc._


/**
 * A class that's instantiated early and run.  It allows the application
 * to modify lift's environment
 */
class Boot {

  def boot {
    import net.liftweb.mapper.{DB, DefaultConnectionIdentifier, StandardDBVendor}
    import net.liftweb.squerylrecord.SquerylRecord
    import org.squeryl.adapters.MySQLAdapter

    val dbVendor = new StandardDBVendor("com.mysql.jdbc.Driver", "jdbc:mysql://localhost:3306/discuz2", Full("root"), Full(""))
    DB.defineConnectionManager(DefaultConnectionIdentifier, dbVendor)
    S.addAround(DB.buildLoanWrapper)

    SquerylRecord.init(() => new MySQLAdapter)


    // where to search for snippets
    LiftRules.addToPackages("liftbbs")


    //Show the spinny image when an Ajax call starts and dissapear when done
    LiftRules.ajaxStart = Full(() => LiftRules.jsArtifacts.show("ajax-loader").cmd)
    LiftRules.ajaxEnd = Full(() => LiftRules.jsArtifacts.hide("ajax-loader").cmd)

    // Use jQuery 1.4
    LiftRules.jsArtifacts = net.liftweb.http.js.jquery.JQuery14Artifacts

    // Force the request to be UTF-8 and set to HTML5
    LiftRules.early.append(_.setCharacterEncoding("UTF-8"))
    LiftRules.htmlProperties.default.set((r: Req) =>new Html5Properties(r.userAgent))
  }

}
