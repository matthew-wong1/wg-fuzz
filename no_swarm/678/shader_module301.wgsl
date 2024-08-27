struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 31>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    let var_0 = arg_2.x;
    let var_1 = reverseBits(vec4<u32>(72691u, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(0u, u_input.c.x, u_input.c.x), ~vec3<u32>(75514u, 24210u, 4294967295u), arg_1.e <= arg_1.e), u_input.c.wyw), firstTrailingBit(~_wgslsmith_clamp_u32(49115u, 1u, u_input.d)), ~17546u));
    var var_2 = u_input.d;
    global1 = array<bool, 31>();
    var_2 = _wgslsmith_mult_u32(38220u, arg_1.a >> (22108u % 32u));
    return _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-16665i, max(_wgslsmith_dot_vec3_i32(u_input.a.xwz, vec3<i32>(u_input.a.x, -1i, 2147483647i)), arg_1.b.x), _wgslsmith_mult_i32(u_input.a.x, arg_1.b.x ^ u_input.a.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(arg_1.b.x), 35341i, 994i), vec3<i32>(u_input.e, _wgslsmith_div_i32(arg_1.b.x, arg_1.b.x), -u_input.b))), _wgslsmith_clamp_vec3_i32(u_input.a.xxx, -(~(-arg_1.b)), select(~vec3<i32>(arg_1.b.x, -14136i, -49658i), vec3<i32>(-30180i, _wgslsmith_add_i32(2147483647i, arg_1.b.x), _wgslsmith_add_i32(61613i, 2953i)), var_0)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_div_u32(~(~_wgslsmith_mod_u32(0u, 4294967295u)), 24781u), vec3<i32>(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(666f, 356f))), Struct_1(countOneBits(4294967295u), vec3<i32>(arg_0.b.x, arg_1.b.x, 41482i), _wgslsmith_f_op_f32(max(-540f, -262f)), !arg_0.d, _wgslsmith_f_op_f32(arg_1.c * arg_1.e)), vec2<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(arg_0.a, 31u)])), true)), -35276i, -2147483647i), _wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1727f * _wgslsmith_div_f32(arg_1.c, -1000f)) * arg_0.e)), arg_1.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1707f - arg_1.e)), arg_0.c));
    global1 = array<bool, 31>();
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_1.c, _wgslsmith_f_op_f32(ceil(-1898f)))), _wgslsmith_f_op_f32(select(var_0.e, 1f, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.yyw) >= _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(var_0.a, 5943u, 65325u, 0u))))));
    var var_1 = u_input.a;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(451f, arg_1.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1634f)))))));
    return vec3<bool>(true, !any(select(arg_1.d, !arg_0.d, arg_0.d.x)), var_0.d.x);
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    let var_0 = u_input.c.zx;
    var var_1 = ~0u;
    var_1 = select(1u, var_0.x, global1[_wgslsmith_index_u32(87668u, 31u)]);
    let var_2 = Struct_1(18318u, vec3<i32>(-(u_input.a.x & u_input.a.x), _wgslsmith_mod_i32(-8030i, 1i), -8755i) | firstTrailingBit(u_input.a.wyz), arg_0, select(!func_2(Struct_1(var_0.x, u_input.a.wyw, arg_0, vec3<bool>(true, false, false), arg_0), Struct_1(1u, vec3<i32>(u_input.e, u_input.a.x, 36619i), 1074f, vec3<bool>(true, arg_1, false), arg_0)), vec3<bool>(true, true, true), true), -1272f);
    global1 = array<bool, 31>();
    return Struct_1(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_2.a, u_input.c.x, u_input.c.x)), u_input.c.xxx ^ u_input.c.zyx), vec3<i32>(-48176i, var_2.b.x, ~u_input.b), _wgslsmith_f_op_f32(-1268f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), !var_2.d, _wgslsmith_f_op_f32(217f * var_2.e));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = u_input.a & select(~u_input.a, min(u_input.a, abs(vec4<i32>(21477i, arg_0.b.x, 9726i, 38459i))), select(vec4<bool>(arg_0.c != arg_0.c, u_input.c.x <= arg_0.a, global1[_wgslsmith_index_u32(~0u, 31u)], arg_0.d.x), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 31u)], false, global1[_wgslsmith_index_u32(15788u, 31u)]), true));
    let var_1 = arg_0.b.zy;
    global1 = array<bool, 31>();
    var var_2 = select(!(!arg_0.d), arg_0.d, any(vec3<bool>(global1[_wgslsmith_index_u32(34119u, 31u)], global1[_wgslsmith_index_u32(73261u, 31u)], arg_0.d.x)));
    let var_3 = _wgslsmith_mod_u32(~6553u, u_input.c.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(493f, 948f, false));
    global1 = array<bool, 31>();
    var var_1 = func_4(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1865f - -397f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-815f)))), true));
    var_1 = func_4(func_1(_wgslsmith_f_op_f32(-var_1.e), true));
    var_0 = var_1.c;
    let var_2 = Struct_1(~_wgslsmith_mult_u32(var_1.a, 39444u) ^ countOneBits(1u), u_input.a.yyw, _wgslsmith_f_op_f32(var_1.e * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))))), var_1.d, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.c)), _wgslsmith_f_op_f32(floor(var_1.c)), -381f, _wgslsmith_div_f32(1393f, 925f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-240f, 1708f, 870f, var_1.c))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-583f, -536f, -1546f, -102f) + vec4<f32>(-1000f, var_2.c, var_1.e, 1000f)))))), _wgslsmith_dot_vec2_u32(~(~countOneBits(vec2<u32>(0u, 1u))), ~vec2<u32>(17815u, ~83055u)), 4294967295u, ~var_1.b.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-785f * var_2.e)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-728f, -424f)))));
}

