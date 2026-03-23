module.exports = function(eleventyConfig) {
  eleventyConfig.addPassthroughCopy("style.css");
  eleventyConfig.addPassthroughCopy("shared.js");
  eleventyConfig.addPassthroughCopy("admin");

  eleventyConfig.addCollection("partenaires", function(collectionApi) {
    return collectionApi.getFilteredByGlob("_posts/partenaires/*.md");
  });

  return {
    dir: {
      input: ".",
      output: "_site",
      includes: "_includes"
    }
  };
};module.exports = function(eleventyConfig) {
  eleventyConfig.addPassthroughCopy("style.css");
  eleventyConfig.addPassthroughCopy("shared.js");
  eleventyConfig.addPassthroughCopy("admin");
  eleventyConfig.addPassthroughCopy("images");

  // Copier les HTML statiques sans les traiter
  eleventyConfig.addPassthroughCopy("index.html");
  eleventyConfig.addPassthroughCopy("partenaires.html");
  eleventyConfig.addPassthroughCopy("membre.html");
  eleventyConfig.addPassthroughCopy("mission.html");
  eleventyConfig.addPassthroughCopy("rejoindre.html");
  eleventyConfig.addPassthroughCopy("partner-*.html");

  eleventyConfig.addCollection("partenaires", function(collectionApi) {
    return collectionApi.getFilteredByGlob("_posts/partenaires/*.md");
  });

  return {
    dir: {
      input: ".",
      output: "_site",
      includes: "_includes"
    }
  };
};