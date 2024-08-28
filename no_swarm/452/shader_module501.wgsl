struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec4<f32>(1168f, -151f, -820f, -779f)), Struct_1(vec4<f32>(-105f, -873f, -606f, 1490f)), 4294967295u), Struct_2(Struct_1(vec4<f32>(-696f, 177f, 1000f, -698f)), Struct_1(vec4<f32>(-276f, -1000f, -700f, 1432f)), 0u), Struct_2(Struct_1(vec4<f32>(-1000f, 591f, 690f, 1262f)), Struct_1(vec4<f32>(-1413f, 1034f, -100f, 678f)), 1u), Struct_2(Struct_1(vec4<f32>(-441f, -553f, -712f, -958f)), Struct_1(vec4<f32>(1000f, 114f, -1228f, 1142f)), 0u), Struct_2(Struct_1(vec4<f32>(-779f, 982f, 1000f, 2540f)), Struct_1(vec4<f32>(806f, -467f, 1228f, -610f)), 13859u), Struct_2(Struct_1(vec4<f32>(2853f, 1149f, 1211f, 282f)), Struct_1(vec4<f32>(-2091f, -1761f, 390f, -2111f)), 1u), Struct_2(Struct_1(vec4<f32>(-1060f, 279f, 794f, 1000f)), Struct_1(vec4<f32>(694f, 753f, 206f, 1495f)), 740u), Struct_2(Struct_1(vec4<f32>(-1299f, 2885f, 994f, 1389f)), Struct_1(vec4<f32>(819f, -1000f, -1608f, 120f)), 22274u), Struct_2(Struct_1(vec4<f32>(1756f, -1361f, -516f, -276f)), Struct_1(vec4<f32>(-258f, -437f, 510f, 2191f)), 4294967295u), Struct_2(Struct_1(vec4<f32>(294f, 1434f, 1592f, -296f)), Struct_1(vec4<f32>(2097f, 100f, -1622f, 776f)), 56717u), Struct_2(Struct_1(vec4<f32>(-476f, 572f, 776f, 803f)), Struct_1(vec4<f32>(212f, -1259f, -283f, 956f)), 61620u), Struct_2(Struct_1(vec4<f32>(-1187f, 1879f, -1227f, -856f)), Struct_1(vec4<f32>(-378f, 740f, 1126f, 715f)), 4294967295u), Struct_2(Struct_1(vec4<f32>(-302f, 1022f, -1000f, -771f)), Struct_1(vec4<f32>(1454f, 1996f, -1000f, -1578f)), 18130u), Struct_2(Struct_1(vec4<f32>(731f, -1629f, -176f, -558f)), Struct_1(vec4<f32>(-701f, -2129f, 1411f, 1575f)), 97600u), Struct_2(Struct_1(vec4<f32>(-3217f, -592f, 857f, 294f)), Struct_1(vec4<f32>(-1829f, -585f, 567f, -1335f)), 6273u), Struct_2(Struct_1(vec4<f32>(-1497f, -1000f, -2245f, 1000f)), Struct_1(vec4<f32>(-960f, 147f, -1000f, 2016f)), 0u), Struct_2(Struct_1(vec4<f32>(-415f, 1320f, -208f, -147f)), Struct_1(vec4<f32>(-937f, 1670f, -309f, -1392f)), 4294967295u), Struct_2(Struct_1(vec4<f32>(-710f, -803f, 1343f, 466f)), Struct_1(vec4<f32>(-321f, 1196f, -1259f, -923f)), 1u), Struct_2(Struct_1(vec4<f32>(-636f, 1787f, 175f, 432f)), Struct_1(vec4<f32>(1776f, 1000f, -1231f, 720f)), 0u), Struct_2(Struct_1(vec4<f32>(-467f, -223f, 172f, -481f)), Struct_1(vec4<f32>(803f, 761f, 1671f, 196f)), 4294967295u), Struct_2(Struct_1(vec4<f32>(361f, -256f, 801f, 933f)), Struct_1(vec4<f32>(140f, -119f, -365f, 658f)), 13142u), Struct_2(Struct_1(vec4<f32>(1408f, 136f, -525f, 164f)), Struct_1(vec4<f32>(-238f, -696f, -1859f, -241f)), 4294967295u), Struct_2(Struct_1(vec4<f32>(-278f, 364f, -1622f, 1927f)), Struct_1(vec4<f32>(608f, 741f, 915f, -1000f)), 48596u));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<f32>(1000f, 133f, 1000f, 1165f)), Struct_1(vec4<f32>(704f, -892f, 1678f, 621f)), Struct_1(vec4<f32>(-708f, 281f, -696f, -1726f)), Struct_1(vec4<f32>(-112f, -1000f, 916f, -767f)), Struct_1(vec4<f32>(-1230f, -381f, -1069f, 641f)), Struct_1(vec4<f32>(607f, -528f, 1000f, 771f)), Struct_1(vec4<f32>(-768f, -2094f, 1971f, 827f)), Struct_1(vec4<f32>(222f, 1106f, 457f, 131f)), Struct_1(vec4<f32>(-835f, -1689f, 451f, -599f)), Struct_1(vec4<f32>(1359f, 2469f, -725f, -1864f)), Struct_1(vec4<f32>(-987f, -734f, -498f, 218f)), Struct_1(vec4<f32>(-1425f, -322f, -237f, -553f)), Struct_1(vec4<f32>(-101f, -2128f, -1000f, 1723f)));

