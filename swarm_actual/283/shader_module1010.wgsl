struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
    c: vec2<bool>,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(-1184f, 601f, -724f, -1399f, -444f, -1117f, 1618f, -108f, 101f, -2194f, 840f, 1914f, 1649f, -271f, -647f, 101f, -909f);

var<private> global1: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(837f, -982f, 179f, 272f), vec4<f32>(457f, 271f, -188f, 813f), vec4<f32>(-456f, 1265f, -512f, -465f), vec4<f32>(888f, 608f, -250f, -971f), vec4<f32>(1628f, 405f, 1526f, -882f), vec4<f32>(-1299f, -1000f, 1043f, -2209f), vec4<f32>(-458f, 599f, -456f, 1352f), vec4<f32>(-926f, -362f, 467f, 501f), vec4<f32>(833f, -1063f, -339f, 1693f), vec4<f32>(1296f, 1541f, 1622f, 1614f), vec4<f32>(-1000f, 1643f, -1139f, 224f), vec4<f32>(1267f, -739f, 970f, 1000f), vec4<f32>(635f, -1038f, -578f, 387f), vec4<f32>(-1133f, -721f, -1016f, -537f), vec4<f32>(757f, -537f, -670f, -1575f), vec4<f32>(938f, 1000f, -1836f, -311f), vec4<f32>(-1580f, -180f, 925f, -887f), vec4<f32>(-177f, 1245f, 534f, 127f), vec4<f32>(1214f, 195f, 1000f, -899f), vec4<f32>(589f, 1178f, 1128f, -863f));

