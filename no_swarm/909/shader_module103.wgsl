struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec2<bool>,
    e: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -32403i), vec4<i32>(2147483647i, 2147483647i, -28927i, 1i), Struct_2(Struct_1(vec4<i32>(2147483647i, 3519i, 45837i, -19176i), vec4<u32>(1u, 0u, 4294967295u, 11400u), vec4<i32>(i32(-2147483648), 28770i, -32574i, 0i), false, 4294967295u), Struct_1(vec4<i32>(-46975i, 0i, 25496i, 45656i), vec4<u32>(51999u, 66971u, 43289u, 12333u), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 1i), true, 1u))), Struct_4(vec4<i32>(-12567i, -51491i, -9852i, -24976i), vec4<i32>(2147483647i, -1i, 0i, 1i), Struct_2(Struct_1(vec4<i32>(39791i, -6363i, -59070i, i32(-2147483648)), vec4<u32>(4294967295u, 1592u, 4294967295u, 1u), vec4<i32>(-2643i, 2147483647i, -34985i, -1i), true, 21048u), Struct_1(vec4<i32>(20816i, -1i, -10277i, 2147483647i), vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec4<i32>(1i, -9803i, i32(-2147483648), 0i), true, 13566u))), Struct_4(vec4<i32>(-7561i, 79004i, -28318i, 43121i), vec4<i32>(-34775i, 1i, -1i, -5272i), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -1i, -34289i, i32(-2147483648)), vec4<u32>(1064u, 0u, 1u, 4294967295u), vec4<i32>(-27814i, i32(-2147483648), -15113i, 21059i), false, 105086u), Struct_1(vec4<i32>(i32(-2147483648), -1i, -81027i, -1i), vec4<u32>(1u, 52445u, 4294967295u, 3947u), vec4<i32>(-36424i, 0i, 39386i, 35787i), false, 1u))), Struct_4(vec4<i32>(26040i, 1i, i32(-2147483648), 58542i), vec4<i32>(2147483647i, -50122i, 16797i, 2147483647i), Struct_2(Struct_1(vec4<i32>(1i, i32(-2147483648), -1i, i32(-2147483648)), vec4<u32>(1u, 1u, 1u, 25211u), vec4<i32>(i32(-2147483648), -41480i, -1i, 2147483647i), false, 31891u), Struct_1(vec4<i32>(-42125i, 28951i, 0i, i32(-2147483648)), vec4<u32>(84021u, 0u, 0u, 0u), vec4<i32>(0i, 0i, -12232i, -914i), false, 43829u))), Struct_4(vec4<i32>(-1i, 40775i, -24123i, 60179i), vec4<i32>(1i, 45142i, -1102i, 0i), Struct_2(Struct_1(vec4<i32>(1i, 2147483647i, i32(-2147483648), -14529i), vec4<u32>(4172u, 1u, 1u, 0u), vec4<i32>(0i, 1i, 0i, 1i), true, 1u), Struct_1(vec4<i32>(37671i, 1i, i32(-2147483648), 0i), vec4<u32>(0u, 27324u, 1u, 1u), vec4<i32>(-1i, 1536i, 7964i, -6777i), false, 4294967295u))), Struct_4(vec4<i32>(0i, 21209i, i32(-2147483648), 1935i), vec4<i32>(2147483647i, 0i, 0i, 1i), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -63996i, i32(-2147483648), 36922i), vec4<u32>(1u, 0u, 1u, 18732u), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), i32(-2147483648)), true, 1u), Struct_1(vec4<i32>(-5745i, 41604i, -45754i, 0i), vec4<u32>(47628u, 1u, 1u, 36127u), vec4<i32>(22959i, 0i, 0i, -46190i), true, 1u))), Struct_4(vec4<i32>(i32(-2147483648), -18893i, -23589i, i32(-2147483648)), vec4<i32>(2147483647i, 13360i, 1i, i32(-2147483648)), Struct_2(Struct_1(vec4<i32>(-39958i, 42268i, 61739i, 2147483647i), vec4<u32>(4294967295u, 20770u, 11324u, 36457u), vec4<i32>(2147483647i, 0i, i32(-2147483648), 0i), false, 1169u), Struct_1(vec4<i32>(1i, 6330i, 1i, 52095i), vec4<u32>(1u, 0u, 40671u, 71505u), vec4<i32>(i32(-2147483648), 77855i, 2147483647i, 45982i), false, 0u))), Struct_4(vec4<i32>(34470i, 3925i, 48361i, 0i), vec4<i32>(-26418i, 38004i, 1i, 27086i), Struct_2(Struct_1(vec4<i32>(0i, 12488i, i32(-2147483648), -64905i), vec4<u32>(4294967295u, 0u, 8845u, 0u), vec4<i32>(-33911i, i32(-2147483648), 0i, -9304i), true, 101765u), Struct_1(vec4<i32>(1i, i32(-2147483648), 1i, -24093i), vec4<u32>(31704u, 0u, 0u, 4294967295u), vec4<i32>(-15650i, -1i, 2147483647i, 2147483647i), true, 0u))), Struct_4(vec4<i32>(-70790i, i32(-2147483648), 7556i, 2147483647i), vec4<i32>(24027i, -14416i, 1i, -29472i), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -8020i, -29287i, 0i), vec4<u32>(0u, 40836u, 66235u, 59120u), vec4<i32>(2147483647i, -6862i, -1i, 29782i), false, 4294967295u), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 31890i, -31957i), vec4<u32>(52153u, 0u, 1u, 0u), vec4<i32>(-36497i, 23780i, -23137i, i32(-2147483648)), true, 1u))), Struct_4(vec4<i32>(-69294i, -631i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, -11108i, -22712i), Struct_2(Struct_1(vec4<i32>(-18005i, 7537i, -61895i, 1i), vec4<u32>(33403u, 0u, 4294967295u, 55380u), vec4<i32>(1i, -27099i, 74312i, 1i), false, 131248u), Struct_1(vec4<i32>(-1689i, 13553i, 0i, 1i), vec4<u32>(1u, 1u, 38746u, 4294967295u), vec4<i32>(-9681i, 18690i, 2147483647i, 36815i), false, 0u))), Struct_4(vec4<i32>(-14829i, 1i, -9987i, -1i), vec4<i32>(57813i, 2147483647i, 32006i, 28658i), Struct_2(Struct_1(vec4<i32>(1i, 2147483647i, 10152i, i32(-2147483648)), vec4<u32>(4294967295u, 44382u, 48340u, 1u), vec4<i32>(i32(-2147483648), -4264i, -1i, 28751i), false, 0u), Struct_1(vec4<i32>(-1i, 0i, 36381i, 0i), vec4<u32>(0u, 33447u, 6592u, 4294967295u), vec4<i32>(0i, -738i, 0i, 65281i), true, 1u))), Struct_4(vec4<i32>(0i, 15534i, 10573i, 1i), vec4<i32>(2147483647i, 7930i, i32(-2147483648), 12702i), Struct_2(Struct_1(vec4<i32>(-1i, 24619i, 70505i, 33712i), vec4<u32>(68143u, 0u, 92535u, 18270u), vec4<i32>(24383i, 17901i, -16674i, 1i), false, 1u), Struct_1(vec4<i32>(-1i, 0i, 1i, 11987i), vec4<u32>(18438u, 0u, 62111u, 43703u), vec4<i32>(0i, 8801i, -1i, 12307i), false, 26414u))), Struct_4(vec4<i32>(-6252i, 0i, 2147483647i, 31150i), vec4<i32>(0i, -1i, -9034i, 1i), Struct_2(Struct_1(vec4<i32>(6941i, 36923i, 0i, -9360i), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<i32>(12169i, 1i, 38167i, 2147483647i), false, 7887u), Struct_1(vec4<i32>(16472i, -1i, -57557i, 21546i), vec4<u32>(4294967295u, 5107u, 16893u, 0u), vec4<i32>(-1i, -10186i, -9694i, 2147483647i), false, 106402u))), Struct_4(vec4<i32>(53096i, 0i, 0i, i32(-2147483648)), vec4<i32>(1i, 2147483647i, i32(-2147483648), 19377i), Struct_2(Struct_1(vec4<i32>(36574i, 0i, 2147483647i, 3757i), vec4<u32>(26178u, 4294967295u, 994u, 16368u), vec4<i32>(-1i, 0i, 2147483647i, 48318i), false, 6501u), Struct_1(vec4<i32>(-32229i, -51578i, -1i, -1i), vec4<u32>(13563u, 46285u, 0u, 4834u), vec4<i32>(-61362i, -13982i, 38305i, 19493i), false, 23704u))), Struct_4(vec4<i32>(349i, 61183i, 5267i, 1417i), vec4<i32>(-45775i, 3519i, 16115i, 2147483647i), Struct_2(Struct_1(vec4<i32>(22986i, i32(-2147483648), 0i, 1i), vec4<u32>(1u, 1u, 0u, 54959u), vec4<i32>(-64618i, i32(-2147483648), -52746i, -1i), true, 45209u), Struct_1(vec4<i32>(1i, i32(-2147483648), -1i, -31514i), vec4<u32>(59383u, 1u, 4294967295u, 30525u), vec4<i32>(-1i, 27033i, i32(-2147483648), -95015i), true, 4294967295u))), Struct_4(vec4<i32>(-6822i, 1i, i32(-2147483648), 55196i), vec4<i32>(0i, -54238i, 1i, -1i), Struct_2(Struct_1(vec4<i32>(-1i, 1i, 7025i, i32(-2147483648)), vec4<u32>(43248u, 1u, 13446u, 16884u), vec4<i32>(2147483647i, 3893i, -44909i, i32(-2147483648)), true, 40212u), Struct_1(vec4<i32>(32307i, -22747i, -67737i, 2147483647i), vec4<u32>(33913u, 1u, 4294967295u, 4294967295u), vec4<i32>(2147483647i, 58083i, 2147483647i, 27634i), false, 59489u))), Struct_4(vec4<i32>(-1i, 1i, -27919i, 2147483647i), vec4<i32>(-5961i, 11812i, 1i, 0i), Struct_2(Struct_1(vec4<i32>(-21007i, 2147483647i, -1i, 1i), vec4<u32>(0u, 5076u, 12618u, 4294967295u), vec4<i32>(-1i, 2261i, -1i, 1i), true, 44448u), Struct_1(vec4<i32>(34287i, 0i, 26731i, 1i), vec4<u32>(0u, 25119u, 2078u, 1u), vec4<i32>(2147483647i, -1i, 44765i, 1i), false, 1u))), Struct_4(vec4<i32>(17172i, 0i, 52168i, 13380i), vec4<i32>(31959i, 22499i, 2147483647i, 1i), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 7134i), vec4<u32>(1u, 1u, 1u, 63460u), vec4<i32>(-1i, 40835i, -7190i, -29618i), true, 4294967295u), Struct_1(vec4<i32>(1i, 52177i, 50491i, -24572i), vec4<u32>(45753u, 37301u, 30527u, 23942u), vec4<i32>(20694i, 18286i, 1i, 18805i), false, 0u))), Struct_4(vec4<i32>(27284i, 1i, -75186i, 16429i), vec4<i32>(i32(-2147483648), i32(-2147483648), 18574i, -14586i), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 0i, 2147483647i, 34375i), vec4<u32>(82514u, 4294967295u, 0u, 1u), vec4<i32>(2147483647i, i32(-2147483648), 9596i, -7024i), false, 6152u), Struct_1(vec4<i32>(-75914i, -18085i, 1i, -1i), vec4<u32>(4294967295u, 104509u, 4294967295u, 17822u), vec4<i32>(8513i, -61307i, 2147483647i, -22799i), false, 51198u))));

