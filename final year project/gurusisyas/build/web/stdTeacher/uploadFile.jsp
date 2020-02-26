<%-- 
    Document   : assignments
    Created on : May 4, 2018, 3:27:44 PM
    Author     : Sarita Karki
--%>

<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%@ page import ="java.sql.*" %>



<%
     String subid="";
     String fileName="";
    String user = (String)session.getAttribute("user_id");
     //String subjectid = (String)request.getParameter("subid");
     //out.print((String)request.getAttribute("subid"));
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gurusisya",
            "root", null);
    Statement st = con.createStatement();
    //ResultSet rs;
   File file ;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   ServletContext context = pageContext.getServletContext();
   String filePath = context.getInitParameter("file-upload");

   // Verify the content type
   String contentType = request.getContentType();
   
   if ((contentType.indexOf("multipart/form-data") >= 0)) {
      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File("d:\\temp"));

      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );
      
      try { 
         // Parse the request to get file items.
         List fileItems = upload.parseRequest(request);

         // Process the uploaded file items
         Iterator i = fileItems.iterator();

         out.println("<html>");
         out.println("<head>");
         out.println("<title>JSP File upload</title>");  
         out.println("</head>");
         out.println("<body>");
         FileItemFactory factory2 = new DiskFileItemFactory();

// Set factory constraints
// factory.setSizeThreshold(yourMaxMemorySize);
// factory.setRepository(yourTempDirectory);

// Create a new file upload handler
ServletFileUpload upload2 = new ServletFileUpload( factory2 );
// upload.setSizeMax(yourMaxRequestSize);

// Parse the request
List<FileItem> uploadItems = upload.parseRequest( request );

for( FileItem uploadItem : uploadItems )
{
    out.print("ok");
  if( uploadItem.isFormField() )
  {
    String fieldName = uploadItem.getFieldName();
    String value = uploadItem.getString();
    out.print(value);
  }
}
         while ( i.hasNext () ) {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () ) {
               // Get the uploaded file parameters
               String fieldName = fi.getFieldName();
                fileName = fi.getName();
               boolean isInMemory = fi.isInMemory();
               long sizeInBytes = fi.getSize();
            
               // Write the file
               if( fileName.lastIndexOf("\\") >= 0 ) {
                  file = new File( filePath + 
                  fileName.substring( fileName.lastIndexOf("\\"))) ;
               } else {
                  file = new File( filePath + 
                  fileName.substring(fileName.lastIndexOf("\\")+1)) ;
               }
               fi.write( file ) ;
               //st.executeUpdate("insert into assignment(student_id,file) values ('" + userid +"," + fileName + "')");
               //st.executeUpdate(" INSERT INTO `assignment`( `student_id`, `file`,`subject_id`) VALUES ('" + user + "','" + fileName + "'','" + subjectid  + "')");
               //out.println("Your file:" + 
               //fileName + "has been uploaded");
               
            }
            else if ( fi.isFormField () ) 
                    {
               
                subid = fi.getString();
                //out.println(subid);
              }
            
         }
          //out.print(" INSERT INTO assignment( student_id, file,subject_id) VALUES ('" + user + "','" + fileName + "'','" + subid + "')");
         
         ResultSet rs;
         rs = st.executeQuery("select file from assignment where file='" + fileName + "' ");
         
         if(!rs.next()){
         st.executeUpdate(" INSERT INTO assignment( student_id, file,subject_id) VALUES ('" + user + "','" + fileName + "','" + subid + "')");
         response.sendRedirect("assignment.jsp?success=success");
         }
         response.sendRedirect("assignment.jsp?notsuccess=fail");  
         
         
         //("insert into users(first_name, last_name, email_id, uname, passwd) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "')");
         out.println("</body>");
         out.println("</html>");
      } catch(Exception ex) {
         System.out.println(ex);
      }
   } else {
      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet upload</title>");  
      out.println("</head>");
      out.println("<body>");
      out.println("<p>No file uploaded</p>"); 
      out.println("</body>");
      out.println("</html>");
   }



   
  
%>