var<private> global2: array<i32, 6> = array<i32, 6>(-34929i, -95554i, 2147483647i, 2147483647i, -29569i, -30561i);

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = ~reverseBits(_wgslsmith_add_vec2_u32(u_input.c.yz, abs(_wgslsmith_add_vec2_u32(u_input.c.zy, vec2<u32>(u_input.c.x, u_input.c.x)))));
    return var_0.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> bool {
    let var_0 = Struct_2(arg_0.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, u_input.c.x), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(4294967295u, 13975u), _wgslsmith_mod_u32(u_input.c.x, 40985u)), abs(u_input.c.x))), arg_0.x, -_wgslsmith_sub_i32(1i, firstLeadingBit(-1i)), Struct_1(select(vec3<bool>(true, global3.x, any(vec4<bool>(global3.x, global3.x, global3.x, global3.x))), !select(vec3<bool>(false, global3.x, global3.x), vec3<bool>(false, global3.x, false), vec3<bool>(global3.x, global3.x, global3.x)), vec3<bool>(any(vec3<bool>(false, false, false)), true, global3.x)), vec3<u32>(u_input.c.x | (4294967295u | u_input.c.x), ~4294967295u | func_3(), _wgslsmith_clamp_u32(u_input.a, 80725u, 1u) << (~1u % 32u)), -40115i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, global0[_wgslsmith_index_u32(47551u, 17u)])) - arg_1))));
    var var_1 = Struct_5(vec3<f32>(1000f, -1482f, _wgslsmith_f_op_f32(var_0.e.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(304f, global0[_wgslsmith_index_u32(4294967295u, 17u)]))))), Struct_3(Struct_1(!(!var_0.e.a), select(vec3<u32>(var_0.e.b.x, var_0.b, 0u), vec3<u32>(1u, var_0.e.b.x, 1u), var_0.e.a.x) & vec3<u32>(u_input.c.x, u_input.c.x, 88257u), -20105i, 1504f)), vec2<bool>(global3.x, any(!select(global3.xy, global3.zx, var_0.e.a.x))), ~_wgslsmith_dot_vec3_u32(u_input.c.zzw, ~var_0.e.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(7730u, 20u)] + global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(11568u, u_input.a), 20u)]) + vec4<f32>(var_0.e.d, arg_1, _wgslsmith_div_f32(var_0.e.d, _wgslsmith_f_op_f32(810f + global0[_wgslsmith_index_u32(33355u, 17u)])), _wgslsmith_f_op_f32(max(-1773f, _wgslsmith_f_op_f32(sign(var_0.e.d)))))));
    let var_2 = vec4<i32>(var_1.b.a.c, abs(~26713i), global2[_wgslsmith_index_u32(u_input.c.x, 6u)], 1i);
    global2 = array<i32, 6>();
    var var_3 = var_2.x;
    return !select(false, all(vec4<bool>(true, true, any(vec4<bool>(true, var_0.e.a.x, true, global3.x)), true)), (-22526i <= _wgslsmith_div_i32(arg_0.x, global2[_wgslsmith_index_u32(u_input.c.x, 6u)])) && var_0.e.a.x);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-789f, -377f) * vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 17u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.wx, u_input.c.zy), 17u)], global3.x || true)), _wgslsmith_f_op_f32(993f * -2098f)))));
    global3 = !select(select(select(vec3<bool>(global3.x, global3.x, global3.x), select(vec3<bool>(global3.x, true, false), vec3<bool>(global3.x, global3.x, global3.x), global3.x), global3.x), vec3<bool>(global3.x, global3.x, func_2(vec4<i32>(-7217i, 29911i, global2[_wgslsmith_index_u32(43331u, 6u)], global2[_wgslsmith_index_u32(23553u, 6u)]), -570f)), any(select(global3.xz, vec2<bool>(global3.x, true), vec2<bool>(false, true)))), !select(select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(false, global3.x, false), vec3<bool>(false, global3.x, false)), vec3<bool>(global3.x, false, true), select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(false, global3.x, true), true)), vec3<bool>(global3.x, reverseBits(u_input.b) <= -2147483647i, true));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1020f);
    global3 = vec3<bool>(global3.x, all(select(select(vec4<bool>(false, false, global3.x, true), vec4<bool>(global3.x, false, global3.x, true), true), vec4<bool>(!global3.x, true, true, any(global3.yy)), global3.x)), 4294967295u < max(~u_input.a ^ u_input.a, u_input.c.x));
    var var_2 = var_0.x;
    return Struct_1(select(!(!vec3<bool>(global3.x, false, true)), vec3<bool>(global3.x, _wgslsmith_f_op_f32(round(-114f)) < global0[_wgslsmith_index_u32(u_input.c.x >> (117661u % 32u), 17u)], false), select(select(vec3<bool>(global3.x, global3.x, false), select(vec3<bool>(true, false, false), vec3<bool>(global3.x, true, true), true), global3.x), !vec3<bool>(global3.x, false, false), select(vec3<bool>(false, true, false), !vec3<bool>(false, global3.x, global3.x), vec3<bool>(false, global3.x, true)))), vec3<u32>(u_input.a, ~u_input.c.x, countOneBits(~u_input.c.x)), global2[_wgslsmith_index_u32(~(~(~u_input.c.x)), 6u)], 827f);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> f32 {
    global0 = array<f32, 17>();
    let var_0 = select(abs(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -2147483647i, -1i), -vec4<i32>(-9971i, -23638i, arg_0.c, arg_0.c)), -_wgslsmith_div_i32(-22435i, global2[_wgslsmith_index_u32(arg_2.b, 6u)]))), vec2<i32>(51756i, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~arg_2.e.b.x), ~min(48441u, arg_2.b)), 6u)]), vec2<bool>(false, !(!func_1().a.x)));
    let var_1 = max(69279u, 1u);
    let var_2 = vec4<bool>(!arg_0.a.x, all(vec4<bool>(true, ~var_1 <= ~0u, arg_0.a.x, false)), !(reverseBits(_wgslsmith_sub_u32(var_1, var_1)) < (0u & var_1)), any(vec4<bool>(!global3.x, true & (arg_2.e.a.x != arg_2.e.a.x), (arg_0.d == arg_0.d) && any(vec4<bool>(false, false, false, arg_1)), global3.x)));
    let var_3 = select(var_2.wy, var_2.yz, select(arg_2.e.a.zy, var_2.yx, !arg_0.a.zy));
    return _wgslsmith_f_op_f32(-1097f + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.c, u_input.c), 17u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.x;
    global0 = array<f32, 17>();
    global2 = array<i32, 6>();
    global1 = array<vec4<f32>, 20>();
    global2 = array<i32, 6>();
    var var_1 = select(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1051f)) + _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 17u)]))) * _wgslsmith_f_op_f32(func_4(func_1(), true, Struct_2(u_input.b, u_input.c.x, u_input.b, global2[_wgslsmith_index_u32(0u, 6u)], Struct_1(vec3<bool>(global3.x, true, global3.x), vec3<u32>(u_input.c.x, u_input.a, 11824u), -2147483647i, 1000f))))) == -1649f, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a << (_wgslsmith_clamp_u32(~29539u, 10623u, max(u_input.c.x, 40696u)) % 32u), 17u)], 1368f, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.a, 17u)]))));
}

