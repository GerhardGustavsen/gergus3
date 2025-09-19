// postcss.config.cjs
const isProd = process.env.NODE_ENV === 'production';

module.exports = {
  plugins: {
    // lets you do @import "file.css"
    'postcss-import': {},
    // CSS nesting like Sass: .a { .b { ... } }
    'postcss-nesting': {},
    // modern CSS polyfills (custom media, color(), etc.)
    'postcss-preset-env': {
      stage: 1,
      features: {
        // we use postcss-nesting instead of the preset’s nesting
        'nesting-rules': false,
      },
    },
    // vendor prefixes where needed
    autoprefixer: {},
    // minify only in production
    ...(isProd ? { cssnano: { preset: 'default' } } : {}),
  },
};