var<private> global2: array<Struct_1, 2>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> vec3<bool> {
    global1 = array<Struct_1, 13>();
    var var_0 = 1u;
    return vec3<bool>(true, all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), 1i >= u_input.a)) || true, all(vec4<bool>(true, all(vec2<bool>(true, true)), !any(vec3<bool>(true, false, false)), false)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: u32, arg_3: vec3<i32>) -> vec2<bool> {
    var var_0 = vec4<bool>(true, true, any(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, false, true, true))), any(vec3<bool>(false, all(vec3<bool>(true, true, true)), _wgslsmith_sub_u32(4294967295u, 85817u) < arg_0)));
    global2 = array<Struct_1, 2>();
    global2 = array<Struct_1, 2>();
    let var_1 = ~_wgslsmith_sub_vec4_i32(~(-(vec4<i32>(10791i, 1i, 0i, arg_1) ^ vec4<i32>(arg_1, 1i, arg_3.x, arg_3.x))), firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(arg_3.x, 10156i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, -1i, u_input.a, 2147483647i), vec4<i32>(u_input.a, -2162i, u_input.a, 17821i)), _wgslsmith_clamp_i32(u_input.a, arg_1, arg_1), _wgslsmith_sub_i32(-10287i, -2147483647i))));
    let var_2 = -655f;
    return !select(var_0.zw, var_0.xw, select(vec2<bool>(false, var_0.x), select(select(var_0.zy, vec2<bool>(false, false), var_0.ww), vec2<bool>(var_0.x, var_0.x), select(var_0.ww, var_0.wz, true)), func_1().yx));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_mod_i32(min(abs(arg_3), min(i32(-1i) * -u_input.a, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(39676i, 0i)), vec2<i32>(18011i, 2147483647i)))), i32(-1i) * -2147483647i);
    var var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(max(~u_input.b, firstLeadingBit(max(86341u, 17154u)))), 23u)];
    let var_2 = var_1.a.a.zy;
    global1 = array<Struct_1, 13>();
    global0 = array<Struct_2, 23>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1226f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(258f, var_1.a.a.x)) * var_1.b.a.x), var_1.a.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.a.a.zyy, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.a.x, 887f, var_2.x))), !vec3<bool>(arg_1.x, true, true)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.a.wzx - var_1.b.a.zyx) - _wgslsmith_f_op_vec3_f32(arg_2.a.wzy - vec3<f32>(arg_2.a.x, -206f, var_1.a.a.x)))))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a.a.xwz)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.a.x, arg_1.a.x, arg_2.b.a.x))) * _wgslsmith_f_op_vec3_f32(abs(arg_1.a.xxw))) - _wgslsmith_f_op_vec3_f32(func_4(~(-52593i), func_3(u_input.b, -2147483647i, 20557u, vec3<i32>(14841i, 0i, arg_0)), Struct_1(vec4<f32>(-1026f, arg_2.b.a.x, arg_2.a.a.x, arg_2.a.a.x)), 10169i)))), vec3<f32>(-743f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-880f + arg_2.b.a.x)) * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1569f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.a.x, 656f))))), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))))));
    var var_1 = Struct_1(arg_2.a.a);
    var var_2 = -1948f;
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_2.b.a.x))));
    var var_4 = arg_1.a.xyx;
    return !vec3<bool>(select(true, select(false, false, false), 112f != var_0.x) & (any(vec4<bool>(false, false, false, true)) | func_1().x), !(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 1i), vec2<i32>(-1i, u_input.a)) < u_input.a), all(vec4<bool>(true, true, func_3(10060u, u_input.a, u_input.b, vec3<i32>(24021i, u_input.a, u_input.a)).x, false)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = global0[_wgslsmith_index_u32(abs(1u), 23u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec3_f32(func_4(1i, arg_1.zz, global2[_wgslsmith_index_u32(u_input.b, 2u)], u_input.a)).x, _wgslsmith_f_op_f32(var_1.b.a.x - -1547f), -215f, _wgslsmith_f_op_f32(var_0.a.x - var_1.a.a.x))) + var_0.a));
    let var_3 = u_input.a;
    var var_4 = _wgslsmith_f_op_vec3_f32(exp2(arg_0.a.wzw));
    return Struct_2(Struct_1(var_2), var_1.b, var_1.c);
}

