struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = true;
    global0 = array<vec3<i32>, 5>();
    global0 = array<vec3<i32>, 5>();
    let var_1 = Struct_1(1000f);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1128f);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a + 909f), var_1.a));
}

fn func_2() -> f32 {
    global0 = array<vec3<i32>, 5>();
    global0 = array<vec3<i32>, 5>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(vec2<u32>(143451u, u_input.e))))));
    let var_1 = Struct_4(_wgslsmith_add_vec2_u32(firstLeadingBit(~vec2<u32>(u_input.e, 0u)) & ~min(vec2<u32>(4294967295u, u_input.e), vec2<u32>(u_input.e, 16059u)), vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.e) & vec2<u32>(u_input.e, u_input.e), vec2<u32>(68902u, 257u)))));
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~abs(var_1.a.x), _wgslsmith_clamp_u32(abs(_wgslsmith_clamp_u32(var_1.a.x, var_1.a.x, 4294967295u)), ~(~var_1.a.x), abs(select(var_1.a.x, 19753u, true))), 4294967295u, firstTrailingBit(_wgslsmith_mod_u32(var_1.a.x, _wgslsmith_mult_u32(u_input.e, u_input.e)))), vec4<u32>(31085u, min(var_1.a.x, abs(0u)), u_input.e & 1u, 152654u) << (max(vec4<u32>(u_input.e << (var_1.a.x % 32u), max(var_1.a.x, var_1.a.x), ~0u, u_input.e), ~(~vec4<u32>(16612u, 1u, 1u, 16u))) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(var_1.a.x, ~u_input.e ^ var_1.a.x, u_input.e, var_1.a.x)));
    return _wgslsmith_f_op_f32(451f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a, var_0.a), -157f)) + var_0.a));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32) -> f32 {
    let var_0 = ~(~0u);
    var var_1 = Struct_3(arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1682f), _wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-937f)))), false)), Struct_2(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(u_input.e, 5u)], select(-vec3<i32>(u_input.b.x, arg_0.x, u_input.c.x), vec3<i32>(6460i, -2147483647i, arg_2), false)), arg_1.b), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 16180u);
    let var_2 = max(abs(~abs(firstLeadingBit(arg_0.yz))), arg_0.zx);
    var var_3 = Struct_3(-17160i, _wgslsmith_f_op_f32(-var_1.d.a), Struct_2(0i, all(vec4<bool>(true, !arg_1.b, var_1.c.b, true))), var_1.d, firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.e, var_1.e) >> (vec2<u32>(var_1.e, var_0) % vec2<u32>(32u)), ~firstTrailingBit(vec2<u32>(u_input.e, u_input.e)))));
    var var_4 = !vec4<bool>(var_1.c.b, !any(!vec4<bool>(false, true, var_1.c.b, true)), var_1.c.b, any(!select(vec2<bool>(var_1.c.b, var_3.c.b), vec2<bool>(arg_1.b, var_1.c.b), true)));
    return 882f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1438f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1060f)) + -222f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(335f)) + -1060f) * _wgslsmith_f_op_f32(func_1(_wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(u_input.e, 5u)]), Struct_2(u_input.c.x, true), _wgslsmith_add_i32(u_input.a, 32695i))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1375f, _wgslsmith_f_op_f32(-350f * -1152f), 1f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(516f, 1000f, -1447f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-971f, -591f, -299f)))))));
    let var_1 = -2266f;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -794f) - _wgslsmith_f_op_f32(sign(var_1))))));
    global0 = array<vec3<i32>, 5>();
    var var_3 = ~firstTrailingBit(15258u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 1000f, -328f, var_2.a))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(937f, var_2.a, var_2.a, 1157f)))) * vec4<f32>(-923f, var_2.a, var_0.x, -442f)));
}

