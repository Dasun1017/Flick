package model;

public class Feedback {
    private int id;
    private String name;
    private String email;
    private String mobile;
    private String message;

    // Constructor
    public Feedback(int id, String name, String email, String mobile, String message) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.mobile = mobile;
        this.message = message;
    }

    // Default constructor
    public Feedback() {}

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
