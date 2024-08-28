struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_3,
    d: vec2<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<f32>(-739f, -1582f, -1105f), vec3<f32>(-292f, -503f, -848f), 2808f, false, vec4<bool>(true, false, false, false)), Struct_1(vec3<f32>(413f, -1086f, -1661f), vec3<f32>(457f, -1338f, 241f), -228f, false, vec4<bool>(true, false, false, false)), Struct_1(vec3<f32>(-1545f, 1000f, 1807f), vec3<f32>(100f, -216f, 1792f), -1788f, true, vec4<bool>(true, true, false, true)), Struct_1(vec3<f32>(1227f, 637f, -1110f), vec3<f32>(-1000f, -618f, 1859f), 1670f, true, vec4<bool>(false, true, false, true)), Struct_1(vec3<f32>(1167f, 1021f, 102f), vec3<f32>(127f, -235f, 149f), 365f, true, vec4<bool>(true, true, true, false)), Struct_1(vec3<f32>(341f, -209f, 1698f), vec3<f32>(-1055f, 384f, 951f), -1381f, true, vec4<bool>(true, false, false, true)), Struct_1(vec3<f32>(-864f, -476f, -587f), vec3<f32>(-1417f, 1969f, -495f), -1651f, true, vec4<bool>(true, true, true, false)), Struct_1(vec3<f32>(-548f, 1930f, 236f), vec3<f32>(-935f, -706f, -237f), -435f, false, vec4<bool>(true, false, false, false)), Struct_1(vec3<f32>(-835f, 1040f, -988f), vec3<f32>(-1000f, 919f, -1292f), 743f, true, vec4<bool>(true, true, true, false)), Struct_1(vec3<f32>(224f, 1904f, -1000f), vec3<f32>(916f, -2012f, -1440f), 1167f, false, vec4<bool>(true, false, true, false)), Struct_1(vec3<f32>(-997f, 767f, -953f), vec3<f32>(-385f, -1501f, 555f), -1011f, false, vec4<bool>(true, true, true, true)), Struct_1(vec3<f32>(1000f, 505f, 1501f), vec3<f32>(-589f, 1333f, -1965f), -831f, false, vec4<bool>(true, false, false, true)), Struct_1(vec3<f32>(359f, 412f, 738f), vec3<f32>(477f, 2021f, 1483f), -473f, false, vec4<bool>(true, true, true, false)), Struct_1(vec3<f32>(-242f, 939f, -1148f), vec3<f32>(409f, -124f, 717f), 964f, false, vec4<bool>(true, true, false, true)), Struct_1(vec3<f32>(2333f, -1146f, 1361f), vec3<f32>(-242f, -1055f, -912f), -1000f, true, vec4<bool>(false, false, true, true)), Struct_1(vec3<f32>(-1182f, -398f, -268f), vec3<f32>(-1388f, 1437f, -728f), 387f, false, vec4<bool>(true, false, true, true)), Struct_1(vec3<f32>(-1946f, 689f, -1080f), vec3<f32>(-365f, 1322f, 625f), 1192f, true, vec4<bool>(false, true, false, false)), Struct_1(vec3<f32>(-1346f, 811f, 928f), vec3<f32>(-437f, 486f, -1185f), -1501f, true, vec4<bool>(true, false, true, false)), Struct_1(vec3<f32>(-1756f, -279f, -892f), vec3<f32>(-1429f, -953f, 829f), 544f, true, vec4<bool>(false, true, false, false)), Struct_1(vec3<f32>(-350f, -538f, 1409f), vec3<f32>(-1147f, 841f, 1461f), 1000f, true, vec4<bool>(false, false, true, false)), Struct_1(vec3<f32>(1137f, -1000f, -2222f), vec3<f32>(-1000f, 1000f, 1816f), -1305f, true, vec4<bool>(false, false, false, true)), Struct_1(vec3<f32>(1008f, -1237f, -274f), vec3<f32>(-383f, -1059f, 513f), -1266f, true, vec4<bool>(false, true, true, false)), Struct_1(vec3<f32>(-1000f, -1829f, 948f), vec3<f32>(-437f, -1546f, 1084f), 242f, false, vec4<bool>(true, true, true, true)), Struct_1(vec3<f32>(374f, 1872f, -1112f), vec3<f32>(904f, 343f, 2881f), -991f, true, vec4<bool>(true, true, false, false)), Struct_1(vec3<f32>(1218f, -1343f, -571f), vec3<f32>(2627f, -1000f, -1351f), -924f, true, vec4<bool>(true, false, false, true)), Struct_1(vec3<f32>(-1000f, -436f, -1153f), vec3<f32>(855f, 847f, 220f), -1209f, true, vec4<bool>(true, true, true, true)), Struct_1(vec3<f32>(-705f, 968f, 428f), vec3<f32>(1507f, -1940f, 1763f), -271f, true, vec4<bool>(true, true, false, true)), Struct_1(vec3<f32>(-1000f, 1321f, -169f), vec3<f32>(523f, -1800f, 337f), -742f, false, vec4<bool>(true, true, false, false)), Struct_1(vec3<f32>(-375f, -415f, 663f), vec3<f32>(-804f, 1332f, -1524f), 2234f, true, vec4<bool>(false, true, false, true)), Struct_1(vec3<f32>(-114f, -407f, -1000f), vec3<f32>(229f, -1013f, -817f), -1240f, false, vec4<bool>(false, true, false, false)));

