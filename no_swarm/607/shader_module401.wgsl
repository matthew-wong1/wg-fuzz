struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 10>;

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(1i, 1u, 1153f, 1u, vec4<i32>(-1i, 0i, -54636i, 19205i)), vec4<i32>(2147483647i, -1i, 43466i, 2280i), Struct_1(0i, 4294967295u, 931f, 1u, vec4<i32>(-45382i, 1i, -26866i, -1i)), 1722f, 14149u), Struct_2(Struct_1(2147483647i, 7903u, -495f, 1u, vec4<i32>(71388i, 41193i, 1134i, i32(-2147483648))), vec4<i32>(10985i, -23041i, 2147483647i, -383i), Struct_1(1i, 19800u, 1289f, 0u, vec4<i32>(i32(-2147483648), -32220i, 2147483647i, 1i)), -399f, 1u), Struct_2(Struct_1(-22440i, 1u, 1579f, 4294967295u, vec4<i32>(-22316i, i32(-2147483648), 2147483647i, 0i)), vec4<i32>(-26614i, 1i, -1777i, -1i), Struct_1(-1996i, 9053u, -477f, 41277u, vec4<i32>(-51531i, 0i, 0i, i32(-2147483648))), -786f, 45870u), Struct_2(Struct_1(42336i, 108272u, 494f, 1u, vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -8427i)), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -48540i), Struct_1(28935i, 28753u, -730f, 4294967295u, vec4<i32>(-1i, 1i, 2147483647i, 2147483647i)), -1000f, 9849u), Struct_2(Struct_1(2147483647i, 4294967295u, -470f, 1u, vec4<i32>(1i, 1i, 0i, 2147483647i)), vec4<i32>(9794i, i32(-2147483648), 0i, 7068i), Struct_1(-29489i, 1u, 649f, 0u, vec4<i32>(i32(-2147483648), 0i, 1i, 2147483647i)), -865f, 29657u), Struct_2(Struct_1(-24080i, 35137u, -847f, 67212u, vec4<i32>(-37606i, 35596i, 2147483647i, -39550i)), vec4<i32>(2147483647i, -3909i, 17045i, -1i), Struct_1(2147483647i, 62277u, 1400f, 4294967295u, vec4<i32>(-4623i, 29966i, 17652i, 5491i)), -841f, 61071u), Struct_2(Struct_1(-7173i, 4725u, -1452f, 21755u, vec4<i32>(-1i, -2861i, 2147483647i, -46152i)), vec4<i32>(2147483647i, 73942i, 2147483647i, -52598i), Struct_1(2147483647i, 0u, -2398f, 19079u, vec4<i32>(-12318i, 1i, 2147483647i, 0i)), 1015f, 0u), Struct_2(Struct_1(57074i, 60551u, -335f, 82123u, vec4<i32>(2147483647i, 0i, i32(-2147483648), 1i)), vec4<i32>(57578i, -1i, -22511i, -23299i), Struct_1(-1i, 1u, -1000f, 4294967295u, vec4<i32>(-12227i, -17439i, 0i, i32(-2147483648))), 567f, 50414u), Struct_2(Struct_1(2147483647i, 156u, 111f, 26856u, vec4<i32>(-12729i, 1i, 0i, 0i)), vec4<i32>(2147483647i, -1i, 2147483647i, 0i), Struct_1(11704i, 1u, -125f, 25450u, vec4<i32>(-55496i, 11561i, 32429i, -1i)), 852f, 2549u), Struct_2(Struct_1(2922i, 1u, 1000f, 95943u, vec4<i32>(29505i, 3552i, -793i, 35480i)), vec4<i32>(1i, 2147483647i, 2147483647i, -700i), Struct_1(2147483647i, 44582u, 1914f, 468u, vec4<i32>(788i, 143i, 21714i, 1697i)), -1495f, 0u), Struct_2(Struct_1(-1i, 51872u, 342f, 72364u, vec4<i32>(-27621i, i32(-2147483648), 1i, 0i)), vec4<i32>(30491i, -1i, 34055i, -64137i), Struct_1(22840i, 4294967295u, -733f, 0u, vec4<i32>(-10658i, -1i, 36658i, 1i)), 2296f, 1u), Struct_2(Struct_1(i32(-2147483648), 0u, 740f, 17127u, vec4<i32>(-13639i, i32(-2147483648), 2147483647i, 2147483647i)), vec4<i32>(2147483647i, 1i, 2147483647i, i32(-2147483648)), Struct_1(-26551i, 4294967295u, -400f, 1724u, vec4<i32>(10945i, 1i, 22153i, 0i)), -1445f, 33939u), Struct_2(Struct_1(18693i, 55574u, -194f, 40262u, vec4<i32>(0i, 0i, 1i, -1i)), vec4<i32>(14489i, 35964i, 10659i, 26295i), Struct_1(1i, 700u, 1303f, 11171u, vec4<i32>(i32(-2147483648), 2147483647i, -1i, i32(-2147483648))), 1147f, 4294967295u), Struct_2(Struct_1(-13918i, 19167u, -164f, 16912u, vec4<i32>(49651i, i32(-2147483648), 0i, -26819i)), vec4<i32>(-1i, 2147483647i, -10436i, 30853i), Struct_1(-1i, 1u, 150f, 43221u, vec4<i32>(-1i, -14234i, -25913i, i32(-2147483648))), -253f, 32617u), Struct_2(Struct_1(-14821i, 4294967295u, 867f, 4294967295u, vec4<i32>(i32(-2147483648), 19844i, -314i, -1i)), vec4<i32>(20321i, 56119i, 0i, 2147483647i), Struct_1(28536i, 61960u, -1836f, 4294967295u, vec4<i32>(72605i, 0i, 1i, i32(-2147483648))), 103f, 49820u), Struct_2(Struct_1(1812i, 97849u, -209f, 87969u, vec4<i32>(-94913i, 2147483647i, -23230i, -1i)), vec4<i32>(-69500i, -31080i, i32(-2147483648), i32(-2147483648)), Struct_1(-46255i, 1u, 695f, 4294967295u, vec4<i32>(1i, -1i, 1i, 41215i)), -161f, 4294967295u), Struct_2(Struct_1(-1i, 38472u, -1759f, 30017u, vec4<i32>(27052i, -20724i, -38011i, -1i)), vec4<i32>(-17565i, 19116i, 51338i, i32(-2147483648)), Struct_1(0i, 4294967295u, -246f, 30017u, vec4<i32>(8078i, -2101i, -1i, 1i)), 1126f, 0u), Struct_2(Struct_1(7251i, 4294967295u, -835f, 0u, vec4<i32>(1i, -1i, 18656i, -10624i)), vec4<i32>(3717i, -1i, 0i, i32(-2147483648)), Struct_1(1i, 0u, 226f, 4294967295u, vec4<i32>(15644i, 0i, 6152i, 28572i)), 414f, 0u), Struct_2(Struct_1(-872i, 4294967295u, 1096f, 12105u, vec4<i32>(1i, -17135i, 14638i, -1289i)), vec4<i32>(-740i, 1i, 50271i, -16626i), Struct_1(-41523i, 0u, -776f, 54071u, vec4<i32>(2147483647i, 1i, 1i, -1i)), -1622f, 39899u), Struct_2(Struct_1(-52455i, 14262u, 549f, 0u, vec4<i32>(1i, 47882i, -11983i, 0i)), vec4<i32>(-1i, -26008i, 1i, 26715i), Struct_1(2132i, 4294967295u, -243f, 9975u, vec4<i32>(-2015i, 0i, 1i, i32(-2147483648))), 1932f, 7547u), Struct_2(Struct_1(i32(-2147483648), 16186u, 501f, 60354u, vec4<i32>(21203i, 13964i, 7066i, -1i)), vec4<i32>(38531i, 2147483647i, 14186i, 18006i), Struct_1(2147483647i, 117398u, -108f, 49191u, vec4<i32>(44196i, 1i, -1648i, 1i)), 459f, 69542u), Struct_2(Struct_1(46391i, 37367u, 551f, 4294967295u, vec4<i32>(-58932i, -1i, 19136i, -26288i)), vec4<i32>(17800i, 3857i, -20095i, 2147483647i), Struct_1(-44329i, 84042u, 505f, 0u, vec4<i32>(-11331i, -48197i, 62979i, 10424i)), 117f, 13398u), Struct_2(Struct_1(6185i, 0u, -1329f, 38560u, vec4<i32>(-34684i, -4991i, 12342i, i32(-2147483648))), vec4<i32>(36027i, 19267i, 10776i, -16020i), Struct_1(27004i, 1u, 1000f, 14904u, vec4<i32>(-899i, 30298i, 29145i, 0i)), -1330f, 4294967295u), Struct_2(Struct_1(i32(-2147483648), 39954u, -162f, 1u, vec4<i32>(0i, -72919i, -32322i, 0i)), vec4<i32>(-1i, -5997i, -14604i, 2031i), Struct_1(5745i, 24589u, 2066f, 4040u, vec4<i32>(-1i, i32(-2147483648), 41026i, 53318i)), -136f, 4294967295u));

