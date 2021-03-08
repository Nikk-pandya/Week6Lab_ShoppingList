
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 829364
 */
public class ShoppingListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        String logout = request.getParameter("logout");

        if (logout != null) {
            session.invalidate();
            request.setAttribute("message", "You have been successfully logged out.");
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp")
                    .forward(request, response);
        } else {

            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp")
                    .forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        ArrayList<String> itm = (ArrayList<String>) session.getAttribute("items");

        String item = request.getParameter("item");
      

        if (action != null) {
            switch (action) {
                case "register":
                    if (username != null) {
                        itm = new ArrayList<>();

                        session.setAttribute("items", itm);
                        session.setAttribute("username", username);

                    }
                    break;
                case "add":
                    if (item != null) {
                        itm.add(item);
                    }
                    break;
            }
        }

        
            getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
       

    }
}
