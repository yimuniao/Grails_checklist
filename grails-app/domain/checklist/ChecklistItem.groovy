package checklist

class ChecklistItem {
	boolean cplusplus;
	boolean java;
	boolean script;
	boolean application;
	boolean qa;
	boolean others;	
	String  products;
	String  subsystem;
	String  itemInfo;
	String  itemDescripton;
	Integer weight;	
	boolean  requirement;
	boolean  hld;
	boolean  design;
	boolean  designReview;
	boolean  designInspection;
	boolean  coding;
	boolean  devTest;
	boolean  testing;
	boolean  demo;
	String   example;
	String   contributor;
	String   moreaction;
	boolean  approved = false;
    String   keyWord =  "";

    static constraints = {
		cplusplus()
		java()
		script()
		application()
		qa()
		others()		
		products(inList:["Geo","Iris", "IPI"])
		subsystem(inList:["ITA", "IRISVIEW", "OAM"])
		itemInfo (blank:false, nullable:false, maxSize:200)
		itemDescripton (blank:false, nullable:false, maxSize:2000)
		weight(min:1, max:3)		
		requirement()
		hld()
		design()
		designReview()
		designInspection()
		coding()
		devTest()
		testing()
		demo()
		example(maxSize:2000)
		contributor()
		moreaction(maxSize:2000)
		approved()
        keyWord(maxSize:200)
    }
}
