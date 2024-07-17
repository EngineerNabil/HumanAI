
// << Old file >>
const express = require('express');
const googleTrends = require('google-trends-api');
const app = express();
const port = 3000;

app.get('/trends', (req, res) => {
  googleTrends.dailyTrends({
    geo: 'US',
  }, (err, results) => {
    if (err) {
      res.status(500).send(err);
    } else {
      res.send(results);
    }
  });
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});


//// << New file >>
//const express = require('express');
//const googleTrends = require('google-trends-api');
//const app = express();
//const PORT = 3000;
//
//app.get('/trends', async (req, res) => {
//  try {
//    const response = await axios.get('https://trends.google.com/trends/trendingsearches/daily');
//
//    const $ = cheerio.load(response.data);
//    const trends = [];
//
//    // Extract trending topics
//    $('.details-top-list .list-item-title').each((index, element) => {
//      trends.push($(element).text().trim());
//    });
//
//    res.json({ trends });
//  } catch (error) {
//    console.error('Error fetching Google Trends:', error);
//    res.status(500).json({ error: 'Failed to fetch Google Trends data' });
//  }
//});
//
//app.listen(PORT, () => {
//  console.log(`Server running on port ${PORT}`);
//});