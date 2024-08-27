struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 619f;

var<private> global1: i32;

var<private> global2: f32 = -561f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> u32 {
    global2 = -1000f;
    global0 = 192f;
    var var_0 = Struct_3(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(21310i, 1i, u_input.b), vec3<i32>(-2147483647i, u_input.b, u_input.a.x)) ^ -1i, firstTrailingBit(2147483647i)) ^ ((_wgslsmith_mod_i32(0i, -29505i) ^ firstLeadingBit(u_input.a.x)) >> (_wgslsmith_add_u32(~arg_0, ~arg_2.b.x) % 32u)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(551f, _wgslsmith_f_op_f32(trunc(1261f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-128f)) - _wgslsmith_div_f32(285f, -268f))));
    global0 = -2207f;
    return firstLeadingBit(~abs(1u));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>) -> vec2<u32> {
    var var_0 = -1i;
    let var_1 = ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(arg_2.x | arg_2.x, 1u), ~func_3(4294967295u, 1i, arg_0.a, 23680i)), countOneBits(38721u));
    var_0 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i << (~(0u >> (arg_2.x % 32u)) % 32u), _wgslsmith_sub_i32(-(~(-2147483647i)), arg_0.b.c)), -1i, u_input.a.x);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(-1194f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-610f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -711f))), arg_0.c));
    return ~(~_wgslsmith_mod_vec2_u32(arg_0.a.b.yy, ~vec2<u32>(4294967295u, 23950u)));
}

fn func_1(arg_0: u32) -> f32 {
    global0 = -1000f;
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, 63450u), vec2<u32>(36331u, 1u)) >> (~vec2<u32>(39698u, 4294967295u) % vec2<u32>(32u)), ~func_2(Struct_2(Struct_1(vec2<u32>(arg_0, 36182u), vec4<u32>(arg_0, arg_0, 1u, 2388u), -1i), Struct_1(vec2<u32>(arg_0, 32591u), vec4<u32>(94745u, arg_0, 94894u, arg_0), u_input.b), 934f), false, vec2<u32>(1u, arg_0))), reverseBits(vec4<u32>(~4494u, ~arg_0, ~arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 1u), vec2<u32>(4294967295u, 20692u)))), firstTrailingBit(1i) ^ -37888i), Struct_1(min(~(~vec2<u32>(9511u, arg_0)), firstLeadingBit(vec2<u32>(4294967295u, arg_0))), _wgslsmith_div_vec4_u32(max(firstTrailingBit(vec4<u32>(4294967295u, 17882u, 31081u, 1u)), vec4<u32>(arg_0, 22536u, arg_0, arg_0)), ~vec4<u32>(46932u, arg_0, arg_0, arg_0)), u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -402f));
    global1 = ~_wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(u_input.b, var_0.b.c, var_0.b.c)) << (var_0.a.b.yyx % vec3<u32>(32u)));
    var var_1 = var_0.a;
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-774f * var_0.c), var_0.c)) + var_0.c), -1000f, !any(vec2<bool>(true, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -5500i;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1077f) + 508f);
    let var_0 = 1i;
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(53355u)) - _wgslsmith_f_op_f32(step(730f, -1000f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * 781f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(807f + _wgslsmith_f_op_f32(step(1584f, -528f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2096f)))), true)));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-380f - -559f), 1f, 1169f, -313f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(func_2(Struct_2(Struct_1(vec2<u32>(0u, 0u), vec4<u32>(54374u, 4294967295u, 5340u, 1u), var_0), Struct_1(vec2<u32>(84679u, 54710u), vec4<u32>(9581u, 24275u, 0u, 0u), var_0), _wgslsmith_f_op_f32(-1000f - 1024f)), -468f == var_2.x, vec2<u32>(1u, 1u)).x)), vec2<u32>(12510u, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 12578u, 75066u), vec4<u32>(10812u, 17669u, 25677u, 31049u)), ~4294967295u)), vec3<u32>(1u, 1u, 1u));
}

