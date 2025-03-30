document.addEventListener("DOMContentLoaded", () => {
  const menuSelect = document.getElementById("menu-select");
  const dumbbellField = document.getElementById("dumbbell-field");

  if (!menuSelect || !dumbbellField) return;

  const noDumbbellMenus = [
    "逆手懸垂",
    "スクワット",
    "懸垂",
    "アブローラー",
    "ハンギングレッグレイズ"
  ];

  const toggleDumbbellField = () => {
    const selectedText = menuSelect.options[menuSelect.selectedIndex].text;
    if (noDumbbellMenus.includes(selectedText)) {
      dumbbellField.style.display = "none";
    } else {
      dumbbellField.style.display = "block";
    }
  };

  toggleDumbbellField(); // 初回実行
  menuSelect.addEventListener("change", toggleDumbbellField); // 変更時に実行
});