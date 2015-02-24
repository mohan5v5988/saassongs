package command;

import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Song;
import connectionprovider.ConnectionProvider;

public class DeleteSongCommand {
    public String execute(int id) {
        try {
            Connection connection = ConnectionProvider.getConnection();
            PreparedStatement stmt = connection
            .prepareStatement("DELETE From SONGS WHERE id=?");
            stmt.setInt(1, id);
            stmt.execute();
        } catch ( URISyntaxException e ) {
            e.printStackTrace();
        } catch ( SQLException e ) {
            e.printStackTrace();
        }
        return "-1";
    }
    /*public static void main(String[] args) {
    	DeleteSongCommand c = new DeleteSongCommand();
		c.execute(8);
		System.out.println("done");
	}*/
}