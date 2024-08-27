struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = 1u;
    global0 = array<Struct_2, 2>();
    var var_1 = firstLeadingBit(vec3<i32>(-9311i, -1i, _wgslsmith_mod_i32(12576i, u_input.a.x) << (_wgslsmith_div_u32(var_0, var_0) % 32u)) >> (min(abs(vec3<u32>(var_0, var_0, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0, var_0, var_0), vec3<u32>(var_0, var_0, var_0)) & ~vec3<u32>(70932u, 0u, var_0)) % vec3<u32>(32u)));
    var var_2 = Struct_1(u_input.b.wyz, 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-788f + -2097f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-889f - 543f))));
    var_1 = u_input.b.wxw << (~(~abs(vec3<u32>(var_0, 6460u, 4294967295u) ^ vec3<u32>(var_2.b, 96568u, 4294967295u))) % vec3<u32>(32u));
    return ~(~55793u);
}

fn func_2(arg_0: u32) -> bool {
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    var var_0 = Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(~func_3(), _wgslsmith_clamp_u32(~33316u, 1u, ~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 82743u, arg_0) ^ vec3<u32>(arg_0, 0u, 4294967295u), reverseBits(vec3<u32>(2683u, arg_0, 38907u)))), ~min(~vec3<u32>(arg_0, 29913u, 0u), vec3<u32>(516u, 1u, 461u) | vec3<u32>(arg_0, arg_0, 2518u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1166f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1510f + -1585f) - _wgslsmith_div_f32(508f, 106f)))), !any(vec4<bool>(true, true, true, true)))));
    var_0 = Struct_2(var_0.a, -933f);
    return all(select(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), !vec3<bool>(true, any(vec2<bool>(false, false)), true), all(vec3<bool>(true, true, true))));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>) -> vec4<u32> {
    var var_0 = select(!vec4<bool>(true && arg_1.x, !arg_1.x, arg_1.x, (0u <= arg_0) || true), vec4<bool>(-1i <= ~(~u_input.b.x), all(arg_1), !(~1887u > func_3()), !arg_1.x), false);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-887f + _wgslsmith_f_op_f32(-672f - -747f)), -1008f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1408f + 229f) * _wgslsmith_f_op_f32(f32(-1f) * -1016f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(138f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(881f - -264f))))));
    let var_2 = Struct_2(countOneBits(~vec3<u32>(36530u, _wgslsmith_mult_u32(7824u, 1u), 16698u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(539f)), 1001f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-108f * 473f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(314f - _wgslsmith_f_op_f32(step(1168f, var_1))) * var_1)));
    var var_3 = var_0.yzy;
    global0 = array<Struct_2, 2>();
    return _wgslsmith_add_vec4_u32(~vec4<u32>(arg_0, _wgslsmith_clamp_u32(54106u, ~4294967295u, arg_0), _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(var_2.a.x, arg_0)), 51975u), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(45225u, countOneBits(var_2.a.x), arg_0, arg_0), vec4<u32>(abs(2645u), ~var_2.a.x, ~arg_0, max(var_2.a.x, var_2.a.x))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 63310u, arg_0, arg_0) >> (vec4<u32>(4294967295u, 1u, arg_0, 0u) % vec4<u32>(32u)), vec4<u32>(var_2.a.x, var_2.a.x, 1u, var_2.a.x) ^ vec4<u32>(4294967295u, 52113u, var_2.a.x, arg_0))));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>) -> vec4<bool> {
    let var_0 = true;
    let var_1 = vec4<bool>(true, !(!(arg_0.a.x <= 502f) | !var_0), select(-(i32(-1i) * -16583i), ~reverseBits(0i), any(vec4<bool>(true, var_0, var_0, var_0))) >= abs(~arg_1.x ^ 3751i), select(!any(vec4<bool>(false, true, var_0, var_0)) | !(!var_0), !(-664f != arg_0.a.x), true));
    global0 = array<Struct_2, 2>();
    var var_2 = func_4(~(~abs(2724u) << (~(~0u) % 32u)), select(!var_1.wwy, !var_1.wzy, func_2(~_wgslsmith_div_u32(39311u, 31367u))));
    var_2 = vec4<u32>(~_wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(var_2.x, var_2.x)), 0u, ~(~var_2.x), _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_2.x ^ select(1u, 0u, false), 6635u), func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.x) >> (var_2.xy % vec2<u32>(32u)), vec2<u32>(0u, var_2.x) >> (var_2.wx % vec2<u32>(32u))), var_1.zzz).x));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = Struct_1(~u_input.b.wzy, ~(~(~(~4294967295u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1139f, -242f))), 192f)));
    var var_2 = ~u_input.b;
    var_2 = select(vec4<i32>(var_2.x, -firstTrailingBit(var_2.x), var_2.x, _wgslsmith_add_i32(1i, _wgslsmith_mult_i32(36578i, i32(-1i) * -7041i))), -u_input.b, func_1(Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.x), var_1.c.x, var_1.c.x, _wgslsmith_f_op_f32(-var_1.c.x))), u_input.a));
    var var_3 = var_1.b;
    var var_4 = 46366u;
    var_2 = vec4<i32>(-_wgslsmith_sub_i32(-5513i, select(-2147483647i, 28624i, true)), var_1.a.x, _wgslsmith_sub_i32(i32(-1i) * -13675i, -_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, u_input.b.x), vec2<i32>(var_2.x, u_input.a.x))), var_1.a.x) ^ reverseBits(vec4<i32>(abs(~u_input.b.x), abs(abs(-2147483647i)), 7631i, abs(~(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(31783u);
}

