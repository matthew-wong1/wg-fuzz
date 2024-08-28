struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12>;

var<private> global1: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(1i, 37228i, 5590i, 0i), vec4<i32>(35561i, 9076i, 0i, -997i), vec4<i32>(-5754i, 0i, 0i, -53231i), vec4<i32>(6655i, 13133i, -1i, 2147483647i), vec4<i32>(-42438i, 0i, -11063i, -1i), vec4<i32>(52151i, i32(-2147483648), -7386i, 0i), vec4<i32>(-15094i, -15538i, 4404i, -25992i), vec4<i32>(0i, i32(-2147483648), 1i, 1i), vec4<i32>(-11539i, 17277i, -17522i, 1i), vec4<i32>(-1i, 22644i, 1i, -23292i), vec4<i32>(i32(-2147483648), 10492i, 1i, 1i), vec4<i32>(-41590i, 0i, 0i, 21580i), vec4<i32>(1i, i32(-2147483648), -27911i, 2147483647i), vec4<i32>(0i, -42547i, 2147483647i, i32(-2147483648)), vec4<i32>(26467i, i32(-2147483648), -36568i, -63149i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(20197i, 43643i, i32(-2147483648), -709i), vec4<i32>(20800i, -40191i, 2147483647i, 7298i), vec4<i32>(-14072i, 4408i, 0i, 1i), vec4<i32>(i32(-2147483648), -1i, -13812i, 35562i), vec4<i32>(i32(-2147483648), 11109i, 5623i, 5889i), vec4<i32>(-27966i, 1746i, 45770i, -51682i), vec4<i32>(36278i, 1i, -1i, 25942i), vec4<i32>(-9084i, -39573i, -1i, 1i), vec4<i32>(19232i, 0i, 0i, 9649i), vec4<i32>(-1i, 40627i, -1i, -46146i), vec4<i32>(58993i, -2790i, -27369i, i32(-2147483648)), vec4<i32>(40892i, 0i, 2361i, -19937i), vec4<i32>(-1i, -49796i, 2147483647i, 29601i), vec4<i32>(-1i, 1i, 70653i, -38424i), vec4<i32>(2147483647i, 0i, 4358i, 2147483647i), vec4<i32>(2147483647i, 1i, 23898i, 18989i));

var<private> global2: array<i32, 20> = array<i32, 20>(-1i, 1i, 1i, -9661i, -15424i, -1i, -27789i, 1i, 0i, -1i, 1679i, 0i, 2059i, 8482i, -10998i, -64932i, -5145i, -10049i, 0i, -17435i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: i32, arg_3: u32) -> vec2<f32> {
    let var_0 = -arg_2;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(165f)), -417f) + arg_0), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(floor(arg_0)))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(f32(-1f) * -1171f))), -select(arg_1.zzw, arg_1.yxz, select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-117f, var_1.x, 256f) * vec3<f32>(1067f, 663f, arg_0))) + vec3<f32>(-559f, 207f, _wgslsmith_f_op_f32(max(-1101f, 1000f)))), global1[_wgslsmith_index_u32(~0u, 32u)], var_1.x, _wgslsmith_f_op_f32(exp2(arg_0)), vec4<bool>(all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true)), true, any(vec2<bool>(false, true)) | true, true)));
    global2 = array<i32, 20>();
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -367f))), 547f, _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-var_1.x))), var_2.c.a.x);
    return _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x + 649f)))), _wgslsmith_f_op_f32(step(arg_0, -747f)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: vec3<u32>) -> Struct_5 {
    let var_0 = abs(u_input.b);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(~arg_2.x, 12u)] - _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(1214f - _wgslsmith_f_op_f32(-arg_0.x)), select(-vec4<i32>(u_input.c.x, global2[_wgslsmith_index_u32(90042u, 20u)], global2[_wgslsmith_index_u32(u_input.b.x, 20u)], 28950i), reverseBits(vec4<i32>(-1i, global2[_wgslsmith_index_u32(17399u, 20u)], -6712i, global2[_wgslsmith_index_u32(var_0.x, 20u)])), vec4<bool>(true, true, true, true)), 0i, firstTrailingBit(arg_2.x)))), !(!vec2<bool>(true, arg_1.x > -1370f)));
    let var_2 = -136f;
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -404f, var_2, var_1.a.x))))));
    global2 = array<i32, 20>();
    return Struct_5(Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2140f, var_3.x)))))), var_1.b));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_5) -> bool {
    let var_0 = Struct_2(-544f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-288f, -1000f, arg_2.a.a.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-266f, arg_2.a.a.x, -1000f), vec3<f32>(arg_2.a.a.x, 963f, arg_2.a.a.x))), vec3<bool>(arg_2.a.b.x, false, true))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1520f, arg_2.a.a.x, -133f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1326f, -676f, arg_2.a.a.x) * vec3<f32>(arg_2.a.a.x, 615f, arg_2.a.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-734f, arg_2.a.a.x, 2049f) - vec3<f32>(arg_2.a.a.x, arg_2.a.a.x, arg_2.a.a.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.a.x, 2444f, -2860f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.a.x, arg_2.a.a.x, arg_2.a.a.x) + vec3<f32>(125f, -1000f, arg_2.a.a.x))))), arg_2.a.a.x, countOneBits(_wgslsmith_add_i32(u_input.c.x, arg_0)));
    global0 = array<vec2<f32>, 12>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -1315f, 2099f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(714f, var_0.c, -1115f))) + _wgslsmith_div_vec3_f32(var_0.b, _wgslsmith_f_op_vec3_f32(var_0.b * vec3<f32>(1130f, var_0.c, var_0.a))))), vec4<i32>(-_wgslsmith_sub_i32(arg_0, -2133i), var_0.d, 23562i, ~_wgslsmith_mod_i32(_wgslsmith_mod_i32(10883i, -2147483647i), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 51422u, 21675u), 20u)])), _wgslsmith_f_op_f32(floor(-350f)), _wgslsmith_f_op_f32(abs(arg_2.a.a.x)), select(!(!(!vec4<bool>(arg_1, arg_2.a.b.x, false, true))), vec4<bool>(select(true, false, arg_2.a.b.x) && (u_input.b.x == u_input.a.x), arg_1, all(vec3<bool>(arg_2.a.b.x, true, arg_1)), !arg_2.a.b.x), !(!any(arg_2.a.b))));
    global1 = array<vec4<i32>, 32>();
    let var_2 = (~arg_0 & 2147483647i) << (max(u_input.b.x, ~10675u) % 32u);
    return arg_1;
}

