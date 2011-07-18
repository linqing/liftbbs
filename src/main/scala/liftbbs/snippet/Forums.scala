package liftbbs.snippet

import org.squeryl._
import adapters.MySQLAdapter
import PrimitiveTypeMode._
import org.squeryl.annotations._

import liftbbs.model.BbsModel._
class Forums {
  def render =
    for (f <- forums) yield {
      <h1>{ f.name }</h1>
    }
}
