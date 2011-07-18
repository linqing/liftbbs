package code

import org.squeryl._
import adapters.MySQLAdapter
import adapters.H2Adapter
import PrimitiveTypeMode._

object Main {
  def main(args: Array[String]) {
    println("hello")
    Class.forName("com.mysql.jdbc.Driver");
    SessionFactory.concreteFactory = Some(()=>
      Session.create(
        java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/discuz2", "root", ""),
        new MySQLAdapter))

    inTransaction {
      import Library._

      drop  // Bad idea in production application!!!!
      create

      printDdl

      authors.insert(new Author(1, "JRR", "Tolkien", None))
      authors.insert(new Author(2, "Jane", "Austen", None))
      authors.insert(new Author(3, "Philip", "Pullman", None))

      books.insert(new Book(1, "The Lord of the Rings", 1, None))
      books.insert(new Book(2, "Pride and Prejudice", 2, None))
      books.insert(new Book(3, "His Dark Materials", 3, None))

      val q = join(books, authors)((b, a) =>
        select(b, a)
        on(b.authorId === a.id)
      )

      for ((book, author) <- q) {
        println(author.firstName + " " + author.lastName + " wrote " + book.title)
      }
    }
  }
}

class Author(val id: Long,
             val firstName: String,
                         val lastName: String,
                         val email: Option[String]) extends KeyedEntity[Long]

class Book(val id: Long,
           val title: String,
           val authorId: Long,
           val coAuthorId: Option[Long]) extends KeyedEntity[Long]

object Library extends Schema {
  val authors = table[Author]
  val books = table[Book]
}