var<private> global2: array<Struct_2, 21>;

var<private> global3: array<u32, 21> = array<u32, 21>(4294967295u, 1u, 6224u, 4294967295u, 59721u, 0u, 102360u, 74477u, 1u, 0u, 27152u, 34273u, 0u, 4294967295u, 26288u, 1u, 1u, 19821u, 14180u, 46371u, 5145u);

var<private> global4: array<Struct_2, 1>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec3<f32>) -> vec4<u32> {
    let var_0 = any(!vec2<bool>(true, !(arg_0.x < 43330i)));
    let var_1 = select(48105u << (global3[_wgslsmith_index_u32(abs(firstLeadingBit(select(global3[_wgslsmith_index_u32(1u, 21u)], 16612u, var_0))), 21u)] % 32u), global3[_wgslsmith_index_u32(~u_input.d.x, 21u)], true);
    let var_2 = arg_1.a.x;
    global3 = array<u32, 21>();
    var var_3 = Struct_3(vec3<i32>(_wgslsmith_dot_vec3_i32(arg_1.a, vec3<i32>(var_2, -1i, global0.x) << (u_input.d.wzz % vec3<u32>(32u))) & _wgslsmith_div_i32(u_input.e.x | u_input.e.x, u_input.c), arg_0.x, reverseBits(0i)));
    return u_input.d;
}

