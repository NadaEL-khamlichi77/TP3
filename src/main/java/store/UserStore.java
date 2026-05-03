package store;

import java.util.HashMap;
import java.util.Map;

import model.User;

public class UserStore {

    private static final Map<String, User> users = new HashMap<>();

    static {
        // utilisateur par défaut pour tester
        users.put("admin", new User("admin", "1234"));
    }

    public static boolean addUser(User user) {
        if (users.containsKey(user.getUsername())) {
            return false; // username déjà existe
        }
        users.put(user.getUsername(), user);
        return true;
    }

    public static User getUser(String username) {
        return users.get(username);
    }

    public static boolean exists(String username) {
        return users.containsKey(username);
    }

    public static boolean validateUser(String username, String password) {
        User user = users.get(username);
        return user != null && user.getPassword().equals(password);
    }
}