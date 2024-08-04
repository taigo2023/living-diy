/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './app/**/*.{html,js,erb}', // HTML, JS, ERB ファイルを監視
    './public/**/*.html',      // public フォルダ内の HTML ファイルも監視
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
