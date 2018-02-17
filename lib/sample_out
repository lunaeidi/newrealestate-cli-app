<td colspan="4">
            <div class="home_font_large marb5">
              See <strong>Heat Maps</strong> for your city or county
            </div>
          </td>
<td align="right" rowspan="2" valign="top" class="padr10 padt10">
            <img src="//static.trulia-cdn.com/images/grnarrow_small_rt.gif" width="28" height="25" alt="arrow">
          </td>
<td style="padding-top:8px; width: 100%;">
          <div style="width: 330px;">
            <input type="text" autocomplete="off" name="heatmap_location" style="width:330px;font-size:14px;" id="heatmap_location" placeholder="City, County or State" class="disabled_txt pad5">
            <div id="hm_search_error" class="dark_hilite hidden">Sorry, we don't have a heatmap for that location.</div>
            <script type="text/javascript">
              trulia.ready(function () {
                $('#heatmap_location').autosuggest({
                  data: {
                    types: ['city', 'county', 'state']
                  },
                  display: {
                    allow_invalid: false,
                    show_hint: !(trulia.browser.isMSIE && trulia.browser.version < 9)
                  },
                  select: function (data, el) {
                    // Alameda County, CA
                    // Alabama
                    // Oakland, CA
                    var locationArray = data.display.split(', ');

                    $('#heatmap_autocomplete_value').val(data.display);

                    switch (data.type)
                    {
                      case 'city':
                      case 'county':
                        $('#hm_state').val(locationArray[1]);
                        $('#hm_location').val(locationArray[0]);
                        $('#search').val(locationArray[0]);
                        break;
                      case 'state':
                        $('#hm_location').val('');
                        _.each(_STATES, function (val, key) {
                          if (val === data.display)
                          {
                            $('#hm_state').val(key);
                          }
                        });
                        $('#search').val('');
                        break;
                      default:
                        $("#hm_state").val('all_states');
                        $("#hm_location").val('');
                        $("#search").val('');
                        break;
                    }
                    $('#hm_search_form').submit();
                  }
                });
              });
            </script>
            <div id="heatmap_location_auto" class="location_auto"></div>
          </div>
          <input id="heatmap_autocomplete_value" type="hidden" name="heatmap_autocomplete_value" value="">
        </td>
<td valign="top" style="padding-left:15px;">
    <div style="width:100px;white-space:nowrap;">
      <div id="NAME_HEADER" onclick="HM_DO.updateDataTable('NAME');" class="pseudolink heat_map_title " style="float:left;font-weight:bold;font-size:13px;margin-left:-5px;">Maryland counties</div>
    </div>
  </td>
<td valign="top" align="right">
    <div style="width:120px;white-space:nowrap;">
      <div id="ALP_HEADER" onclick="HM_DO.updateDataTable('ALP','2017-08-23',1);" class="pseudolink heat_map_title heat_map_title_active" style="float:left;font-weight:bold;font-size:13px;margin-left:0px;">Avg. listing price</div>
      <div style="clear:both;font-size:10px;">Week ending Aug 23</div>
    </div>
  </td>
<td valign="top" align="right">
    <div style="width:140px;white-space:nowrap;">
      <div id="MSP_HEADER" onclick="HM_DO.updateDataTable('MSP','2017-08-23',1);" class="pseudolink heat_map_title " style="float:left;font-weight:bold;font-size:13px;">Median sales price</div>
      <div style="clear:both;font-size:10px;">Date range: May-Aug '17</div>
    </div>
  </td>
<td valign="top" align="right">
    <div style="width:120px;white-space:nowrap;padding-right:10px;">
      <div id="TR_HEADER" onclick="HM_DO.updateDataTable('TR','2017-08-23',1);" class="pseudolink heat_map_title " style="float:left;font-weight:bold;font-size:13px;margin-left:-5px;">Trulia popularity</div>
      <div style="clear:both;font-size:10px;">Week ending Aug 23</div>
    </div>
  </td>
