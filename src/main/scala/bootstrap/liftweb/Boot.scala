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
    // where to search for snippets
    LiftRules.addToPackages("no.ovstetun")

    // Build SiteMap
    def sitemap = List(
      Menu.i("Home") / "index",
      Menu.i("En til") / "entil",
      Menu.i("static") / "static" / **,
      Menu.i("Og enda en som er litt lang2") / "lala2",
      Menu.i("Og enda en som er litt lang3") / "lala3",
      Menu.i("Og enda en som er litt lang4") / "lala4"
	  )

    LiftRules.setSiteMapFunc(() => SiteMap(sitemap: _*))

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
