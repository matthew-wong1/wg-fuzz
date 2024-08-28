struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>) -> u32 {
    let var_0 = Struct_3(min(_wgslsmith_add_vec3_i32(max(abs(vec3<i32>(-23389i, -1i, 0i)), vec3<i32>(2147483647i, -2147483647i, 45391i)), firstLeadingBit(vec3<i32>(1i, 1i, 1i))), -_wgslsmith_div_vec3_i32(vec3<i32>(1i, 43098i, 1i), vec3<i32>(1i, 1i, 1i))), all(arg_1));
    var var_1 = var_0.a.x;
    var_1 = abs(-14466i) ^ var_0.a.x;
    var var_2 = ~arg_0.yw;
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(748f, -1000f)));
    return 1u;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> u32 {
    var var_0 = vec2<u32>(arg_1.x, 25871u);
    var var_1 = vec3<u32>(31587u, ~func_3(vec4<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), var_0.x, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, 1u, 78852u), vec4<u32>(4294967295u, u_input.a, 16388u, arg_1.x))), select(vec4<bool>(false, arg_0, true, true), vec4<bool>(arg_0, false, false, arg_0), true)), _wgslsmith_add_u32(1u, arg_1.x) | u_input.a);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(275f))), -1418f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f))));
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(var_0.x, 1u)), vec2<u32>(arg_1.x, 4294967295u)) & 14945u, ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 29636u, 24844u)) ^ (vec3<u32>(var_1.x, u_input.a, var_1.x) | vec3<u32>(var_0.x, arg_1.x, 0u)), vec3<u32>(min(var_1.x, 28034u), 1u, var_0.x | 4294967295u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32) -> u32 {
    let var_0 = Struct_1(0u, vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), arg_0.b.ww), ~arg_0.a), ~(~arg_2), ~(~27237u), ~(~min(0u, arg_0.a))), ~(-82859i), !select(!arg_0.d, vec3<bool>(any(vec4<bool>(false, false, true, false)), true, any(vec2<bool>(arg_1.x, true))), all(arg_1)));
    let var_1 = ~vec2<u32>(arg_2, func_2(!(!arg_0.d.x), vec2<u32>(~0u, u_input.a)));
    let var_2 = select(var_0.d, select(select(var_0.d, var_0.d, vec3<bool>(!arg_0.d.x, true, all(vec2<bool>(arg_0.d.x, arg_0.d.x)))), !vec3<bool>(u_input.a <= 15250u, all(vec4<bool>(true, arg_0.d.x, arg_0.d.x, arg_1.x)), !arg_1.x), !(!(!arg_1.x))), arg_1.x);
    let var_3 = Struct_2(reverseBits(_wgslsmith_mult_vec4_i32(~vec4<i32>(var_0.c, -1i, 2147483647i, 20689i) >> (_wgslsmith_mod_vec4_u32(var_0.b, arg_0.b) % vec4<u32>(32u)), vec4<i32>(var_0.c | arg_0.c, -var_0.c, abs(-48240i), _wgslsmith_mult_i32(-6488i, 17808i)))), Struct_1(arg_2, arg_0.b, i32(-1i) * -1i, !vec3<bool>(!arg_1.x, true, arg_1.x)), !select(!(!var_2), vec3<bool>(var_0.d.x, arg_1.x, true), var_0.d.x), arg_0.b.xxx);
    var var_4 = Struct_3(-vec3<i32>(~(~10035i), -2147483647i, abs(firstLeadingBit(var_3.b.c))), var_2.x);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(abs(~_wgslsmith_mod_u32(u_input.a, u_input.a)), 69760u);
    var_0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(1u, 0u)), u_input.a) | abs(vec2<u32>(u_input.a, 64865u)), vec2<u32>(~1u, 4294967295u));
    var_0 = u_input.a;
    var_0 = _wgslsmith_clamp_u32(firstTrailingBit(~(~func_1(Struct_1(9494u, vec4<u32>(u_input.a, 1u, u_input.a, 100175u), 26768i, vec3<bool>(false, true, false)), vec2<bool>(true, false), u_input.a))), ~u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a);
}

