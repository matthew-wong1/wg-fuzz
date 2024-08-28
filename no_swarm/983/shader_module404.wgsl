struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<i32>, 17>;

var<private> global3: array<vec4<bool>, 25>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<f32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(863f)), -289f))));
    let var_1 = ~4294967295u;
    let var_2 = Struct_1(false, _wgslsmith_dot_vec2_u32(u_input.d.wy, _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d.xz, vec2<u32>(50033u, 4294967295u)), firstLeadingBit(u_input.d.yx))), _wgslsmith_clamp_u32(~min(firstTrailingBit(47347u), var_1), 20716u, 1u), 1238f, arg_2.x);
    var var_3 = arg_0.x;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + var_2.e)))));
    return firstLeadingBit(select(vec3<u32>(~(~var_2.b), global1.b, var_1), u_input.d.wxw, var_2.a));
}

fn func_2() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) - _wgslsmith_f_op_f32(1367f - 203f));
    let var_1 = Struct_1(all(vec4<bool>(true, true, true, true)) || true, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.d.xxz, func_3(select(vec3<bool>(global1.a, global1.a, false), vec3<bool>(global1.a, false, global1.a), vec3<bool>(true, global1.a, true)), _wgslsmith_f_op_f32(f32(-1f) * -990f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-214f, 603f, global1.d)))), 1u), select(0u >> (_wgslsmith_dot_vec2_u32(~u_input.d.xw, vec2<u32>(global1.b, 0u)) % 32u), 16392u, global1.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1090f))))))), var_0);
    var var_2 = global1.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1430f * 2951f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0))), var_0));
    let var_4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(868f, -167f, var_1.e), vec3<f32>(-349f, var_1.d, var_0))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.d, var_1.e, -103f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.e, var_3.x, var_0)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1128f, var_1.d) + vec3<f32>(var_0, 1945f, global1.e)))))));
    return ~countOneBits(~u_input.d.xz);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> i32 {
    let var_0 = !any(vec3<bool>(all(vec4<bool>(false, global1.a, arg_0.a, false)), !(global1.a & arg_0.a), true));
    var var_1 = ~_wgslsmith_mult_vec2_u32(~(~u_input.d.wy << (vec2<u32>(global1.c, 21235u) % vec2<u32>(32u))), max(func_2(), vec2<u32>(max(arg_1, 0u), firstTrailingBit(1u))));
    let var_2 = vec3<i32>(20907i, -1i, _wgslsmith_add_i32(firstLeadingBit(~u_input.a), 10196i));
    var var_3 = vec3<bool>(arg_0.c == u_input.b, false, arg_0.a);
    let var_4 = Struct_1(!var_3.x, func_2().x, select(_wgslsmith_div_u32(~(~u_input.b), arg_1), global1.c, global1.a), global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2017f, _wgslsmith_f_op_f32(f32(-1f) * -1104f)))));
    return -_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, global0[_wgslsmith_index_u32(~u_input.d.x, 2u)], global0[_wgslsmith_index_u32(var_4.b, 2u)], -2147483647i), ~countOneBits(vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(arg_0.c, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)], -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 2>();
    global3 = array<vec4<bool>, 25>();
    let var_0 = 1819f;
    var var_1 = vec2<i32>(abs(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(firstLeadingBit(global1.b), ~u_input.d.x), _wgslsmith_sub_u32(1u, firstTrailingBit(u_input.b))), 2u)]), func_1(Struct_1(global1.a, ~(~u_input.b), _wgslsmith_add_u32(1u, 1u), _wgslsmith_f_op_f32(-1006f - global1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(256f * var_0) + _wgslsmith_f_op_f32(abs(global1.e)))), abs(~4294967295u)));
    global2 = array<vec3<i32>, 17>();
    var var_2 = !global1.a;
    global0 = array<i32, 2>();
    var var_3 = vec3<u32>(58038u, ~56325u, _wgslsmith_div_u32(~_wgslsmith_div_u32(global1.c, 0u) & ~4294967295u, ~4294967295u));
    var var_4 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec3<u32>(_wgslsmith_div_u32(0u, 8494u), ~13477u, 90186u), vec3<u32>(~1u, _wgslsmith_mult_u32(var_3.x, global1.b), global1.b), !vec3<bool>(global1.a, global1.a, true)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(18230u, 61129u, var_3.x), var_4.wyy), global1.b | 4294967295u, 1212u, global1.c), _wgslsmith_mult_vec4_u32(~min(vec4<u32>(8834u, var_4.x, 0u, u_input.d.x), vec4<u32>(global1.c, 4294967295u, var_3.x, var_3.x)), vec4<u32>(174u, 0u ^ global1.b, ~4294967295u, ~35109u)), ~_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.d.x, global1.b, 5126u, 24654u)), u_input.d)), 1i ^ u_input.c.x);
}