fn func_6(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_2 {
    global0 = array<Struct_2, 23>();
    let var_0 = -(~(-u_input.a));
    var var_1 = func_5(global2[_wgslsmith_index_u32(select(0u, reverseBits(arg_0.c), false), 2u)], !vec3<bool>(all(func_2(u_input.a, arg_0.b, arg_0)), false, func_1().x), vec3<bool>(func_2(-20369i, arg_0.a, Struct_2(Struct_1(vec4<f32>(1984f, arg_0.b.a.x, arg_0.a.a.x, arg_3.a.x)), func_5(Struct_1(vec4<f32>(arg_3.a.x, -174f, arg_1.x, arg_1.x)), vec3<bool>(true, false, false), vec3<bool>(false, true, false)).b, ~11546u)).x, false, false)).b;
    let var_2 = countOneBits(vec2<u32>(~(~(~u_input.b)), 1u));
    let var_3 = !(!(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))));
    return Struct_2(func_5(arg_3, select(vec3<bool>(var_3.x, false, var_0 > u_input.a), select(func_2(7074i, Struct_1(arg_0.a.a), global0[_wgslsmith_index_u32(arg_2.x, 23u)]), !vec3<bool>(var_3.x, false, true), !vec3<bool>(false, var_3.x, var_3.x)), var_3.x), !func_2(_wgslsmith_sub_i32(-2147483647i, u_input.a), func_5(Struct_1(arg_0.b.a), vec3<bool>(var_3.x, var_3.x, false), vec3<bool>(true, true, var_3.x)).b, global0[_wgslsmith_index_u32(12817u, 23u)])).b, arg_0.a, select(~var_2.x, min(u_input.b | ~0u, _wgslsmith_mult_u32(1u, 1u)), !var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 23>();
    var var_0 = -952f;
    let var_1 = func_6(func_5(global2[_wgslsmith_index_u32(~min(~62332u, _wgslsmith_mod_u32(1u, 4220u)), 2u)], !func_1(), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), true), !func_2(1i, global1[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-549f, 822f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(287f)) * _wgslsmith_f_op_f32(f32(-1f) * -147f)), _wgslsmith_f_op_f32(f32(-1f) * -640f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-533f, -1343f, 847f, -939f))))), ~vec4<u32>(u_input.b, 1u, u_input.b, ~4294967295u >> (abs(u_input.b) % 32u)), global1[_wgslsmith_index_u32(func_5(global2[_wgslsmith_index_u32(select(u_input.b, ~u_input.b, 0i > u_input.a) & 62977u, 2u)], select(select(func_1(), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), func_2(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(23521i, u_input.a, 20528i), vec3<i32>(u_input.a, u_input.a, u_input.a))), func_5(func_5(global1[_wgslsmith_index_u32(25023u, 13u)], vec3<bool>(true, false, true), vec3<bool>(true, true, true)).a, vec3<bool>(true, true, true), func_2(23026i, global2[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(1u, 23u)])).b, global0[_wgslsmith_index_u32(u_input.b, 23u)])).c, 13u)]);
    global1 = array<Struct_1, 13>();
    let var_2 = select(vec4<bool>(_wgslsmith_div_u32(4294967295u, 10708u) <= var_1.c, !func_2(-u_input.a, func_6(Struct_2(Struct_1(var_1.b.a), var_1.b, u_input.b), var_1.b.a, vec4<u32>(52130u, u_input.b, u_input.b, var_1.c), global2[_wgslsmith_index_u32(var_1.c, 2u)]).a, Struct_2(global1[_wgslsmith_index_u32(4294967295u, 13u)], Struct_1(var_1.b.a), 37782u)).x, any(vec2<bool>(true, true)), true), select(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false)), vec4<bool>(true, true, func_1().x, any(vec3<bool>(false, false, true)))), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), var_1.c <= 1u), false), true);
    let var_3 = select(var_2.zxy, vec3<bool>(true, all(vec4<bool>(true & var_2.x, false, var_2.x, func_2(u_input.a, Struct_1(vec4<f32>(var_1.a.a.x, 1001f, var_1.a.a.x, -1135f)), global0[_wgslsmith_index_u32(94237u, 23u)]).x)), func_3(reverseBits(56431u), abs(-1i), 1u >> (var_1.c % 32u), -vec3<i32>(2147483647i, u_input.a, u_input.a)).x && !all(vec2<bool>(true, var_2.x))), var_2.wxy);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(floor(var_1.b.a.x)), 986f, _wgslsmith_f_op_f32(step(var_1.a.a.x, -920f))), u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(var_1, vec4<f32>(var_1.b.a.x, var_1.a.a.x, 1000f, var_1.a.a.x), vec4<u32>(u_input.b, 4030u, 4294967295u, 54823u), Struct_1(var_1.b.a)).b.a.x + _wgslsmith_f_op_f32(-var_1.b.a.x))))), _wgslsmith_mult_u32(u_input.b, u_input.b));
}

