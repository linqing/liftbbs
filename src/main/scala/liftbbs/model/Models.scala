package liftbbs.model

import org.squeryl._
import adapters.MySQLAdapter
import adapters.H2Adapter
import PrimitiveTypeMode._
import org.squeryl.annotations._

class Forum(
  @Column("fid")
  val id: Long,
  @Column("type")
  val forumType: String,
  val icon: String,
  val name: String,
  val description: String,
  val status: Int,
  val displayorder: Int,
  val moderator: String,
  val styleid: Int
)

class Post(
  @Column("pid")
  val id: Long,
  val subject: String
) extends KeyedEntity[Long]


object BbsModel extends Schema {
  def init() {
    Class.forName("com.mysql.jdbc.Driver");
    SessionFactory.concreteFactory = Some(()=>
      Session.create(
        java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/discuz2", "root", ""),
        new MySQLAdapter))
  }
  val posts = table[Post]("cdb_posts")
  val forums = table[Forum]("cdb_forums")
}
