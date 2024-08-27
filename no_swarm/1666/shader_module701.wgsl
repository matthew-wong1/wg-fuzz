struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_sub_u32((25371u >> (_wgslsmith_add_u32(u_input.b.x, 1u) % 32u)) | abs(u_input.b.x), ~_wgslsmith_mod_u32(select(85595u, u_input.a, true), ~u_input.a)));
    let var_1 = Struct_1(_wgslsmith_div_u32(0u, firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, var_0.a), vec4<u32>(1u, u_input.b.x, u_input.b.x, var_0.a)), vec4<u32>(var_0.a, u_input.b.x, u_input.b.x, 17494u)))));
    var var_2 = min(-5365i, -1i) >> (u_input.b.x % 32u);
    var_0 = Struct_1(var_1.a);
    var var_3 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(2338f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-733f * arg_0))))), 592f);
    return vec4<u32>(_wgslsmith_mult_u32(~u_input.a, min(u_input.a, var_0.a)), ~((var_1.a << (60961u % 32u)) | (firstTrailingBit(var_1.a) ^ ~u_input.b.x)), 0u, 4294967295u);
}

fn func_4(arg_0: vec4<u32>, arg_1: bool) -> f32 {
    let var_0 = ~abs(~(vec3<u32>(4294967295u, 0u, u_input.a) | u_input.b)) & (_wgslsmith_mod_vec3_u32(abs(u_input.b), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(arg_0.x, 1u, 1u)), u_input.b)) & vec3<u32>(u_input.b.x, ~7277u, 81915u));
    let var_1 = vec2<bool>(arg_1, !any(select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, true), false)));
    var var_2 = !(!(!var_1));
    var_2 = var_1;
    var_2 = !var_1;
    return _wgslsmith_f_op_f32(select(1000f, -1858f, all(!(!vec4<bool>(arg_1, arg_1, var_1.x, true)))));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    let var_0 = _wgslsmith_div_u32(firstTrailingBit(1u), 11206u);
    var var_1 = 853f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(func_3(-2021f, select(vec2<bool>(false, false), vec2<bool>(true, true), true)), !all(vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_f32(trunc(1f)))));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.e, u_input.e) | reverseBits(vec2<i32>(u_input.e, arg_0)), vec2<i32>(arg_0, abs(u_input.c))), -_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0, 1i), reverseBits(vec2<i32>(1i, 9232i)))) ^ -16218i;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1250f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(267f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-249f + 842f) + -1661f), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -19632i, -6151i), vec3<i32>(-1953i, u_input.e, var_2)) <= ~arg_0))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -2771f)), vec2<f32>(1141f, 289f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-999f, 1295f), vec2<f32>(2098f, -542f))), vec2<bool>(true, true))))) - vec2<f32>(-424f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(firstLeadingBit(vec4<u32>(var_0, var_0, 10538u, 2650u)), all(vec4<bool>(false, false, false, false))))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(196f + -642f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-336f, _wgslsmith_f_op_f32(round(-2161f)))));
    var_0 = 1f;
    let var_1 = 2620f;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1, _wgslsmith_f_op_f32(330f - var_1)))) - _wgslsmith_f_op_vec2_f32(func_2(u_input.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -511f), _wgslsmith_f_op_f32(round(var_1))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1, var_1))), vec2<bool>(true, true)))));
    return _wgslsmith_div_i32(_wgslsmith_div_i32(-_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.d), vec2<i32>(-84322i, 40734i)), u_input.e), 0i), u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(countOneBits(func_1(Struct_1(u_input.a), Struct_1(u_input.a))) << (~u_input.a % 32u)) | firstLeadingBit(abs(reverseBits(0i) >> (1u % 32u)));
    let var_1 = Struct_1(u_input.a);
    var var_2 = vec3<i32>(func_1(Struct_1(132703u), Struct_1(_wgslsmith_mult_u32(~1u, _wgslsmith_clamp_u32(9263u, 63243u, 4294967295u)))), ~(-(u_input.d ^ u_input.d)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, var_0), -vec2<i32>(select(-27158i, var_0, true), var_0)));
    var_2 = vec3<i32>(-3660i, i32(-1i) * -_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0, -49904i, var_0, var_0), vec4<i32>(var_0, -22837i, -1i, 76821i) | vec4<i32>(var_2.x, var_0, var_0, u_input.c)), var_0);
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(~vec4<u32>(var_3.a, var_3.a, 20879u, var_1.a), any(vec4<bool>(false, false, true, false))))), 4294967295u, _wgslsmith_add_i32(u_input.e, ~var_2.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -934f) - _wgslsmith_f_op_f32(1286f * 1143f))), -1607f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -645f)), _wgslsmith_div_f32(280f, _wgslsmith_f_op_f32(select(-334f, -506f, false))))));
}

