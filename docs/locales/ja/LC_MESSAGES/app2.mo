Þ                           *       H  ,   Þ  U        a  Ð   i    :     =  Ù   K     %  Ë   5       K        ç  l   t    á  m  ~
  Ó   ì  :   À     û           ^       ì  è        ê  #    ²   %  y   Ø  Ú   R  ¢   -   Advantages of this concept are that embedded files are under the PDF umbrella, benefitting from its permissions / password protection and integrity aspects: all data, which a PDF may reference or even may be dependent on, can be bundled into it and so form a single, consistent unit of information. After adding initial support for collections (portfolios) and */EmbeddedFiles* in MuPDF version 1.11, this support was dropped again in version 1.15. Appendix 2: Considerations on Embedded Files As a consequence, the cli utility *mutool* no longer offers access to embedded files. General In addition to embedded files, PDF 1.7 adds *collections* to its support range. This is an advanced way of storing and presenting meta information (i.e. arbitrary and extensible properties) of embedded files. In many aspects, this is comparable to concepts also found in ZIP files or the OLE technique in MS Windows. PDF embedded files do, however, *not* support directory structures as does the ZIP format. An embedded file can in turn contain embedded files itself. MuPDF Support PyMuPDF -- having implemented an */EmbeddedFiles* API in response in its version 1.11.0 -- was therefore forced to change gears starting with its version 1.16.0 (we never published a MuPDF v1.15.x compatible PyMuPDF). PyMuPDF Support Starting with version 1.4, PDF supports embedding arbitrary files as part ("Embedded File Streams") of a PDF document file (see chapter "7.11.4 Embedded File Streams", pp. 103 of the :ref:`AdobeManual`). There even also is a new function, which delivers a list of all names under which embedded data are resgistered in a PDF, :meth:`Document.embfile_names`. This chapter provides some background on embedded files support in PyMuPDF. We are now maintaining our own code basis supporting embedded files. This code makes use of basic MuPDF dictionary and array functions only. We continue to support the full old API with respect to embedded files -- with only minor, cosmetic changes. Project-Id-Version: PyMuPDF 1.23.0rc1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-08-16 14:20+0100
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: Suzan Sanver <suzan.sanver@dijipiji.com>
Language: ja
Language-Team: ja <suzan.sanver@dijipiji.com>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.3
 ãã®ã³ã³ã»ããã®å©ç¹ã¯ãåãè¾¼ã¿ãã¡ã¤ã«ãPDFã®æ çµã¿ã«å«ã¾ãããã®æ¨©é/ãã¹ã¯ã¼ãä¿è­·ããã³æ´åæ§ã®å´é¢ãæ´»ç¨ã§ãããã¨ã§ããPDFãåç§ãããã¼ã¿ãä¾å­ããå¯è½æ§ããããã¼ã¿ã¯ãã¹ã¦ãPDFã«ã¾ã¨ãã¦1ã¤ã®ä¸è²«ããæå ±ã¦ããããå½¢æãããã¨ãã§ãã¾ãã MuPDFãã¼ã¸ã§ã³1.11ã§ã³ã¬ã¯ã·ã§ã³ï¼ãã¼ããã©ãªãªï¼ã¨ */EmbeddedFiles* ã¸ã®åæãµãã¼ããè¿½å ããå¾ããã®ãµãã¼ãã¯ãã¼ã¸ã§ã³1.15ã§åã³åé¤ããã¾ããã ä»é²2ï¼åãè¾¼ã¿ãã¡ã¤ã«ã«é¢ããèæ®äºé  ãã®çµæãcliã¦ã¼ãã£ãªãã£ *mutool* ã§ã¯ãã¯ãåãè¾¼ã¿ãã¡ã¤ã«ã«ã¢ã¯ã»ã¹ã§ããªããªãã¾ããã ä¸è¬ åãè¾¼ã¿ãã¡ã¤ã«ã«å ãã¦ãPDF 1.7ã¯ *ã³ã¬ã¯ã·ã§ã³* ããµãã¼ãç¯å²ã«è¿½å ãã¾ãããããã¯ãåãè¾¼ã¿ãã¡ã¤ã«ã®ã¡ã¿æå ±ï¼ä»»æã§æ¡å¼µå¯è½ãªãã­ããã£ï¼ãæ ¼ç´ããè¡¨ç¤ºããé«åº¦ãªæ¹æ³ã§ã å¤ãã®å´é¢ã§ãããã¯ZIPãã¡ã¤ã«ãMS Windowsã®OLEæè¡ã§ãè¦ãããæ¦å¿µã«é¡ä¼¼ãã¦ãã¾ãããã ããPDFã®åãè¾¼ã¿ãã¡ã¤ã«ã¯ZIPå½¢å¼ã¨ã¯ç°ãªãããã£ã¬ã¯ããªæ§é ããµãã¼ã *ãã¾ãã* ãåãè¾¼ã¿ãã¡ã¤ã«èªä½ãããã«åãè¾¼ã¿ãã¡ã¤ã«ãå«ããã¨ãã§ãã¾ãã MuPDFã®ãµãã¼ã PyMuPDFã¯ããã¼ã¸ã§ã³1.11.0ã§ */EmbeddedFiles*  APIãå®è£ããããããã¼ã¸ã§ã³1.16.0ããã®ã¢ãå¤æ´ããããå¾ãªããªãã¾ããï¼MuPDF v1.15.xäºæã®PyMuPDFã¯å¬éããã¾ããã§ããï¼ã PyMuPDFã®ãµãã¼ã ãã¼ã¸ã§ã³1.4ãããPDFã¯PDFãã­ã¥ã¡ã³ããã¡ã¤ã«ã®ä¸é¨ã¨ãã¦ä»»æã®ãã¡ã¤ã«ãåãè¾¼ããã¨ãã§ããããã«ãªãã¾ããï¼ã7.11.4 åãè¾¼ã¿ãã¡ã¤ã«ã¹ããªã¼ã ãç« ãåç§ã :ref:`AdobeManual` ãªãã¡ã¬ã³ã¹ã®103ãã¼ã¸ï¼ã ã¾ããPDFåã®åãè¾¼ã¿ãã¼ã¿ãç»é²ããã¦ãããã¹ã¦ã®ååã®ãªã¹ããè¿ãæ°ããé¢æ°ãå­å¨ãã¾ãã:meth:`Document.embfile_names` ã§ãã ãã®ç« ã§ã¯ãPyMuPDFã«ãããåãè¾¼ã¿ãã¡ã¤ã«ã®ãµãã¼ãã«é¢ããèæ¯æå ±ãæä¾ãã¾ãã ç§ãã¡ã¯ç¾å¨ãåãè¾¼ã¿ãã¡ã¤ã«ããµãã¼ãããç¬èªã®ã³ã¼ããã¼ã¹ãç¶­æãã¦ãã¾ãããã®ã³ã¼ãã¯ãåºæ¬çãªMuPDFã®è¾æ¸ã¨éåã®æ©è½ã®ã¿ãä½¿ç¨ãã¦ãã¾ãã ç§ãã¡ã¯ãåãè¾¼ã¿ãã¡ã¤ã«ã«é¢ããå¤ãAPIããããããªè¦ãç®ã®å¤æ´ã®ã¿ãè¡ããªããå¼ãç¶ããµãã¼ããã¦ãã¾ãã 