package no.ovstetun

import org.specs2.mutable._

import java.io.File
import scala.xml._
import net.liftweb.util._
import net.liftweb.common._

class ValidHtmlSpec extends Specification {
  "All XML and HTML" should {
    "be valid" in {
      var failed : List[File] = Nil
      
      def handledXml(file: String) =
        file.endsWith(".xml")

      def handledXHtml(file: String) =
        file.endsWith(".html") || file.endsWith(".htm") || file.endsWith(".xhtml")

      def wellFormed(file: File) {
        if (file.isDirectory)
          for (f <- file.listFiles) wellFormed(f)

        if (file.isFile && handledXml(file.getName)) {
          try {
            XML.loadFile(file)
          } catch {
            case e: _root_.org.xml.sax.SAXParseException => failed = file :: failed
          }
        }
        if (file.isFile && handledXHtml(file.getName)) {
          // TODO need to find some way to actually make this thing work.!
          Html5.parse(new _root_.java.io.FileInputStream(file.getAbsolutePath)) match {
//          PCDataXmlParser(new _root_.java.io.FileInputStream(file.getAbsolutePath)) match {
            case Full(_) => // file is ok
            case _ => failed = file :: failed
          }
        }
      }

      wellFormed(new File("src/main/webapp"))
      
      val numFails = failed.size
      if (numFails > 0) {
        val fileStr = if (numFails == 1) "file" else "files"
        val msg = "Malformed XML in " + numFails + " " + fileStr + ": " + failed.mkString(", ")
        
        failure(msg)
      } else {
        success
      }
    }
  }
}