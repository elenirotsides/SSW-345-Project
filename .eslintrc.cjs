module.exports = {
  env: {
    es2021: true,
  },
  extends: ['airbnb-base', 'prettier'],
  overrides: [],
  parserOptions: {
    ecmaVersion: 'latest',
    sourceType: 'module',
  },
  rules: {
    'import/prefer-default-export': 0,
    'no-restricted-syntax': 0,
    'no-plusplus': 0,
    'import/extensions': 0,
    'no-console': 0,
  },
};