// Amazon で使った金額の合計を出す奴
//
// 使い方: 
//   1. 全部コピーする (右上の Raw をクリックした先でやるのが楽)
//   2. Amazon の注文履歴ページ ( https://www.amazon.co.jp/gp/css/order-history/ ) を開く
//   3. F12 または 右クリ→要素の検証 とかで出てくる開発者ツールのコンソール (JavaScript REPL) にペースト
//   4. エンターで実行
//      (Firefox はなんか allow pasting とタイプしろみたいなことを言われるので従う)
//   5. しばらく待つと alert で合計金額を表示
//
// 2014-12-28 / 2016-05-10 時点での DOM 構造に対応, Firefox と Chrome でテスト済

(function(){
    var itemDelimiter = " / ";
    var total = {};
    var year = '2016';
    var all = false;
    
    function init(num) {
        if(typeof num !== 'number') {
            var num = 0;
            year = window.prompt('何年分の注文を集計しますか？\n - 半角数字4桁で入力してください\n - 全期間を集計する場合は「all」と入力します', year);
            if(year === 'all') {
                all = true;
                year = jQuery('div.top-controls select option:last').val().match(/[0-9]/g).join('');
            }
            year = Number(year);
        }
        // 第二引数を true にすると各商品とかエラーを逐一表示する
        var progress = load(num, false);
        console.log(year + '年の集計中…  / ' + (num+1) + 'ページ目');
        progress.done(function(results){
            if (typeof total[year] ===  'undefined') {
                total[year] = results;
            } else {
                total[year] = total[year].concat(results);
            }
            init(num+1);
        }).fail(function(){
            if(all && new Date().getFullYear() > year) {
                year++;
                init(0);
            } else {
                var _total = 0;
                jQuery.each(total, function(year, results){
                    var yen = 0;
                    jQuery.each(results, function(){
                        yen += this.price;
                    });
                    _total += yen;
                });
                // result
                console.log('合計 ' + _total + ' 円');
                alert('合計 ' + _total + ' 円');
            }
        });
    }
    
    function load(num, verbose) {
        var df = jQuery.Deferred();
        var page = get(num, verbose);
        page.done(function(data){
            var dom = jQuery.parseHTML(data);
            var results = [];

            jQuery(dom).find('div.order').each(function(){
                var box = jQuery(this);

                var dateText = jQuery(box.find('div.order-info span.value')[0]).text();

                var items = [];
                box.find('div.a-row>a.a-link-normal').each(function(){
                    items.push(jQuery(this).text().trim());
                });
                var item = items.join(itemDelimiter);

                var priceText = jQuery(box.find('div.order-info span.value')[1]).text();
                var price = Number(priceText.match(/[0-9]/g).join(''));

                if (verbose) console.log(item, price);
                results.push({'date':dateText,'item':item,'price':price});
            });

            if(results.length <= 0) df.reject();
            else df.resolve(results);
        });
        return df.promise();
    }
    
    function get(num) {
        var df = jQuery.Deferred();
        jQuery.ajax({
            url: 'https://www.amazon.co.jp/gp/css/order-history?digitalOrders=1&unifiedOrders=1&orderFilter=year-'+year+'&startIndex='+num*10,
            beforeSend: function (xhr){
                xhr.setRequestHeader('X-Requested-With', {toString: function(){ return ''; }});
            },
        })
            .success(function(data){
                df.resolve(data);
            })
            .fail(function(jqXHR, msg){
                if (verbose) console.log("fail", msg);
            });
        return df.promise();
    }
    
    if(typeof jQuery !== 'function') {
        var d=document;
        var s=d.createElement('script');
        s.src='//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js';
        s.onload=init;
        d.body.appendChild(s);
    } else {
        init();
    }
})();
