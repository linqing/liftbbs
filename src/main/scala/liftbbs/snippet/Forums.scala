package liftbbs.snippet

import org.squeryl._
import adapters.MySQLAdapter
import PrimitiveTypeMode._
import org.squeryl.annotations._

import liftbbs.model.BbsModel._

import scala.xml._
import net.liftweb.util.Helpers._

class Forums {
  def render =
    for (f <- forums) yield {
      <h1>{ f.name }</h1>
    }
  def list = {
    "#forum *" #> forums.map( f => "@nameLink [href]" #> {"forumdisplay?fid=" + f.id} &
                             "@nameLink *" #> {f.name} )
  }

  def display = {
    "#topics *" #> topics.map(t => "@subjectLink [href]" #> {"viewthread?tid=" + t.id} &
                             "@subjectLink *" #> {t.subject} )
  }

  def viewthread = {
    "#post *" #> posts.map(p => "@subject" #> {p.subject} &
                             "@message" #> {p.message} )
  }
}
