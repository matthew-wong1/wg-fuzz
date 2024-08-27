struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<bool>(true, false, false, false), -1016f, vec4<f32>(151f, 208f, 799f, 356f), vec2<i32>(15559i, -24071i)), Struct_1(vec4<bool>(true, true, true, false), -1036f, vec4<f32>(-557f, -326f, -1346f, -523f), vec2<i32>(30703i, i32(-2147483648))), Struct_1(vec4<bool>(true, true, false, false), 732f, vec4<f32>(-543f, -192f, 692f, -1355f), vec2<i32>(18726i, 1i)), Struct_1(vec4<bool>(true, true, false, true), 629f, vec4<f32>(1645f, -1080f, 1000f, -2064f), vec2<i32>(i32(-2147483648), -63068i)), Struct_1(vec4<bool>(false, true, true, true), -478f, vec4<f32>(1986f, 1000f, 583f, 293f), vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec4<bool>(false, true, false, true), 711f, vec4<f32>(943f, -812f, 1168f, -3541f), vec2<i32>(1i, i32(-2147483648))), Struct_1(vec4<bool>(false, false, false, false), 743f, vec4<f32>(-878f, 746f, -208f, 446f), vec2<i32>(-1i, 16368i)), Struct_1(vec4<bool>(false, false, false, false), 774f, vec4<f32>(-310f, -490f, 306f, 349f), vec2<i32>(42418i, 30638i)), Struct_1(vec4<bool>(false, false, true, false), 2448f, vec4<f32>(-1065f, 473f, 947f, -983f), vec2<i32>(24794i, 54667i)), Struct_1(vec4<bool>(true, false, false, false), 811f, vec4<f32>(939f, 579f, 1200f, 1413f), vec2<i32>(-32648i, 1i)), Struct_1(vec4<bool>(true, true, false, false), 872f, vec4<f32>(756f, 1000f, -1272f, 118f), vec2<i32>(-27229i, -1i)), Struct_1(vec4<bool>(true, false, false, false), -1347f, vec4<f32>(-915f, 1075f, -163f, 530f), vec2<i32>(-1i, 58497i)), Struct_1(vec4<bool>(false, true, true, false), -1095f, vec4<f32>(-403f, -424f, -1111f, 170f), vec2<i32>(-79842i, -42638i)), Struct_1(vec4<bool>(false, false, true, true), -1265f, vec4<f32>(-2051f, -982f, -1549f, 726f), vec2<i32>(18862i, -10727i)), Struct_1(vec4<bool>(true, false, true, false), 249f, vec4<f32>(-116f, -2199f, -1000f, -1000f), vec2<i32>(-1i, 1095i)), Struct_1(vec4<bool>(true, true, false, true), 839f, vec4<f32>(-342f, -506f, 664f, 1046f), vec2<i32>(i32(-2147483648), 61333i)), Struct_1(vec4<bool>(false, true, true, false), -1000f, vec4<f32>(-1141f, -946f, 487f, 1664f), vec2<i32>(14692i, 19420i)), Struct_1(vec4<bool>(false, true, false, false), -1686f, vec4<f32>(1610f, -777f, 225f, 965f), vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec4<bool>(false, false, false, true), 1480f, vec4<f32>(1058f, -1030f, 931f, 1240f), vec2<i32>(i32(-2147483648), -47686i)), Struct_1(vec4<bool>(false, true, false, false), -1199f, vec4<f32>(-142f, 306f, 604f, 750f), vec2<i32>(-6129i, -69976i)), Struct_1(vec4<bool>(true, false, true, true), -570f, vec4<f32>(499f, 244f, -696f, -1067f), vec2<i32>(0i, -2572i)), Struct_1(vec4<bool>(true, false, true, false), 1690f, vec4<f32>(-965f, 759f, -650f, 1371f), vec2<i32>(1i, 15889i)), Struct_1(vec4<bool>(true, false, true, true), -1139f, vec4<f32>(-1320f, -172f, -926f, 1706f), vec2<i32>(1i, 0i)), Struct_1(vec4<bool>(true, true, true, true), -362f, vec4<f32>(855f, -545f, 875f, -331f), vec2<i32>(55321i, 55865i)), Struct_1(vec4<bool>(true, true, false, true), 466f, vec4<f32>(-2273f, 656f, 785f, -891f), vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec4<bool>(true, false, false, false), -1000f, vec4<f32>(219f, -251f, 736f, -216f), vec2<i32>(34949i, i32(-2147483648))), Struct_1(vec4<bool>(true, false, false, true), 110f, vec4<f32>(1335f, 1537f, -991f, -2116f), vec2<i32>(1i, 2147483647i)), Struct_1(vec4<bool>(true, true, false, true), 951f, vec4<f32>(-1261f, -268f, 746f, 550f), vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec4<bool>(true, false, false, true), -374f, vec4<f32>(-1472f, -189f, 657f, 1794f), vec2<i32>(-1i, -3154i)), Struct_1(vec4<bool>(true, false, false, true), 1408f, vec4<f32>(-1000f, 823f, 1409f, -281f), vec2<i32>(-50268i, -1i)));