<td style="clear:both;padding-left:15px;padding-bottom:5px;color:#666666;">
    <div onclick="HM_DO.updateDataTable('NAME');" class="pseudolink">
      <div style="float:left;margin-bottom:3px;padding-right:2px;">Name</div> 
      <div style="float:left;"><img src="//static.trulia-cdn.com/images/sort_dn_off.gif" id="sort_img_name" border="0"></div>
    </div>
  </td>
<td style="clear:both;padding-right:5px;padding-bottom:5px;color:#666666;" align="right">
    <div onclick="HM_DO.updateDataTable('ALP','2017-08-23',1);" class="pseudolink" style="float:right;">
      <div style="float:left;margin-bottom:3px;padding-right:2px;">Amount</div>
      <div style="float:left;"><img src="//static.trulia-cdn.com/images/sort_dn_on.gif" id="sort_img_ALP" border="0"></div>
    </div>
  </td>
<td style="clear:both;padding-right:5px;padding-bottom:5px;color:#666666;" align="right">
    <div onclick="HM_DO.updateDataTable('MSP','2017-08-23',1);" class="pseudolink" style="float:right;">
      <div style="float:left;margin-bottom:3px;padding-right:2px;">Amount</div>
      <div style="float:left;"><img src="//static.trulia-cdn.com/images/sort_dn_off.gif" id="sort_img_MSP" border="0"></div>
    </div>
  </td>
<td style="clear:both;padding-right:5px;padding-bottom:5px;color:#666666;" align="right">
    <div onclick="HM_DO.updateDataTable('TR','2017-08-23',1);" class="pseudolink" style="float:right;">
      <div style="float:left;margin-bottom:3px;padding-right:2px;">Rank</div>
      <div style="float:left;"><img src="//static.trulia-cdn.com/images/sort_dn_off.gif" id="sort_img_TR" border="0"></div>
    </div>
  </td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Talbot_County-heat_map/">Talbot</a>
