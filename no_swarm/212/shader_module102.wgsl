struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    global0 = array<vec3<u32>, 13>();
    var var_0 = Struct_1(17460i);
    var_0 = Struct_1(u_input.b);
    let var_1 = arg_0;
    var var_2 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(48406u, u_input.a), ~vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, 61606u)), 12497u, abs(u_input.a) | (u_input.a | 1u));
    return _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -185f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1467f)) + 630f), _wgslsmith_f_op_f32(-581f - -1515f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1938f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1004f)))), vec3<f32>(1f, 1f, 1f));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    global0 = array<vec3<u32>, 13>();
    let var_0 = Struct_1(~(firstLeadingBit(19986i) | abs(arg_1.x)) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a), false), vec2<u32>(0u, u_input.a) | vec2<u32>(u_input.a, 2052u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, 0u), vec2<u32>(0u, 4117u) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)))) % 32u));
    let var_1 = abs(max(0u, u_input.a));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_1.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1074f, 546f, -127f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-495f, 667f, -949f)))), true)));
    var var_3 = Struct_1(_wgslsmith_mod_i32(arg_0.a, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(37040i, 2147483647i, var_0.a, u_input.c), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.b, arg_0.a, arg_1.x), vec4<i32>(u_input.c, -1i, 1i, 0i))), ~vec4<i32>(17769i, 1i, var_0.a, arg_0.a))));
    return abs(u_input.a);
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = array<vec3<u32>, 13>();
    let var_0 = vec4<u32>(0u, select(_wgslsmith_mod_u32(func_2(Struct_1(2147483647i), vec2<i32>(-25976i, u_input.c)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(1u, 66904u, 1u))), ~(~u_input.a), true), u_input.a, ~_wgslsmith_clamp_u32(u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 95222u, 26499u, u_input.a), vec4<u32>(0u, 0u, 97248u, 1u)))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~u_input.a, ~u_input.a), 47029u, u_input.a, ~u_input.a), ~vec4<u32>(u_input.a, 46092u << (u_input.a % 32u), u_input.a, 0u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-546f * 390f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0))))));
    let var_2 = abs(108927u) << (u_input.a % 32u);
    var_1 = arg_0;
    return Struct_1(1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-816f * -1000f)))));
    var var_1 = -(~max(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, -21838i, -1163i), vec3<i32>(1539i, var_0.a, -1i)), firstLeadingBit(vec3<i32>(var_0.a, 0i, 0i))), ~abs(vec3<i32>(4963i, 22678i, -23718i))));
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-502f, -945f))));
}