fn func_1() -> u32 {
    let var_0 = select(vec2<bool>(func_4(~(~(-1i)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true)), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1174f, -226f) + vec2<f32>(-1908f, 1401f)), vec3<f32>(207f, -210f, 1029f), ~vec3<u32>(0u, u_input.a.x, u_input.d))), true), vec2<bool>(false, !all(vec2<bool>(true, true))), select(func_4(_wgslsmith_mult_i32(u_input.c.x, global2[_wgslsmith_index_u32(1u, 20u)]), _wgslsmith_f_op_vec2_f32(func_3(295f, global1[_wgslsmith_index_u32(30738u, 32u)], global2[_wgslsmith_index_u32(0u, 20u)], 7931u)).x < _wgslsmith_f_op_f32(1555f * 1397f), func_2(vec2<f32>(-327f, -1203f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(114f, -914f, 377f)), u_input.b.yxw)), false, !all(vec2<bool>(true, true))));
    global1 = array<vec4<i32>, 32>();
    let var_1 = any(vec3<bool>(func_2(vec2<f32>(_wgslsmith_f_op_f32(sign(612f)), 1075f), vec3<f32>(-1985f, _wgslsmith_f_op_f32(-1000f + 1138f), _wgslsmith_f_op_f32(f32(-1f) * -856f)), vec3<u32>(_wgslsmith_add_u32(0u, u_input.d), u_input.b.x, u_input.a.x | 31487u)).a.b.x, var_0.x, all(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, false, var_0.x), var_0.x)) || true));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(310f, 658f))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a | u_input.a, vec2<u32>(100632u, u_input.d) | vec2<u32>(u_input.a.x, 0u)), 12u)]) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -169f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-150f, 250f)))));
    return _wgslsmith_sub_u32(~max(u_input.b.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.b.yxz, u_input.b.zxw), u_input.d)), firstLeadingBit(~(u_input.d | u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-307f * -1345f), _wgslsmith_f_op_f32(243f + -400f), 289f, _wgslsmith_f_op_f32(954f - 1649f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(864f * -210f), _wgslsmith_div_f32(-419f, -913f), _wgslsmith_f_op_f32(453f + -1695f), _wgslsmith_f_op_f32(-965f * -441f)) + vec4<f32>(1f, 1f, 1f, 1f))));
    let var_1 = (reverseBits(~abs(u_input.b)) >> (vec4<u32>(_wgslsmith_add_u32(0u, u_input.b.x), 4294967295u, func_1(), ~(~4294967295u)) % vec4<u32>(32u))) << ((vec4<u32>(1u, 1u, 1u, _wgslsmith_sub_u32(u_input.a.x, u_input.b.x)) | vec4<u32>(min(~u_input.b.x, u_input.a.x), ~(~u_input.d), 4294967295u, 0u)) % vec4<u32>(32u));
    global1 = array<vec4<i32>, 32>();
    global0 = array<vec2<f32>, 12>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(max(var_0.x, 1460f))), var_0.x, -299f))), global1[_wgslsmith_index_u32(u_input.a.x, 32u)] >> (~(~abs(vec4<u32>(var_1.x, var_1.x, 0u, 4294967295u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(step(var_0.x, -394f)), var_0.x, !(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true))));
    global1 = array<vec4<i32>, 32>();
    let var_3 = _wgslsmith_f_op_f32(-1841f * _wgslsmith_f_op_f32(-var_0.x)) < var_0.x;
    global2 = array<i32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_vec2_f32(func_3(var_0.x, vec4<i32>(var_2.b.x, var_2.b.x, 1i, 17213i), -28245i, 4294967295u)).x), vec2<f32>(-2058f, -190f), var_2.e.x))), 1000f, ~(~53613u), var_2.b.zy);
}

