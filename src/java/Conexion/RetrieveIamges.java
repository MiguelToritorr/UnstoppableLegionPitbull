package Conexion;

import java.io.OutputStream;
import java.sql.Blob;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class RetrieveIamges extends ActionSupport {

	List<ImageDTO> dataList = null;
	ResultSet rs = null;
	RetrieveIamgesDAO daoObj = null;
	ImageDTO dataBean = null;

	@Override
	public String execute() throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse();
		HttpServletRequest request = ServletActionContext.getRequest();
		String tagnumber = request.getParameter("tagnumber");
		try {
			dataList = new ArrayList<>();
			rs = new RetrieveIamgesDAO().getData();
			if (rs != null) {
				while (rs.next()) {
					dataBean = new ImageDTO();
					dataBean.setTagnumber(rs.getInt("tagnumber"));
					dataBean.setName(rs.getString("name"));
                                        dataBean.setAge(rs.getString("age"));
                                        dataBean.setPounds(rs.getString("pounds"));
                                        dataBean.setColor(rs.getString("color"));
                                        dataBean.setCategory(rs.getString("category"));
                                        dataBean.setSex(rs.getString("sex"));
                                        dataBean.setVaccins(rs.getString("vaccins"));
                                        dataBean.setPrice(rs.getString("price"));
                                        dataBean.setComments(rs.getString("comments"));
					dataList.add(dataBean);
				}
			}
			try {
				rs = new RetrieveIamgesDAO().getPhoto(tagnumber);
				if (rs.next()) {
					Blob ph = rs.getBlob("picture");
					byte data[] = ph.getBytes(1, (int) ph.length());
					OutputStream out = response.getOutputStream();
					out.write(data);
					out.flush();
					out.close();
				}

			} catch (Exception e) {
				e.printStackTrace();
				e.getMessage();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "SUCCESS";
	}

	public List<ImageDTO> getDataList() {
		return dataList;
	}

	public void setDataList(List<ImageDTO> dataList) {
		this.dataList = dataList;
	}

}