var<private> global1: array<bool, 25>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = Struct_1(!vec4<bool>(true, true, !global1[_wgslsmith_index_u32(~0u, 25u)], true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1347f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-284f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), ~vec2<i32>(_wgslsmith_sub_i32(u_input.a, -3792i), -u_input.a) & vec2<i32>(_wgslsmith_sub_i32(u_input.a | u_input.a, i32(-1i) * -2147483647i), countOneBits(abs(u_input.a))));
    let var_1 = Struct_1(!vec4<bool>(!var_0.a.x, global1[_wgslsmith_index_u32(4294967295u, 25u)], max(u_input.a, -24920i) > -2147483647i, select(all(var_0.a.zwx), false, false)), -450f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-387f, 1317f) + _wgslsmith_f_op_f32(max(344f, var_0.c.x))) + 1226f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -211f), var_0.b), var_0.b, var_0.b), -vec2<i32>(firstTrailingBit(_wgslsmith_div_i32(u_input.a, u_input.a)), abs(~var_0.d.x)));
    global1 = array<bool, 25>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2004f, var_1.c.x) - var_1.c.wz)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.c.x, 813f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2507f, var_1.b)))))))));
    var_2 = _wgslsmith_f_op_vec2_f32(trunc(var_1.c.xy));
    return true;
}

fn func_2(arg_0: vec4<u32>) -> bool {
    var var_0 = ~arg_0.wy | vec2<u32>(u_input.b.x, min(abs(_wgslsmith_mult_u32(arg_0.x, u_input.c)), 0u));
    let var_1 = _wgslsmith_clamp_u32(arg_0.x, u_input.b.x, ((min(var_0.x, 0u) | var_0.x) << (_wgslsmith_mod_u32(countOneBits(u_input.c), ~0u) % 32u)) & ~(~1u));
    var var_2 = !vec2<bool>(!func_3(), true);
    let var_3 = ~(~vec4<u32>(~arg_0.x, var_1, 1764u, 4294967295u));
    var var_4 = global1[_wgslsmith_index_u32(0u, 25u)];
    return _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 25293u, _wgslsmith_add_u32(1u, 136446u), ~(~u_input.c)), reverseBits(~firstLeadingBit(u_input.b))) >= (var_1 >> (arg_0.x % 32u));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: bool) -> u32 {
    global1 = array<bool, 25>();
    global0 = array<Struct_1, 30>();
    let var_0 = !(!select(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 25u)], false, false), vec3<bool>(false, arg_2, false), vec3<bool>(arg_2, global1[_wgslsmith_index_u32(44843u, 25u)], false)), !vec3<bool>(true, global1[_wgslsmith_index_u32(17787u, 25u)], true), !any(vec4<bool>(false, arg_2, true, arg_2))));
    var var_1 = select(vec4<bool>(global1[_wgslsmith_index_u32(~(~u_input.b.x), 25u)], all(!(!vec4<bool>(true, var_0.x, global1[_wgslsmith_index_u32(u_input.b.x, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]))), all(!select(var_0, var_0, vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 25u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 25u)]))), any(vec2<bool>(any(var_0.xx), all(vec2<bool>(arg_2, global1[_wgslsmith_index_u32(0u, 25u)]))))), vec4<bool>(any(var_0.xx), !(arg_2 || false), func_2(_wgslsmith_add_vec4_u32(reverseBits(u_input.b), u_input.b)), all(vec3<bool>(!global1[_wgslsmith_index_u32(u_input.c, 25u)], false, !var_0.x))), select(!select(!vec4<bool>(var_0.x, false, var_0.x, global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), select(vec4<bool>(false, false, var_0.x, global1[_wgslsmith_index_u32(14803u, 25u)]), vec4<bool>(global1[_wgslsmith_index_u32(24413u, 25u)], arg_2, var_0.x, global1[_wgslsmith_index_u32(u_input.c, 25u)]), true), all(var_0)), vec4<bool>(false, false, !(-1i > u_input.a), arg_2), true));
    var var_2 = global0[_wgslsmith_index_u32(u_input.c, 30u)];
    return _wgslsmith_dot_vec3_u32(~(~select(u_input.b.xzw, u_input.b.zyw, vec3<bool>(true, false, false))) >> (select(u_input.b.xwz, vec3<u32>(_wgslsmith_mult_u32(10142u, u_input.b.x), u_input.c, 1u), var_1.wzz) % vec3<u32>(32u)), u_input.b.yyy);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: bool, arg_3: f32) -> f32 {
    global1 = array<bool, 25>();
    let var_0 = arg_0;
    let var_1 = Struct_1(vec4<bool>(func_2(u_input.b), !(func_2(u_input.b) && select(false, false, arg_2)), func_2((vec4<u32>(u_input.b.x, u_input.b.x, u_input.c, 26829u) | u_input.b) ^ u_input.b), any(vec4<bool>(true, arg_2, true, true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * -1429f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3, arg_3, -539f, arg_3)))), vec4<f32>(134f, -407f, 1022f, _wgslsmith_div_f32(487f, arg_3))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1735f, arg_3, 854f, arg_3) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, arg_3, arg_3))))), ~(~(-(~var_0.zz))));
    let var_2 = firstLeadingBit(~(~u_input.b));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_1.b)))), arg_3));
    return _wgslsmith_f_op_f32(min(-2224f, var_1.b));
}

