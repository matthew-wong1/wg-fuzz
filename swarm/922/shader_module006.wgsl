struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(1u, 109724u, 28061u, 0u), vec4<u32>(31039u, 0u, 17557u, 1u));

var<private> global2: array<vec2<i32>, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> u32 {
    var var_0 = vec3<bool>(all(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, true), u_input.b > u_input.b)), abs(~abs(38024i)) >= u_input.b, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    var var_1 = vec2<bool>(var_0.x, var_0.x);
    var_0 = select(!(!(!vec3<bool>(false, var_1.x, var_0.x))), select(!vec3<bool>(any(vec2<bool>(var_1.x, var_1.x)), select(var_0.x, true, var_0.x), false), !vec3<bool>(var_0.x, true, var_1.x), select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, false, any(vec3<bool>(true, false, var_1.x))), all(vec4<bool>(var_1.x, true, true, var_0.x)))), var_1.x);
    var_1 = vec2<bool>(!(!(var_0.x && var_1.x)), !var_1.x);
    var var_2 = Struct_5(var_0.x, _wgslsmith_f_op_f32(floor(1872f)));
    return abs(u_input.d);
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: f32, arg_3: vec4<u32>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-417f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1419f, arg_2) * _wgslsmith_div_f32(-1544f, -1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 459f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 904f)))));
    var_1 = Struct_2(-1360f);
    var var_2 = Struct_3(select(abs(~max(arg_3.xz, arg_3.wx)), vec2<u32>(func_3(), ~1u), true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -44012i), reverseBits(global2[_wgslsmith_index_u32(4294967295u, 30u)])) << (14253u % 32u));
    global1 = array<vec4<u32>, 2>();
    return Struct_5(any(!var_2.b.wz), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 * arg_2))));
}

fn func_1() -> vec4<f32> {
    var var_0 = func_2(12068i, ~select(-vec3<i32>(u_input.b, u_input.c, u_input.c) | vec3<i32>(13814i, u_input.b, u_input.c), vec3<i32>(u_input.b, u_input.b ^ -2147483647i, countOneBits(-52735i)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false)), _wgslsmith_f_op_f32(max(-401f, 1000f)), vec4<u32>(u_input.a, _wgslsmith_add_u32(93136u, (u_input.a >> (u_input.a % 32u)) & 1u), max(1u >> (u_input.a % 32u), 1u), 1u));
    var var_1 = func_2(~u_input.c, vec3<i32>(firstLeadingBit(_wgslsmith_mod_i32(u_input.b, 1i)), countOneBits(u_input.b) ^ ~u_input.c, min(1886i, -(u_input.c ^ u_input.c))), _wgslsmith_f_op_f32(662f * -2288f), vec4<u32>(1u, 3544u, u_input.a, 36073u));
    var var_2 = 1i;
    var var_3 = global2[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(u_input.a, _wgslsmith_div_u32(countOneBits(u_input.a) >> (_wgslsmith_div_u32(u_input.d, 14866u) % 32u), 0u)), ~_wgslsmith_mod_u32(func_3(), u_input.d) ^ 1u, !(!any(select(vec3<bool>(true, var_1.a, true), vec3<bool>(false, true, false), vec3<bool>(false, var_0.a, false))))), 30u)];
    var var_4 = _wgslsmith_f_op_f32(func_2(~1482i, _wgslsmith_sub_vec3_i32(abs(min(vec3<i32>(0i, u_input.b, var_3.x), vec3<i32>(u_input.c, 10538i, var_3.x))), -(vec3<i32>(var_3.x, 0i, var_3.x) << (vec3<u32>(u_input.d, u_input.d, 0u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(round(var_1.b)), ~reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(3533u, 108977u, u_input.a, u_input.d), global1[_wgslsmith_index_u32(u_input.d, 2u)]))).b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.b - -242f)))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1805f)))), var_0.b, _wgslsmith_f_op_f32(358f - _wgslsmith_f_op_f32(abs(-463f))), _wgslsmith_f_op_f32(-var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-311f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1045f) - _wgslsmith_f_op_f32(min(-597f, _wgslsmith_f_op_f32(2217f * 875f))))) + _wgslsmith_f_op_f32(abs(264f)));
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(741f, 861f)) - -524f), -173f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-450f, 490f)), 1570f)), u_input.b, select(~(~abs(vec4<i32>(-2147483647i, u_input.b, 0i, -54891i))), -(select(vec4<i32>(33413i, 1i, 0i, 0i), vec4<i32>(u_input.b, 0i, -35148i, 4162i), true) | vec4<i32>(u_input.b, u_input.c, -16803i, 6082i)), true & all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true))), Struct_3(select(firstLeadingBit(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.a, u_input.d)), vec2<u32>(1u, 86757u) >> (_wgslsmith_add_vec2_u32(vec2<u32>(75775u, u_input.d), vec2<u32>(0u, u_input.d)) % vec2<u32>(32u)), vec2<bool>(true, true)), select(vec4<bool>(false, u_input.a > u_input.a, false, true), vec4<bool>(true, false, u_input.d <= u_input.d, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true))), u_input.c));
    var_0 = var_1.a.x;
    var_1 = Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1321f), -620f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * 2976f) * -1558f), -614f), var_1.a), ~_wgslsmith_clamp_i32(~_wgslsmith_add_i32(-2147483647i, 0i), -21750i, var_1.c.x), vec4<i32>(countOneBits(-abs(var_1.c.x)), firstTrailingBit(1i) >> (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(74505u, 64494u, u_input.d), vec3<u32>(0u, 23532u, 1u))) % 32u), ~51856i, _wgslsmith_mod_i32(u_input.c >> (func_3() % 32u), ~abs(u_input.b))), var_1.d);
    var var_2 = func_2(-_wgslsmith_sub_i32(285i, -24129i), var_1.c.wxw, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -280f)), _wgslsmith_f_op_f32(-var_1.a.x)), vec4<u32>(~_wgslsmith_mult_u32(9727u, var_1.d.a.x) | var_1.d.a.x, ~_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(var_1.d.a.x, 2u)] & global1[_wgslsmith_index_u32(47617u, 2u)], ~vec4<u32>(var_1.d.a.x, u_input.a, u_input.a, 20683u)), u_input.d, var_1.d.a.x));
    let var_3 = true;
    let var_4 = vec2<u32>(4294967295u, (var_1.d.a.x ^ max(4294967295u, ~28387u)) >> (_wgslsmith_div_u32(4294967295u, 18175u >> (abs(var_1.d.a.x) % 32u)) % 32u));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-772f))));
    var var_5 = Struct_1(true || all(select(var_1.d.b, vec4<bool>(false, false, var_2.a, false), vec4<bool>(var_3, false, false, false))), min(vec4<i32>(var_1.b, ~u_input.c, min(u_input.c, 0i), abs(min(1i, 30743i))), -min(select(vec4<i32>(var_1.c.x, var_1.d.c, u_input.b, var_1.c.x), vec4<i32>(0i, var_1.c.x, var_1.c.x, u_input.b), true), min(vec4<i32>(u_input.c, u_input.b, var_1.c.x, u_input.b), var_1.c))), 213f);
    let x = u_input.a;
    s_output = StorageBuffer(1030f, 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1306f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1838f)) * func_2(u_input.b, var_1.c.zxy, 1692f, vec4<u32>(74484u, var_1.d.a.x, 17198u, 4294967295u)).b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_5.c), var_2.b)), ~reverseBits(vec2<i32>(-var_5.b.x, -1i)));
}

