package vo;

import java.util.Date;

public class Data {
	private String title;
    private String content;
    private Date time;
    private String author;
    private String img;
    private String status;
    private String status_DISPLAY;
    public void setTitle(String title) {
        this.title = title;
    }
    public String getTitle() {
        return title;
    }

    public void setContent(String content) {
        this.content = content;
    }
    public String getContent() {
        return content;
    }

    public void setTime(Date time) {
        this.time = time;
    }
    public Date getTime() {
        return time;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
    public String getAuthor() {
        return author;
    }

    public void setImg(String img) {
        this.img = img;
    }
    public String getImg() {
        return img;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    public String getStatus() {
        return status;
    }

    public void setStatus_DISPLAY(String status_DISPLAY) {
        this.status_DISPLAY = status_DISPLAY;
    }
    public String getStatus_DISPLAY() {
        return status_DISPLAY;
    }
}
