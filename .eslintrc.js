module.exports = {
  "env": {
    "browser": true,
    "node": true,
    "jquery": true,
    "mocha": true,
    "jest": true,
    "qunit": true,
    "es6": true,
  },
  "globals": {
    "Action": false,
    "__DEV__": false,
    "__PROD__": false,
    "__DEBUG__": false,
    "__DEBUG_NEW_WINDOW__": false,
    "__BASENAME__": false,
    "assert": false,
    "Promise": false,
    "chrome": false,
  },
  "plugins": [
    "react",
  ],
  "parserOptions": {
    "ecmaVersion": 2017,
    "sourceType": "module",
    "ecmaFeatures": {
      "jsx": true,
      "impliedStrict": true,
      "experimentalObjectRestSpread": true,
    },
  },
  // Precedence is given to the closest `eslintrc` file to the file being tested
  // but it will continue to traverse the tree upwards until `root: true`
  "root": true,
  "extends": [
    "eslint:recommended",
    "plugin:react/recommended",
  ],
  "rules": {
    // Possible Errors
    "no-unused-vars": ["warn", {
      "varsIgnorePattern": "React",
      "args": "none"
    }],
    "indent": ["error", 2, { "SwitchCase": 0 }],
    "no-console": 0,
    // `checkLoops: false` lets you set `while(true)`
    "no-constant-condition": ["error", { "checkLoops": false }],
    "no-debugger": "warn",
    // Doesn't seem to be working:
    "no-template-curly-in-string": "warn",
    "no-unsafe-negation": "error",

    // Best Practices
    "array-callback-return": "error",
    // requires curly braces around single line "blocks" -- `if (foo) foo()`
    "curly": "error",
    "eqeqeq": "error",
    "no-floating-decimal": "error",
    "no-self-compare": "error",
    "no-unused-expressions": [
      "error",
      { "allowShortCircuit": true, "allowTernary": true },
    ],

    // Variables
    "no-shadow-restricted-names": "error",
    "no-undef-init": "error",

    // Stylistic
    "array-bracket-spacing": ["warn", "never"],
    "block-spacing": "warn",
    "brace-style": ["warn", "stroustrup", { "allowSingleLine": true }],
    "camelcase": ["warn", { "properties": "never" }],
    "comma-dangle": ["warn", "always-multiline"],
    "comma-spacing": "warn",
    "comma-style": "warn",
    "func-call-spacing": "warn",
    "jsx-quotes": ["warn", "prefer-double"],
    "key-spacing": "warn",
    "keyword-spacing": "warn",
    "max-len": ["warn", 80, 2, { "ignoreUrls": true }],
    "no-nested-ternary": "error",
    "no-trailing-spaces": "warn",
    "no-whitespace-before-property": "warn",
    "object-curly-spacing": ["warn", "always"],
    "space-before-blocks": "warn",
    "space-before-function-paren": ["warn", "never"],
    "spaced-comment": "warn",
    "semi": ["warn", "never"],

    // ES6
    "arrow-spacing": "warn",
    // Doesn't seem to be working:
    "template-curly-spacing": ["warn", "never"],

    // React
    "react/prop-types": "warn",
  },
}