fn func_4(arg_0: vec4<u32>, arg_1: bool) -> vec3<f32> {
    var var_0 = vec4<u32>(arg_0.x, ~(_wgslsmith_div_u32(~73881u, global3[_wgslsmith_index_u32(0u, 21u)]) | 45622u), ~abs(42875u), 113200u);
    var var_1 = countOneBits(select(func_3(~u_input.b, Struct_3(vec3<i32>(global0.x, -31328i, -29874i)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(2253f, 1810f, 437f), vec3<f32>(-1000f, 1139f, -2870f)))).yyw, ~vec3<u32>(var_0.x, 1669u, 1u) | ~vec3<u32>(1u, arg_0.x, 38228u), _wgslsmith_mult_i32(u_input.c, -2147483647i) < -u_input.c)) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.wyw, ~(~u_input.d.zzz)), global3[_wgslsmith_index_u32(~1u, 21u)], var_0.x) % vec3<u32>(32u));
    let var_2 = -24027i;
    global1 = array<Struct_1, 30>();
    var var_3 = (global3[_wgslsmith_index_u32(u_input.a.x, 21u)] >= 7241u) == select(arg_1, !(!(!arg_1)), any(!(!vec3<bool>(false, false, arg_1))));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(528f, 147f, 1124f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(157f, -516f, -204f)), arg_1 | false)) - vec3<f32>(1f, 1f, 1f))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(262f * _wgslsmith_f_op_f32(-586f + 176f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-618f, -845f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -613f))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_4(select(~func_3(vec2<i32>(u_input.e.x, 43817i), Struct_3(vec3<i32>(u_input.c, global0.x, -15304i)), vec3<f32>(arg_1, 1596f, -278f)), vec4<u32>(1u, global3[_wgslsmith_index_u32(u_input.a.x, 21u)], u_input.a.x, global3[_wgslsmith_index_u32(1u, 21u)]) >> (vec4<u32>(global3[_wgslsmith_index_u32(89864u, 21u)], global3[_wgslsmith_index_u32(u_input.d.x, 21u)], u_input.a.x, 17604u) % vec4<u32>(32u)), true), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-879f, arg_1, 849f))), vec3<f32>(1f, 1f, 1f))) - vec3<f32>(823f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1, -877f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -237f)))), -326f, all(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true))), select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, false, false))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, select(true, false, false), true, false), vec4<bool>(any(vec3<bool>(false, true, false)), any(vec4<bool>(true, false, false, false)), global0.x != u_input.b.x, select(true, false, false))), !any(vec3<bool>(true, true, false))));
    var var_1 = Struct_3(vec3<i32>(~(-1i), global0.x, ~global0.x >> (u_input.a.x % 32u)));
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(-var_2.a.x);
    let var_4 = Struct_3(max(abs(vec3<i32>(0i, 11979i, 0i)), select(vec3<i32>(-38917i, var_1.a.x, u_input.e.x) ^ vec3<i32>(u_input.b.x, 0i, var_1.a.x), var_1.a, var_0.e.x & var_2.e.x)) << (_wgslsmith_clamp_vec3_u32(~u_input.d.wxw << (vec3<u32>(global3[_wgslsmith_index_u32(u_input.d.x, 21u)], u_input.d.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 21u)], 21u)]) % vec3<u32>(32u)), func_3(firstLeadingBit(vec2<i32>(-45737i, -1i)), Struct_3(vec3<i32>(u_input.e.x, global0.x, var_1.a.x)), vec3<f32>(832f, var_0.a.x, -1866f)).zwy, min(_wgslsmith_mod_vec3_u32(u_input.d.ywy, vec3<u32>(4294967295u, 4294967295u, 4294967295u)), min(u_input.d.wxz, vec3<u32>(u_input.d.x, global3[_wgslsmith_index_u32(u_input.a.x, 21u)], global3[_wgslsmith_index_u32(52672u, 21u)])))) % vec3<u32>(32u)));
    return vec2<bool>(any(var_0.e.xw), any(select(select(var_2.e.yz, select(var_0.e.xz, var_2.e.zx, vec2<bool>(var_2.d, var_0.d)), select(vec2<bool>(var_0.e.x, true), var_0.e.wz, var_0.e.zz)), var_2.e.xw, var_0.d)));
}

