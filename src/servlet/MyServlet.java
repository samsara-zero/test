package servlet;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;



@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String filePath=request.getServletContext().getRealPath("/")+"data\\data.json";
		StringBuilder result = new StringBuilder();
		try {
			BufferedReader br = new BufferedReader(new FileReader(filePath));
			String s = "";
			while ((s = br.readLine())!=null) {
				result.append(s);
			}
			br.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
 
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
 
		// 返回給前端
		out.write(result.toString());
	}

}
