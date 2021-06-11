package marvel;

import java.time.LocalDate;
import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;

public class Movie {
	private int id;
	private String genre;
	private String director;
	private String scenario;
	private String title;
	private String producer;
	private String actor;
	private String music;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate beginFilming;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate endFilming;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate releaseDate;
	private int runningTime;
	private int productionCost;
	private long northAmericaBoxOffice;
	private long worldBoxOffice;
	private int koreanNumberOfAudience;
	private String rate;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss")
	private LocalDateTime wDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss")
	private LocalDateTime uDate;
	
	public Movie(int id, String genre, String director, String scenario, String title, String producer, String actor,
			String music, LocalDate beginFilming, LocalDate endFilming, LocalDate releaseDate, int runningTime,
			int productionCost, long northAmericaBoxOffice, long worldBoxOffice, int koreanNumberOfAudience,
			String rate, LocalDateTime wDate, LocalDateTime uDate) {
		super();
		this.id = id;
		this.genre = genre;
		this.director = director;
		this.scenario = scenario;
		this.title = title;
		this.producer = producer;
		this.actor = actor;
		this.music = music;
		this.beginFilming = beginFilming;
		this.endFilming = endFilming;
		this.releaseDate = releaseDate;
		this.runningTime = runningTime;
		this.productionCost = productionCost;
		this.northAmericaBoxOffice = northAmericaBoxOffice;
		this.worldBoxOffice = worldBoxOffice;
		this.koreanNumberOfAudience = koreanNumberOfAudience;
		this.rate = rate;
		this.wDate = wDate;
		this.uDate = uDate;
	}

	public Movie() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getScenario() {
		return scenario;
	}

	public void setScenario(String scenario) {
		this.scenario = scenario;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getProducer() {
		return producer;
	}

	public void setProducer(String producer) {
		this.producer = producer;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public String getMusic() {
		return music;
	}

	public void setMusic(String music) {
		this.music = music;
	}

	public LocalDate getBeginFilming() {
		return beginFilming;
	}

	public void setBeginFilming(LocalDate beginFilming) {
		this.beginFilming = beginFilming;
	}

	public LocalDate getEndFilming() {
		return endFilming;
	}

	public void setEndFilming(LocalDate endFilming) {
		this.endFilming = endFilming;
	}

	public LocalDate getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(LocalDate releaseDate) {
		this.releaseDate = releaseDate;
	}

	public int getRunningTime() {
		return runningTime;
	}

	public void setRunningTime(int runningTime) {
		this.runningTime = runningTime;
	}

	public int getProductionCost() {
		return productionCost;
	}

	public void setProductionCost(int productionCost) {
		this.productionCost = productionCost;
	}

	public long getNorthAmericaBoxOffice() {
		return northAmericaBoxOffice;
	}

	public void setNorthAmericaBoxOffice(long northAmericaBoxOffice) {
		this.northAmericaBoxOffice = northAmericaBoxOffice;
	}

	public long getWorldBoxOffice() {
		return worldBoxOffice;
	}

	public void setWorldBoxOffice(long worldBoxOffice) {
		this.worldBoxOffice = worldBoxOffice;
	}

	public int getKoreanNumberOfAudience() {
		return koreanNumberOfAudience;
	}

	public void setKoreanNumberOfAudience(int koreanNumberOfAudience) {
		this.koreanNumberOfAudience = koreanNumberOfAudience;
	}

	public String getRate() {
		return rate;
	}

	public void setRate(String rate) {
		this.rate = rate;
	}

	public LocalDateTime getwDate() {
		return wDate;
	}

	public void setwDate(LocalDateTime wDate) {
		this.wDate = wDate;
	}

	public LocalDateTime getuDate() {
		return uDate;
	}

	public void setuDate(LocalDateTime uDate) {
		this.uDate = uDate;
	}

	@Override
	public String toString() {
		return "Movie [id=" + id + ", genre=" + genre + ", director=" + director + ", scenario=" + scenario + ", title="
				+ title + ", producer=" + producer + ", actor=" + actor + ", music=" + music + ", beginFilming="
				+ beginFilming + ", endFilming=" + endFilming + ", releaseDate=" + releaseDate + ", runningTime="
				+ runningTime + ", productionCost=" + productionCost + ", northAmericaBoxOffice="
				+ northAmericaBoxOffice + ", worldBoxOffice=" + worldBoxOffice + ", koreanNumberOfAudience="
				+ koreanNumberOfAudience + ", rate=" + rate + ", wDate=" + wDate + ", uDate=" + uDate + "]";
	}
	
	
	
}
