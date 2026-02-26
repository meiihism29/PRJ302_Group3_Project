package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;

public class AccountDAO extends DBContext {

    public Account login(String username, String password) {
        String sql = "SELECT username, password, full_name, phone, email, role "
                   + "FROM Accounts WHERE username = ? AND password = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return new Account(
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("full_name"),
                        rs.getString("phone"),
                        rs.getString("email"),
                        rs.getString("role")
                );
            }
        } catch (SQLException e) {
            System.out.println("Error in login: " + e.getMessage());
        }
        return null;
    }
}