var<private> global3: Struct_2;

var<private> global4: u32 = 34808u;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = Struct_3(any(vec2<bool>(true, true)), true, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 28309u), 24u)], true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.d), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d * var_0.c.a.c))))));
    var var_2 = Struct_3(all(vec2<bool>(any(!vec3<bool>(var_0.a, false, true)), !var_0.a)), !(all(vec4<bool>(var_0.b, var_0.a, false, false)) & true), Struct_2(Struct_1(~reverseBits(u_input.a), global3.a.b, 1538f, global3.c.d, ~reverseBits(global3.a.e)), var_0.c.b, var_0.c.a, _wgslsmith_f_op_f32(ceil(221f)), var_0.c.e), 53410u == _wgslsmith_sub_u32(abs(u_input.c.x), ~0u << (reverseBits(global3.c.d) % 32u)));
    global3 = Struct_2(Struct_1(abs((global1[_wgslsmith_index_u32(1u, 10u)] | -1i) >> (_wgslsmith_mult_u32(9698u, u_input.c.x) % 32u)), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.c.d, -971f))), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(var_2.c.c.b, 34728u), ~63628u), -vec4<i32>(reverseBits(-3473i), 0i, -31532i, _wgslsmith_dot_vec4_i32(global3.c.e, var_2.c.c.e))), -var_0.c.b, var_0.c.c, 548f, _wgslsmith_sub_u32(var_0.c.e, 77830u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.a.c) - _wgslsmith_f_op_f32(f32(-1f) * -2365f)), _wgslsmith_f_op_f32(-var_2.c.d), var_2.b)) - -299f));
    return any(vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.d, var_0.a, var_0.a), all(vec3<bool>(true, false, true)))), var_2.d));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec2<f32>) -> bool {
    var var_0 = vec3<i32>(_wgslsmith_clamp_i32(-62426i, firstLeadingBit(-(u_input.b | global1[_wgslsmith_index_u32(4294967295u, 10u)])), arg_1.x), ~arg_1.x, -abs(11573i));
    let var_1 = u_input.c.yz;
    global0 = _wgslsmith_dot_vec3_i32(~(_wgslsmith_sub_vec3_i32(min(arg_1, arg_1), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 0i, global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec3<i32>(-39236i, -22882i, u_input.a))) ^ max(~arg_1, -vec3<i32>(arg_0.c.c.a, u_input.a, 48096i))), arg_0.c.c.e.wzw);
    global0 = 1i;
    let var_2 = _wgslsmith_sub_i32(0i, -1i);
    return true;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>) -> vec2<bool> {
    global1 = array<i32, 10>();
    var var_0 = 1263f;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -774f);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(984f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -208f)), all(vec3<bool>(true, true, true)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(2072u, 35262u, ~4294967295u, ~global3.c.b)), 24u)], func_4(Struct_3(false, true, Struct_2(Struct_1(global3.b.x, u_input.c.x, arg_1.x, 0u, global3.a.e), abs(vec4<i32>(48515i, global3.b.x, 1i, -2147483647i)), Struct_1(-2147483647i, 4294967295u, 232f, u_input.c.x, global3.c.e), -819f, ~58517u), func_3()), vec3<i32>(-2147483647i, -2147483647i, global3.c.a), vec2<f32>(_wgslsmith_f_op_f32(round(980f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1332f)) + 1000f))));
    global1 = array<i32, 10>();
    return !select(vec2<bool>(false, var_2.d), vec2<bool>(all(vec3<bool>(false, var_2.a, var_2.b)), false), all(select(!vec2<bool>(var_2.a, var_2.d), select(vec2<bool>(false, true), vec2<bool>(var_2.a, true), vec2<bool>(var_2.a, true)), false)));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> StorageBuffer {
    var var_0 = Struct_3(all(func_2(arg_1.wy, _wgslsmith_f_op_vec2_f32(-arg_1.zy))) || any(!(!vec3<bool>(arg_0, true, arg_0))), !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.c.c), arg_1.x)) >= _wgslsmith_f_op_f32(574f * _wgslsmith_f_op_f32(-1232f - -884f))), Struct_2(Struct_1(-2147483647i, ~abs(global3.c.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), 428f)), 0u >> (u_input.c.x % 32u), global3.a.e), vec4<i32>(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.c.x, 10u)] ^ global3.a.a, ~global3.a.a, u_input.a), u_input.b, 2147483647i, _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], max(global1[_wgslsmith_index_u32(111769u, 10u)], 2147483647i), -global3.a.e.x)), Struct_1(reverseBits(global1[_wgslsmith_index_u32(12525u, 10u)]), ~abs(global3.e), -932f, 0u, _wgslsmith_div_vec4_i32(vec4<i32>(global3.a.e.x, 23163i, global3.a.a, -27041i), -vec4<i32>(global3.a.e.x, 0i, global1[_wgslsmith_index_u32(1u, 10u)], 29601i))), global3.a.c, u_input.c.x), all(!vec3<bool>(global3.c.b == global3.e, arg_0, !arg_0)));
    var_0 = Struct_3(all(!select(!vec3<bool>(false, arg_0, arg_0), select(vec3<bool>(true, var_0.d, var_0.d), vec3<bool>(false, arg_0, false), arg_0), true)), _wgslsmith_f_op_f32(-arg_1.x) >= var_0.c.d, Struct_2(Struct_1(_wgslsmith_mod_i32(-37548i, _wgslsmith_dot_vec3_i32(var_0.c.a.e.zyw, var_0.c.c.e.xyw)), global3.a.d | (84511u | u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a.c * 602f)), firstLeadingBit(~u_input.c.x), global3.b), vec4<i32>(4339i, -31826i, countOneBits(~var_0.c.a.a), -2147483647i), Struct_1(abs(-19311i), ~(~var_0.c.a.b), 1287f, u_input.c.x, vec4<i32>(~11176i, firstTrailingBit(2147483647i), global3.a.a >> (u_input.c.x % 32u), i32(-1i) * -23228i)), _wgslsmith_f_op_f32(global3.c.c - -105f), global3.a.b), !(!all(select(vec4<bool>(arg_0, false, false, false), vec4<bool>(false, true, arg_0, false), var_0.a))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1));
    var var_2 = reverseBits(~(vec3<u32>(70370u, reverseBits(22806u), global3.e) | select(vec3<u32>(global3.a.b, 26907u, u_input.c.x), countOneBits(vec3<u32>(49976u, var_0.c.a.b, 11441u)), vec3<bool>(arg_0, true, arg_0))));
    let var_3 = _wgslsmith_f_op_vec2_f32(round(arg_1.zw));
    return StorageBuffer(vec4<i32>(~(var_0.c.c.a >> (0u % 32u)) << (var_2.x % 32u), global1[_wgslsmith_index_u32(u_input.c.x, 10u)], min(-1276i, _wgslsmith_mod_i32(~(-10140i), countOneBits(18102i))), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a;
    global4 = _wgslsmith_clamp_u32(1u ^ global3.c.b, 76023u, ~_wgslsmith_div_u32(~83821u >> (global3.a.d % 32u), 109483u));
    global4 = var_0.d;
    let var_1 = 2432f;
    let var_2 = u_input.c.x & global3.c.d;
    let x = u_input.a;
    s_output = func_1(false, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -975f, -760f, global3.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, global3.a.c, global3.d, 950f), vec4<f32>(var_1, global3.c.c, global3.a.c, 1063f), vec4<bool>(true, false, true, false)))))))));
}