</td>
<td style="padding-right:5px;" align="right">$772,328</td>
<td style="padding-right:5px;" align="right">$315,000</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Montgomery_County-heat_map/">Montgomery</a>
</td>
<td style="padding-right:5px;" align="right">$746,971</td>
<td style="padding-right:5px;" align="right">$450,000</td>
<td style="padding-right:5px;" align="right">5</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/CHARLES_County-heat_map/">CHARLES</a>
</td>
<td style="padding-right:5px;" align="right">$680,859</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Howard_County-heat_map/">Howard</a>
</td>
<td style="padding-right:5px;" align="right">$546,489</td>
<td style="padding-right:5px;" align="right">$420,500</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Queen_Anne%27s_County-heat_map/">Queen Anne's</a>
</td>
<td style="padding-right:5px;" align="right">$508,014</td>
<td style="padding-right:5px;" align="right">$345,000</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Anne_Arundel_County-heat_map/">Anne Arundel</a>
</td>
<td style="padding-right:5px;" align="right">$485,911</td>
<td style="padding-right:5px;" align="right">$342,000</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Frederick_County-heat_map/">Frederick</a>
</td>
<td style="padding-right:5px;" align="right">$390,893</td>
<td style="padding-right:5px;" align="right">$300,750</td>
<td style="padding-right:5px;" align="right">4</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Carroll_County-heat_map/">Carroll</a>
</td>
<td style="padding-right:5px;" align="right">$386,105</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-right:5px;" align="right">6</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Kent_County-heat_map/">Kent</a>
</td>
<td style="padding-right:5px;" align="right">$376,153</td>
<td style="padding-right:5px;" align="right">$208,000</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Calvert_County-heat_map/">Calvert</a>
</td>
<td style="padding-right:5px;" align="right">$360,583</td>
<td style="padding-right:5px;" align="right">$315,000</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Garrett_County-heat_map/">Garrett</a>
</td>
<td style="padding-right:5px;" align="right">$349,271</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-right:5px;" align="right">10</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Worcester_County-heat_map/">Worcester</a>
</td>
<td style="padding-right:5px;" align="right">$341,127</td>
<td style="padding-right:5px;" align="right">$230,945</td>
<td style="padding-right:5px;" align="right">1</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Charles_County-heat_map/">Charles</a>
</td>
<td style="padding-right:5px;" align="right">$339,378</td>
<td style="padding-right:5px;" align="right">$279,000</td>
<td style="padding-right:5px;" align="right">9</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Prince_George%27s_County-heat_map/">Prince George's</a>
</td>
<td style="padding-right:5px;" align="right">$324,590</td>
<td style="padding-right:5px;" align="right">$280,000</td>
<td style="padding-right:5px;" align="right">2</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Saint_Mary%27s_County-heat_map/">Saint Mary's</a>
</td>
<td style="padding-right:5px;" align="right">$320,000</td>
<td style="padding-right:5px;" align="right">$271,000</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Harford_County-heat_map/">Harford</a>
</td>
<td style="padding-right:5px;" align="right">$311,645</td>
<td style="padding-right:5px;" align="right">$248,450</td>
<td style="padding-right:5px;" align="right">3</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Cecil_County-heat_map/">Cecil</a>
</td>
<td style="padding-right:5px;" align="right">$292,675</td>
<td style="padding-right:5px;" align="right">$224,900</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/CARROLL_County-heat_map/">CARROLL</a>
</td>
<td style="padding-right:5px;" align="right">$279,000</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Dorchester_County-heat_map/">Dorchester</a>
</td>
<td style="padding-right:5px;" align="right">$252,052</td>
<td style="padding-right:5px;" align="right">$153,500</td>
<td style="padding-right:5px;" align="right">7</td>
<td style="padding-left:15px;">
<a href="/home_prices/Washington/Washington_County-heat_map/">Washington</a>
</td>
<td style="padding-right:5px;" align="right">$240,202</td>
<td style="padding-right:5px;" align="right">$179,900</td>
<td style="padding-right:5px;" align="right">8</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Caroline_County-heat_map/">Caroline</a>
</td>
<td style="padding-right:5px;" align="right">$214,650</td>
<td style="padding-right:5px;" align="right">$157,750</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Wicomico_County-heat_map/">Wicomico</a>
</td>
<td style="padding-right:5px;" align="right">$177,376</td>
<td style="padding-right:5px;" align="right">$157,590</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Somerset_County-heat_map/">Somerset</a>
</td>
<td style="padding-right:5px;" align="right">$171,802</td>
<td style="padding-right:5px;" align="right">$127,250</td>
<td style="padding-right:5px;" align="right">12</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/Allegany_County-heat_map/">Allegany</a>
</td>
<td style="padding-right:5px;" align="right">$115,831</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-left:15px;">
<a href="/home_prices/Maryland/HOWARD_County-heat_map/">HOWARD</a>
</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-right:5px;" align="right">-</td>
<td style="padding-right:5px;" align="right">-</td>
<td class="popup_top_left">
      <div class="trulia_popup_c">
        <div class="trulia_popup popup_background">
          <div class="trulia_popup_content">
          <div class="h4 typeEmphasize clearfix ">
            <div class="fleft" id="heatmap_about_box_popup_header" style="float: left;">How to use Heat Maps</div>
            <a href="" id="heatmap_about_box_popup_closer" onclick="toggle_menu(event, 'heatmap_about_box', 0); return false;" class="container-close notlink " style="position: absolute;" title="Close"> </a>
          </div>
          <div style="clear: both; display: block; height: 0; visibility: hidden;"></div>
          <div class="clearfix ">
            
        <ul style="margin-top:5px;padding-left:14px;">
          <li>
<b>Map colors</b> represent relative values:<br>
               <span style="color:#cc3300;">red = high</span><br>
               <span style="color:#ffcc00;">yellow = moderate</span><br>
               <span style="color:#669900;">green = low</span><br>
          </li>
          <li>To <b>see details</b> and get a Heat Map for each map area, click the icon in the center of the area.</li>
          <li>To <b>move the map</b>, click and drag</li>
        </ul>
          </div>

          </div>
        </div>
      </div>
    </td>
