package no.ovstetun.snippet

import xml.Unparsed

class Shiv {
  def shiv = Unparsed(
  """
  <!--[if lt IE 9]>
  <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
  """
  )
}
