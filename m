<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">
<meta name="theme-color" content="#fff7fa">
<title>My Money 💗</title>
<style>
:root{
  --bg:#fff8fb;--card:#fff;--ink:#29262a;--muted:#8c858b;--pink:#f39ab8;
  --pink2:#ffe3ec;--pink3:#fff0f5;--green:#4f9b77;--greenbg:#eaf8f0;
  --red:#d96879;--redbg:#fff0f2;--line:#f0e4e9;--shadow:0 10px 30px rgba(92,55,70,.08);
}
*{box-sizing:border-box;-webkit-tap-highlight-color:transparent}
body{margin:0;background:var(--bg);color:var(--ink);font-family:-apple-system,BlinkMacSystemFont,"SF Pro Display","Segoe UI",sans-serif}
button,input,select{font:inherit}
button{border:0;cursor:pointer}
.app{max-width:520px;margin:auto;padding:18px 16px 100px}
.header{display:flex;align-items:center;justify-content:space-between;margin-bottom:14px}
.brand{font-size:22px;font-weight:800;letter-spacing:-.5px}
.sub{font-size:12px;color:var(--muted);margin-top:2px}
.iconbtn{width:42px;height:42px;border-radius:15px;background:#fff;box-shadow:var(--shadow);font-size:19px}
.balance{background:linear-gradient(145deg,#fff,#fff0f5);border:1px solid #f8dce6;border-radius:27px;padding:22px;box-shadow:var(--shadow)}
.balance .label{color:var(--muted);font-size:13px}
.amount{font-size:38px;font-weight:850;letter-spacing:-1.5px;margin:4px 0 17px}
.stats{display:grid;grid-template-columns:1fr 1fr 1fr;gap:9px}
.stat{background:rgba(255,255,255,.8);border-radius:17px;padding:11px 10px}
.stat b{display:block;font-size:14px;margin-top:3px}
.stat span{font-size:11px;color:var(--muted)}
.green{color:var(--green)}.red{color:var(--red)}
.section{margin-top:18px}
.sectionhead{display:flex;align-items:center;justify-content:space-between;margin-bottom:9px}
.sectionhead h2{font-size:16px;margin:0}.tiny{font-size:12px;color:var(--muted);background:transparent;padding:0}
.calendar-card,.records-card,.simple-card{background:#fff;border:1px solid var(--line);border-radius:24px;padding:15px;box-shadow:var(--shadow)}
.monthbar{display:flex;align-items:center;justify-content:space-between;margin-bottom:12px}
.monthbar strong{font-size:17px}
.navbtn{width:34px;height:34px;border-radius:12px;background:var(--pink3);color:#a95876;font-weight:800}
.week{display:grid;grid-template-columns:repeat(7,1fr);gap:3px;margin-bottom:5px}
.week div{text-align:center;font-size:10px;color:#a39aa0;font-weight:700}
.grid{display:grid;grid-template-columns:repeat(7,1fr);gap:4px}
.day{min-height:61px;border-radius:13px;padding:6px 4px;background:#fff;position:relative;border:1px solid transparent;text-align:left}
.day:active{transform:scale(.97)} .day.empty{background:transparent}
.day.today{border-color:#f3a5bf;background:#fff7fa}
.daynum{font-size:11px;font-weight:750}
.daytotal{font-size:10px;margin-top:9px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.daydot{position:absolute;right:5px;top:7px;width:5px;height:5px;border-radius:50%;background:var(--pink)}
.day.in .daytotal{color:var(--green)}.day.out .daytotal{color:var(--red)}.day.both .daytotal{color:#8b6680}
.holiday{font-size:8px;color:#b45e78;margin-top:3px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.quick{display:grid;grid-template-columns:1fr 1fr;gap:10px}
.quick button{padding:15px;border-radius:18px;background:#fff;border:1px solid var(--line);box-shadow:var(--shadow);font-weight:750}
.quick .qin{color:var(--green);background:var(--greenbg)}.quick .qout{color:var(--red);background:var(--redbg)}
.record{display:flex;align-items:center;gap:11px;padding:11px 0;border-bottom:1px solid var(--line)}
.record:last-child{border-bottom:0}
.ricon{width:39px;height:39px;border-radius:13px;display:grid;place-items:center;background:var(--pink3)}
.rmain{min-width:0;flex:1}.rtitle{font-weight:700;font-size:13px}.rmeta{font-size:10px;color:var(--muted);margin-top:3px}
.ramt{font-weight:800;font-size:13px}.delete{color:#b9aeb4;background:transparent;font-size:15px;padding:5px}
.emptymsg{text-align:center;color:var(--muted);font-size:13px;padding:20px 5px}
.bottom{position:fixed;left:0;right:0;bottom:0;z-index:10;background:rgba(255,248,251,.92);backdrop-filter:blur(14px);padding:10px max(16px,calc((100vw - 520px)/2 + 16px)) 13px;border-top:1px solid var(--line)}
.add{width:100%;height:52px;border-radius:18px;background:var(--ink);color:white;font-weight:800;font-size:15px;box-shadow:0 9px 24px rgba(41,38,42,.18)}
.modal{position:fixed;inset:0;background:rgba(35,28,32,.35);display:none;align-items:flex-end;z-index:20}
.modal.show{display:flex}.sheet{width:100%;max-width:520px;margin:auto;background:#fff;border-radius:28px 28px 0 0;padding:20px 18px 28px;max-height:92vh;overflow:auto}
.sheet h3{margin:0 0 15px;font-size:20px}.close{float:right;background:var(--pink3);width:35px;height:35px;border-radius:12px}
.segment{display:grid;grid-template-columns:1fr 1fr;gap:7px;background:#f8f3f5;padding:5px;border-radius:14px;margin-bottom:13px}
.segment button{padding:10px;border-radius:10px;background:transparent;color:var(--muted);font-weight:750}.segment button.active{background:#fff;color:var(--ink);box-shadow:0 3px 10px rgba(0,0,0,.06)}
.field{margin:11px 0}.field label{display:block;font-size:11px;color:var(--muted);margin:0 0 6px}
.field input,.field select{width:100%;border:1px solid var(--line);border-radius:14px;padding:12px;background:#fff;outline:none}
.field input:focus,.field select:focus{border-color:#f2a8bf}
.save{width:100%;padding:14px;border-radius:15px;background:var(--pink);color:#fff;font-weight:850;margin-top:5px}
.settings-grid{display:grid;grid-template-columns:1fr 1fr;gap:9px}.settings-grid button{padding:13px;border-radius:15px;background:var(--pink3);font-weight:700;color:#6e5660}
.note{font-size:11px;color:var(--muted);line-height:1.5;margin-top:10px}
.holiday-list{font-size:12px;line-height:1.8;color:#6f666c}
.toast{position:fixed;left:50%;bottom:78px;transform:translateX(-50%) translateY(20px);background:#29262a;color:#fff;padding:10px 15px;border-radius:13px;font-size:12px;opacity:0;pointer-events:none;transition:.25s;z-index:40}
.toast.show{opacity:1;transform:translateX(-50%) translateY(0)}
@media(min-width:600px){.bottom{position:fixed}.sheet{border-radius:28px;margin-bottom:20px}}
</style>
</head>
<body>
<div class="app">
  <header class="header">
    <div><div class="brand">My Money 💗</div><div class="sub">simple money tracker</div></div>
    <button class="iconbtn" onclick="openSettings()">⚙️</button>
  </header>

  <section class="balance">
    <div class="label">Current Balance</div>
    <div class="amount" id="balance">RM 0.00</div>
    <div class="stats">
      <div class="stat"><span>🟢 Money In</span><b class="green" id="income">+RM 0.00</b></div>
      <div class="stat"><span>🔴 Money Out</span><b class="red" id="expense">-RM 0.00</b></div>
      <div class="stat"><span>💳 BNPL / Debt</span><b id="debt">RM 0.00</b></div>
    </div>
  </section>

  <section class="section">
    <div class="sectionhead"><h2>Calendar</h2><span class="tiny" id="calendarHint">tap a day to add</span></div>
    <div class="calendar-card">
      <div class="monthbar">
        <button class="navbtn" onclick="changeMonth(-1)">‹</button>
        <strong id="monthTitle"></strong>
        <button class="navbtn" onclick="changeMonth(1)">›</button>
      </div>
      <div class="week"><div>Mon</div><div>Tue</div><div>Wed</div><div>Thu</div><div>Fri</div><div>Sat</div><div>Sun</div></div>
      <div class="grid" id="calendar"></div>
    </div>
  </section>

  <section class="section">
    <div class="sectionhead"><h2>Quick Add</h2></div>
    <div class="quick">
      <button class="qin" onclick="openModal('income')">＋ Money In</button>
      <button class="qout" onclick="openModal('expense')">− Money Out</button>
    </div>
  </section>

  <section class="section">
    <div class="sectionhead"><h2>Recent Records</h2><button class="tiny" onclick="showAllRecords()">View all</button></div>
    <div class="records-card" id="records"></div>
  </section>

  <section class="section">
    <div class="sectionhead"><h2>🇲🇾 Public Holidays</h2><span class="tiny" id="holidayYear"></span></div>
    <div class="simple-card holiday-list" id="holidays"></div>
  </section>
</div>

<div class="bottom">
  <button class="add" onclick="openModal('expense')">＋ Add Record</button>
</div>

<!-- Add/Edit Transaction Modal -->
<div class="modal" id="txModal">
  <div class="sheet">
    <button class="close" onclick="closeModal()">✕</button>
    <h3 id="modalTitle">Add Record</h3>
    
    <div class="segment">
      <button id="tab-income" onclick="setModalType('income')">Money In</button>
      <button id="tab-expense" onclick="setModalType('expense')">Money Out</button>
    </div>

    <div class="field">
      <label>Amount (RM)</label>
      <input type="number" id="txAmount" step="0.01" placeholder="0.00" inputmode="decimal">
    </div>

    <div class="field">
      <label>Description / Category</label>
      <input type="text" id="txDesc" placeholder="e.g., Lunch, Salary, Groceries">
    </div>

    <div class="field">
      <label>Date</label>
      <input type="date" id="txDate">
    </div>

    <div class="field" id="debtField">
      <label>Is this BNPL / Debt?</label>
      <select id="txDebt">
        <option value="no">No</option>
        <option value="yes">Yes</option>
      </select>
    </div>

    <button class="save" onclick="saveRecord()">Save Record</button>
  </div>
</div>

<!-- Settings Modal -->
<div class="modal" id="settingsModal">
  <div class="sheet">
    <button class="close" onclick="closeModal()">✕</button>
    <h3>Settings ⚙️</h3>
    <div class="settings-grid">
      <button onclick="exportData()">📤 Export Backup</button>
      <button onclick="triggerImport()">📥 Import Backup</button>
    </div>
    <input type="file" id="importFile" style="display:none" onchange="importData(event)">