fn func_1(arg_0: vec3<i32>) -> bool {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(249f, 473f)) * _wgslsmith_f_op_f32(209f + _wgslsmith_f_op_f32(floor(576f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-483f - -879f))))), _wgslsmith_f_op_f32(-429f - _wgslsmith_f_op_f32(trunc(-294f)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -347f) - 1216f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -254f)))), 696f), _wgslsmith_f_op_f32(abs(1461f)), !any(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1714f, 724f)), -1059f)), vec4<bool>(any(select(func_2(vec2<f32>(-692f, 372f), 578f), func_2(vec2<f32>(-1429f, -366f), 829f), vec2<bool>(true, false))), func_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -296f), _wgslsmith_f_op_f32(f32(-1f) * -1287f)), _wgslsmith_f_op_f32(-1532f * 1312f)).x, true, true));
    var var_1 = firstLeadingBit(~(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(-46099i, u_input.b.x)), vec2<i32>(-75680i, 3729i)) << (global3[_wgslsmith_index_u32(~(~42821u), 21u)] % 32u)));
    let var_2 = -1423f;
    var_1 = ~u_input.b.x;
    let var_3 = select(select(select(var_0.e.xwx, var_0.e.wwy, true), vec3<bool>(var_0.d, true, !var_0.e.x), select(vec3<bool>(true, func_2(vec2<f32>(-395f, 599f), var_2).x, func_2(var_0.a.xx, 1000f).x), vec3<bool>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 21u)], 21u)] <= 1u, 103966u <= u_input.d.x, all(var_0.e)), false)), var_0.e.yxw, select(!var_0.e.yxx, var_0.e.yzw, any(vec3<bool>(false, true, !var_0.e.x))));
    return true;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_4, arg_3: i32) -> f32 {
    global2 = array<Struct_2, 21>();
    var var_0 = Struct_5(_wgslsmith_sub_i32(7671i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(min(-26920i, -86054i), u_input.e.x ^ global0.x, select(-1i, u_input.e.x, false)), ~u_input.e.x)), arg_2, Struct_3(-vec3<i32>(-1i, global0.x, 1236i)), abs(_wgslsmith_add_vec2_i32(vec2<i32>(28571i, 1i), ~vec2<i32>(-14685i, 2147483647i))) >> (~u_input.a % vec2<u32>(32u)), Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1.e.b.x)), _wgslsmith_div_f32(arg_1.e.a.x, -149f), _wgslsmith_f_op_f32(f32(-1f) * -1245f)), arg_1.d.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.e.a.x + -1826f))), select(arg_2.b.x, !arg_2.a, !arg_1.c.e.x), arg_2.b), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c.b.x), 1000f, 690f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.b.b - vec3<f32>(1028f, -1478f, arg_1.c.a.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-696f, arg_1.b.c, arg_1.d.a.x))), arg_1.b.c, abs(4294967295u) <= ~global3[_wgslsmith_index_u32(1686u, 21u)], select(vec4<bool>(false, true, arg_1.d.e.x, false), arg_1.e.e, true)), Struct_1(arg_1.d.a, vec3<f32>(arg_1.a.b.x, _wgslsmith_f_op_f32(-1413f * arg_1.a.b.x), _wgslsmith_f_op_f32(round(364f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.d.a.x, arg_1.e.c)) + _wgslsmith_f_op_f32(-arg_1.d.c)), _wgslsmith_f_op_f32(abs(627f)) <= arg_1.e.b.x, !vec4<bool>(arg_2.b.x, false, false, true)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~abs(u_input.d.x), ~(~8493u)), 30u)], arg_1.b));
    var var_1 = Struct_1(arg_1.b.a, _wgslsmith_div_vec3_f32(var_0.e.c.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.e.b.c))), 581f)), var_0.e.a.b.x, var_0.b.a & true, select(select(vec4<bool>(var_0.e.d.e.x, !arg_0.x, true, true), vec4<bool>(any(arg_2.b), any(arg_2.b.yx), arg_0.x, func_1(var_0.c.a)), arg_1.a.e), vec4<bool>(false, all(!arg_0), any(vec4<bool>(arg_2.a, arg_0.x, var_0.e.a.d, true)), !var_0.b.b.x | any(arg_1.d.e.yx)), !(!select(var_0.b.b, arg_2.b, arg_1.b.e))));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_add_u32(0u, ~(~4294967295u)), select(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(73700u, 73782u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25742u, 21u)], 21u)], u_input.d.x), ~u_input.d)), abs(u_input.a.x), true));
    var var_3 = arg_2;
    return _wgslsmith_f_op_f32(-var_0.e.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-1955f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 2701f, true)) + _wgslsmith_f_op_f32(1036f + 909f)), _wgslsmith_f_op_f32(floor(-557f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -311f) - _wgslsmith_f_op_f32(f32(-1f) * -1230f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-622f, 1000f, true)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -821f) + 157f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(181f * 159f) + -1726f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -430f), _wgslsmith_f_op_f32(f32(-1f) * -357f))));
    global1 = array<Struct_1, 30>();
    global4 = array<Struct_2, 1>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-330f)));
    var var_2 = _wgslsmith_f_op_f32(func_5(vec2<bool>(false, func_1(_wgslsmith_sub_vec3_i32(-vec3<i32>(global0.x, 1i, global0.x), -vec3<i32>(-1i, u_input.b.x, global0.x)))), global4[_wgslsmith_index_u32(countOneBits(u_input.d.x), 1u)], Struct_4(false | !any(vec4<bool>(true, false, true, false)), vec4<bool>(func_1(select(vec3<i32>(-12256i, global0.x, 1i), vec3<i32>(global0.x, -13502i, u_input.c), true)), true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), true)), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

