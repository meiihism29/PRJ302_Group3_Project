package dal;

public class TestDAO extends DBContext {

    public TestDAO() {
        super(); 
    }

    public String TestDBConnect() {
        if (connection != null) {
            return connection.toString();
        } else {
            return "KHONG THE KET NOI CSDL";
        }
    }
}