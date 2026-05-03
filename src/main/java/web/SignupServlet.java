package web;

import java.io.IOException;
import model.User;
import store.UserStore;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/signup.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = new User(username, password);

        boolean added = UserStore.addUser(user);

        if (added) {
            request.setAttribute("successMessage", "Inscription réussie. Connectez-vous maintenant.");
            request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
        } else {
            request.setAttribute("errorMessage", "Ce nom d'utilisateur existe déjà.");
            request.getRequestDispatcher("/WEB-INF/signup.jsp").forward(request, response);
        }
    }
}