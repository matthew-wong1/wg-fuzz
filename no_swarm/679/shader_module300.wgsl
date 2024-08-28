struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: f32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, false, false, false, true, true, true, true, false, false, true, true, false, true, false, true, false, false, true, true, false, false, true, true, true, true, true, false, false);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> u32 {
    global0 = array<bool, 29>();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(100466u, 1u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(21869u, 1u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u))), 0u), ~vec2<u32>(1u, 1u)) >> (_wgslsmith_mult_u32(~34627u, 1u << ((_wgslsmith_dot_vec2_u32(vec2<u32>(5762u, 31070u), vec2<u32>(13101u, 1u)) << (1u % 32u)) % 32u)) % 32u);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>) -> vec4<i32> {
    global0 = array<bool, 29>();
    global0 = array<bool, 29>();
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-782f * -563f) + _wgslsmith_f_op_f32(floor(1534f)))))) - _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(116f - _wgslsmith_f_op_f32(min(747f, -1015f))))));
    global0 = array<bool, 29>();
    return ~vec4<i32>(~19323i, u_input.a.x, u_input.a.x, u_input.a.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_5) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(650f, arg_1.c.b.c, arg_1.c.b.c, arg_1.c.b.c) + vec4<f32>(-1000f, -1000f, 586f, -539f)))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.b.c, arg_1.c.b.b.a.e.x, arg_1.c.b.b.a.e.x, 1597f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-740f, -2001f, -1026f, arg_1.c.b.b.a.e.x) * vec4<f32>(1027f, 2427f, arg_1.c.b.c, -919f)))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2497f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_1.c.b.c, arg_1.c.b.b.a.e.x, global0[_wgslsmith_index_u32(arg_1.c.b.d, 29u)])))), -457f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2592f)), _wgslsmith_f_op_f32(step(arg_1.c.b.c, -2184f))) + _wgslsmith_f_op_f32(arg_1.c.b.c * _wgslsmith_f_op_f32(step(1773f, arg_1.c.b.b.a.e.x))))), !all(select(vec3<bool>(arg_1.a.x, true, global0[_wgslsmith_index_u32(7206u, 29u)]), arg_1.a.yxz, vec3<bool>(true, true, true)))));
    var var_1 = Struct_1(-46713i > (1i ^ u_input.a.x), ~vec2<u32>(7404u, firstLeadingBit(arg_0.x)), vec3<u32>(arg_1.c.b.b.a.b.x, _wgslsmith_div_u32(1u, ~countOneBits(arg_1.c.b.b.a.c.x)), ~arg_0.x), ~firstTrailingBit(vec3<i32>(2147483647i, arg_1.c.b.b.a.d.x, arg_1.b) ^ u_input.a), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-258f, _wgslsmith_f_op_f32(max(1922f, arg_1.c.b.b.a.e.x))), -1205f)), arg_1.c.b.c));
    return var_1.b.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: u32) -> u32 {
    let var_0 = func_4(_wgslsmith_add_vec2_u32(max(vec2<u32>(arg_2, 46299u) | vec2<u32>(36313u, arg_2), vec2<u32>(arg_2, arg_2)) ^ _wgslsmith_add_vec2_u32(~vec2<u32>(arg_2, 4294967295u), ~vec2<u32>(arg_2, arg_2)), _wgslsmith_div_vec2_u32(~countOneBits(vec2<u32>(arg_2, 0u)), abs(vec2<u32>(11998u, 4294967295u)) | vec2<u32>(arg_2, 2816u))), Struct_5(!(!vec4<bool>(false, arg_0.x, global0[_wgslsmith_index_u32(4294967295u, 29u)], false)), _wgslsmith_dot_vec4_i32(~vec4<i32>(42183i, u_input.a.x, u_input.a.x, 27544i), _wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, u_input.a.x, arg_1.x, u_input.a.x), vec4<i32>(-1i, -2147483647i, 2147483647i, -2147483647i))), Struct_4(~func_3(vec4<bool>(false, global0[_wgslsmith_index_u32(497u, 29u)], arg_0.x, false), vec3<u32>(arg_2, arg_2, arg_2)), Struct_3(vec3<u32>(1u, arg_2, arg_2) ^ vec3<u32>(arg_2, arg_2, arg_2), Struct_2(Struct_1(arg_0.x, vec2<u32>(arg_2, 44216u), vec3<u32>(arg_2, 28986u, arg_2), vec3<i32>(arg_1.x, arg_1.x, 63370i), vec2<f32>(-395f, 918f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_u32(30145u, arg_2), vec3<bool>(global0[_wgslsmith_index_u32(arg_2, 29u)], arg_0.x, true)), 2147483647i)));
    global0 = array<bool, 29>();
    global0 = array<bool, 29>();
    let var_1 = -(~(~(vec3<i32>(1i, -6484i, -2147483647i) & vec3<i32>(arg_1.x, arg_1.x, 2147483647i))) & u_input.a);
    let var_2 = Struct_2(Struct_1(arg_0.x, ~(~firstTrailingBit(vec2<u32>(89781u, 1u))), vec3<u32>(arg_2, ~arg_2 >> (_wgslsmith_mod_u32(51033u, var_0) % 32u), ~0u), ~(vec3<i32>(-1i) * -u_input.a), vec2<f32>(1f, -933f)));
    return ~arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec3<u32>(_wgslsmith_sub_u32(func_1(), 1u), ~(~func_2(vec2<bool>(global0[_wgslsmith_index_u32(44520u, 29u)], global0[_wgslsmith_index_u32(35033u, 29u)]), u_input.a.yx, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(54097u, 36425u)), 4294967295u, 1u, 27946u << (1u % 32u)))), Struct_2(Struct_1(true, firstLeadingBit(~vec2<u32>(49433u, 4294967295u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 12129u, 1u), vec3<u32>(1u, 81535u, 0u)), _wgslsmith_div_vec3_i32(vec3<i32>(0i, 25216i, u_input.a.x) >> (vec3<u32>(105388u, 4294967295u, 46801u) % vec3<u32>(32u)), ~vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1081f, 1085f) - vec2<f32>(-654f, -1088f))))), -1719f, 30782u, select(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], false, true), vec3<bool>(false, true, global0[_wgslsmith_index_u32(739u, 29u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(0u, 29u)]))), !vec3<bool>(global0[_wgslsmith_index_u32(19037u, 29u)], !global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)]), vec3<bool>(!(!global0[_wgslsmith_index_u32(4294967295u, 29u)]), global0[_wgslsmith_index_u32(0u, 29u)], false)));
    let var_1 = 52041i;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1161f, -187f, 819f, var_0.c)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(415f, var_0.c, var_0.c, var_0.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a.e.x, var_0.b.a.e.x, 547f, -684f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c, 216f, var_0.c, var_0.c), vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.b.a.e.x))))) - vec4<f32>(var_0.b.a.e.x, _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(step(var_0.b.a.e.x, 1000f))), var_0.c, 1497f)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -878f), _wgslsmith_f_op_f32(-var_0.c), var_0.c, 1420f);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), 1000f, _wgslsmith_f_op_f32(-1497f * 2948f)))));
}

