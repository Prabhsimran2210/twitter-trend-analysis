using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TweetSharp;
using System.Data;
using System.Data.SqlClient;
using VaderSharp;

namespace twitter
{
    public class Class1
    {
        public static string _consumerKey = "HmAdKwcNZ51YbyHTenDZ5CCBV"; // Your key
        public static string _consumerSecret = "LtkeDEoecI6dzEsA4OuU8iyZUJdLAXJrbm1pqCuCTzcS8Hc9E6"; // Your key  
        public static string _accessToken = "979208190482100225-UMuVcWchbIvmHmEleqSFPZ2Xevq6h1d"; // Your key  
        public static string _accessTokenSecret = "6yQCVWRxo0eROyyEXe91ehoTaXOM5NB7NvJNuBK8Gnaka"; // Your key  
        public void tweet(String str)
        {
            

            TwitterService twitterService = new TwitterService(_consumerKey, _consumerSecret);
            twitterService.AuthenticateWith(_accessToken, _accessTokenSecret);
            SentimentIntensityAnalyzer analyzer = new SentimentIntensityAnalyzer();
            int tweetcount = 1;
            var tweets_search = twitterService.Search(new SearchOptions { Q = str, Resulttype = TwitterSearchResultType.Recent , Count=100 });
            //Resulttype can be TwitterSearchResultType.Popular or TwitterSearchResultType.Mixed or TwitterSearchResultType.Recent  
            List<TwitterStatus> resultList = new List<TwitterStatus>(tweets_search.Statuses);
            foreach (var tweet in tweets_search.Statuses)
            {
                try
                {
                    String s1 = tweet.User.Name;
                    String s2 = tweet.User.ScreenName;
                    String s3 = tweet.Text;
                    var results = analyzer.PolarityScores(s3);

                    SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True;trusted_connection=yes");

                    double d1 = results.Positive;

                    double d2 = results.Negative;
                    double d3 = results.Neutral;


                    con.Open();

                    SqlCommand cmd = new SqlCommand("Insert into tweet values('" + s1 + "','" + s2 + "','" + s3 + "','" + d1 + "','" + d2 + "','" + d3 + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();

                    tweetcount++;
                }
                catch { }
            }

        }
    }
}