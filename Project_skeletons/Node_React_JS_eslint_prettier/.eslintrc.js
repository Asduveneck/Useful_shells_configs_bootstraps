module.exports = {
  // parser: '@typescript-eslint/parser', // Specifies the ESLint parser
  plugins: ['eslint-comments', 'simple-import-sort'],
  extends: [
    'plugin:jest/recommended',
    'plugin:react/recommended', // Uses the recommended rules from @eslint-plugin-react
    'airbnb',
    'airbnb/hooks',
    'plugin:eslint-comments/recommended',
    'plugin:prettier/recommended', // Enables eslint-plugin-prettier and displays prettier errors as ESLint errors. Make sure this is always the last configuration in the extends array.
  ],
  parserOptions: {
    // project: [], //
    ecmaVersion: 2018, // Allows for the parsing of modern ECMAScript features
    sourceType: 'module', // Allows for the use of imports
    ecmaFeatures: {
      jsx: true, // Allows for the parsing of JSX
    },
  },
  rules: {
    'jest/no-disabled-tests': 'warn',
    'jest/no-focused-tests': 'error',
    'jest/no-identical-title': 'error',
    'jest/prefer-to-have-length': 'warn',
    'jest/valid-expect': 'error',
    'sort-imports': 'off',
    'import/order': 'off',
    'simple-import-sort/sort': 'error',
    'import/first': 'error',
    'import/newline-after-import': 'error',
    'import/no-duplicates': 'error',
    // https://basarat.gitbooks.io/typescript/docs/tips/defaultIsBad.html
    // should turn on at some point
    //      'import/prefer-default-export': 'off',
    //      'import/no-default-export': 'error',
    'react/jsx-props-no-spreading': 0, // should turn on at some point
    'react/destructuring-assignment': 'off',
    'react/jsx-filename-extension': 'off',
    'no-use-before-define': [
      'error',
      {
        functions: false,
        classes: true,
        variables: true,
      },
    ],
    'unicorn/prevent-abbreviations': 'off',
  },
  settings: {
    react: {
      version: 'detect', // Tells eslint-plugin-react to automatically detect the version of React to use
    },
  },
};