var<private> global2: vec4<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<u32> {
    global1 = array<Struct_4, 19>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(569f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(105f - -1006f), _wgslsmith_f_op_f32(700f + 1468f))))));
    global2 = select(vec4<bool>(true, true | any(global2.yy), !(!(global2.x | global2.x)), true), vec4<bool>(4294967295u < _wgslsmith_add_u32(global0.e | 38104u, _wgslsmith_mod_u32(1u, u_input.b)), !any(select(vec4<bool>(global0.d, false, false, global0.d), vec4<bool>(true, global2.x, true, true), vec4<bool>(global2.x, global2.x, true, global0.d))), all(select(global2.yxx, global2.www, global2.x)), false), !vec4<bool>(global0.d, !global0.d && all(vec2<bool>(true, global2.x)), select(false, false, true) | true, (global0.d == false) | false));
    var_0 = 1f;
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(global0.c, -vec4<i32>(-1i, -3568i, u_input.a.x << (4294967295u % 32u), 1i), abs(~global0.a) << (vec4<u32>(0u, global0.e, _wgslsmith_div_u32(49503u, u_input.b), ~u_input.b) % vec4<u32>(32u))), global0.b, -vec4<i32>(~46471i, min(-60342i, select(global0.c.x, global0.a.x, false)), -(i32(-1i) * -2147483647i), 8099i & _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, 0i), vec2<i32>(-103161i, u_input.a.x))), true, 4294967295u);
    return vec3<u32>(_wgslsmith_dot_vec4_u32(var_1.b, _wgslsmith_div_vec4_u32(~firstLeadingBit(global0.b), vec4<u32>(133863u, countOneBits(0u), var_1.e, u_input.b))), ~81245u, var_1.e | _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 8796u, var_1.b.x), _wgslsmith_clamp_vec3_u32(var_1.b.xzw, global0.b.zyw, var_1.b.xyz)), ~(~global0.b.zxy)));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: u32, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -791f))))) * 1f);
    var var_1 = global2.x;
    var var_2 = min(reverseBits(u_input.a) >> (abs(func_3() >> (vec3<u32>(14050u, u_input.b, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u)), ~vec3<i32>(_wgslsmith_mod_i32(0i, ~arg_1.x), _wgslsmith_dot_vec2_i32(arg_1, arg_1), global0.c.x));
    var var_3 = u_input.a.x & 44227i;
    var var_4 = global1[_wgslsmith_index_u32(40461u, 19u)];
    return var_4.c;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<f32>) -> Struct_1 {
    global1 = array<Struct_4, 19>();
    let var_0 = ~vec2<i32>(~(firstTrailingBit(arg_1.x) ^ -2147483647i), u_input.a.x);
    let var_1 = func_2(arg_2.x, u_input.a.yz, u_input.b, 17773u);
    var var_2 = Struct_3(func_2(-1000f, _wgslsmith_sub_vec2_i32(reverseBits(var_1.b.a.zw), vec2<i32>(var_1.b.c.x, var_0.x)), _wgslsmith_div_u32(1u, u_input.b), _wgslsmith_dot_vec4_u32(~var_1.a.b, countOneBits(_wgslsmith_mult_vec4_u32(var_1.b.b, global0.b)))), func_2(1000f, vec2<i32>(i32(-1i) * -5035i, 54080i) | arg_1, u_input.b, func_3().x), Struct_1(~(vec4<i32>(-1i) * -vec4<i32>(-1i, u_input.a.x, arg_0, 2147483647i)), vec4<u32>(u_input.b, max(30705u, u_input.b & global0.e), ~var_1.a.b.x | ~u_input.b, ~_wgslsmith_mod_u32(global0.b.x, global0.b.x)), ~(vec4<i32>(var_0.x, global0.c.x, -21590i, arg_1.x) << (vec4<u32>(u_input.b, 16314u, var_1.b.e, u_input.b) % vec4<u32>(32u))), -30977i > global0.c.x, ~(global0.b.x >> (3969u % 32u))), global2.wz, all(!vec3<bool>(global0.d, !global2.x, global2.x)));
    var var_3 = all(global2.wyz);
    return func_2(arg_2.x, -global0.c.ww, abs(~u_input.b) << (14796u % 32u), u_input.b & u_input.b).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_sub_i32(-2147483647i >> ((~global0.e & u_input.b) % 32u), 0i), abs(countOneBits(countOneBits(~vec2<i32>(15668i, global0.c.x)))), vec2<f32>(1f, 1f));
    global1 = array<Struct_4, 19>();
    let var_0 = Struct_1(global0.c, global0.b, _wgslsmith_div_vec4_i32(vec4<i32>(-u_input.a.x, 1i & ~u_input.a.x, -1i, ~9961i), _wgslsmith_div_vec4_i32((global0.c >> (global0.b % vec4<u32>(32u))) >> (abs(vec4<u32>(u_input.b, global0.e, 1u, 72597u)) % vec4<u32>(32u)), reverseBits(vec4<i32>(-33769i, 2147483647i, u_input.a.x, global0.c.x)))), false, ~global0.e);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -946f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1492f)));
    global2 = select(!select(!select(vec4<bool>(true, var_0.d, false, var_0.d), vec4<bool>(global2.x, var_0.d, true, global0.d), vec4<bool>(true, var_0.d, true, var_0.d)), vec4<bool>(true, true, true, false), !any(vec4<bool>(global0.d, var_0.d, global0.d, global2.x))), !(!(!select(vec4<bool>(var_0.d, true, global0.d, global2.x), vec4<bool>(false, true, true, false), vec4<bool>(var_0.d, false, false, global2.x)))), global0.d);
    var var_2 = var_0.a;
    global1 = array<Struct_4, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(var_2.yw, _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, 6436i), 7390i), ~firstTrailingBit(var_2.wz))), _wgslsmith_f_op_f32(ceil(-307f)));
}