fn func_5(arg_0: f32, arg_1: vec4<bool>) -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b.x, max(~reverseBits(u_input.b.x), ~65637u) << (u_input.b.x % 32u)), 30u)];
    var_0 = global0[_wgslsmith_index_u32(u_input.c, 30u)];
    global0 = array<Struct_1, 30>();
    var var_1 = func_3();
    var_0 = Struct_1(var_0.a, var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_0.c))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c.x, 478f, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1156f * var_0.c.x)), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(173f + -661f)))), var_0.d);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec4<i32>(20840i, u_input.a, 0i & _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 19758i, u_input.a), vec3<i32>(u_input.a, 1i, -2147483647i)), vec3<i32>(u_input.a, u_input.a, u_input.a)), 2147483647i);
    global0 = array<Struct_1, 30>();
    var var_1 = Struct_1(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -314f) - _wgslsmith_f_op_f32(func_4(var_0.yyw >> (u_input.b.xzy % vec3<u32>(32u)), -vec3<i32>(0i, var_0.x, -2147483647i), global1[_wgslsmith_index_u32(func_1(-482f, vec3<f32>(1813f, -449f, 471f), global1[_wgslsmith_index_u32(4294967295u, 25u)]), 25u)], -1571f))), select(vec4<bool>(select(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(32896u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]), any(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 25u)], false, true)), global1[_wgslsmith_index_u32(13505u, 25u)] | global1[_wgslsmith_index_u32(14018u, 25u)], true), vec4<bool>(u_input.b.x != u_input.c, select(true, global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), true, false), select(!vec4<bool>(true, global1[_wgslsmith_index_u32(62300u, 25u)], global1[_wgslsmith_index_u32(u_input.c, 25u)], global1[_wgslsmith_index_u32(82333u, 25u)]), vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b.x, 25u)], true), any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], global1[_wgslsmith_index_u32(54881u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(u_input.c, 25u)]))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-132f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-400f, -865f))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1706f, -978f)) + _wgslsmith_f_op_f32(f32(-1f) * -699f)), -703f, -643f, _wgslsmith_f_op_f32(-1179f - -626f)))), var_0.ww);
    var var_2 = _wgslsmith_sub_u32(u_input.c, u_input.b.x);
    global0 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_1.c.zyw), u_input.b.zw, _wgslsmith_f_op_f32(-1549f - _wgslsmith_f_op_f32(-var_1.b)));
}

