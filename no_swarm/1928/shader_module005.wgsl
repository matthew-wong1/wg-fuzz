struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_1(!arg_1.zyy, u_input.b.x, (~10619u & u_input.a) | ~(~abs(u_input.a)));
    let var_1 = arg_1.x;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -516f, -692f, -498f) - vec4<f32>(-2313f, -1004f, 446f, -341f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-156f, 117f, -413f, -588f)))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -228f), _wgslsmith_div_f32(521f, -185f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1272f, 483f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-2680f, -495f)))), 559f)), ~_wgslsmith_dot_vec2_i32(~firstLeadingBit(vec2<i32>(u_input.b.x, var_0.b)), reverseBits(vec2<i32>(var_0.b, -61885i))), var_1);
    var var_3 = var_0;
    var var_4 = var_0;
    return vec3<bool>(true, true, all(vec3<bool>(all(vec3<bool>(var_4.a.x, true, var_1)), var_2.a.x >= -1654f, var_1)) && true);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = !(!arg_0.a.xy);
    let var_1 = Struct_2(arg_2.a, ~(-max(firstTrailingBit(u_input.b.x), 1i)), all(func_3(arg_2.b, !vec4<bool>(var_0.x, arg_2.c, arg_0.a.x, false))) & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.a.x, arg_1)) * _wgslsmith_f_op_f32(526f - arg_1)) > arg_1));
    var var_2 = Struct_1(vec3<bool>(arg_0.a.x, any(vec3<bool>(all(vec3<bool>(arg_0.a.x, arg_2.c, true)), true, arg_2.c)), var_1.c), -(~arg_0.b), 0u);
    let var_3 = vec2<f32>(arg_1, -824f);
    return select(~min(countOneBits(vec4<u32>(arg_0.c, 4294967295u, u_input.a, 4294967295u)) | min(vec4<u32>(1u, 0u, 5309u, arg_0.c), vec4<u32>(var_2.c, 4294967295u, u_input.a, 0u)), ~(~vec4<u32>(arg_0.c, u_input.a, arg_0.c, var_2.c))), max(reverseBits(~vec4<u32>(26965u, var_2.c, arg_0.c, u_input.a)), _wgslsmith_mult_vec4_u32((vec4<u32>(u_input.a, 2440u, var_2.c, arg_0.c) ^ vec4<u32>(1u, u_input.a, var_2.c, var_2.c)) << (vec4<u32>(var_2.c, 0u, 8964u, var_2.c) % vec4<u32>(32u)), vec4<u32>(u_input.a, _wgslsmith_mod_u32(arg_0.c, u_input.a), ~var_2.c, 4155u & var_2.c))), true);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = 0u;
    var var_1 = arg_1;
    var var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(122515u, _wgslsmith_dot_vec4_u32(select(func_2(Struct_1(var_1.a, -2147483647i, var_1.c), 406f, Struct_2(vec4<f32>(-279f, -2520f, 371f, -129f), arg_0, false)), vec4<u32>(24592u, var_1.c, 41559u, u_input.a) >> (vec4<u32>(4294967295u, var_1.c, var_1.c, u_input.a) % vec4<u32>(32u)), var_1.a.x), vec4<u32>(countOneBits(4294967295u), _wgslsmith_mult_u32(arg_1.c, u_input.a), 1u, firstTrailingBit(30362u))), ~var_1.c), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(19102u, 1u, 1u), firstTrailingBit(~vec3<u32>(32170u, u_input.a, var_1.c)), vec3<u32>(~arg_1.c, func_2(Struct_1(arg_1.a, 1i, 0u), 352f, Struct_2(vec4<f32>(-683f, -1973f, -431f, -2323f), arg_0, false)).x, 1u)));
    var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(~arg_1.c, _wgslsmith_div_u32(_wgslsmith_add_u32(var_1.c << (var_1.c % 32u), arg_1.c | var_1.c), u_input.a), ~u_input.a), vec3<u32>(max(u_input.a, 36732u), var_1.c, abs(1u)));
    var var_3 = abs(~(~(~(~vec3<u32>(4294967295u, 51917u, 4294967295u)))));
    return _wgslsmith_f_op_f32(floor(-663f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(countOneBits(19768i), Struct_1(vec3<bool>(false, true, true), u_input.b.x, u_input.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(197f + 418f), _wgslsmith_f_op_f32(-539f + -1104f), any(vec4<bool>(true, false, false, false))))), _wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec2_i32(min(vec2<i32>(11765i, u_input.b.x), u_input.b), ~vec2<i32>(u_input.b.x, 3533i)), Struct_1(vec3<bool>(true, true, true), u_input.b.x ^ u_input.b.x, ~0u))), _wgslsmith_div_f32(-713f, -719f)), u_input.b.x, true);
    var var_1 = Struct_1(vec3<bool>(var_0.c, var_0.c, (all(vec3<bool>(var_0.c, true, var_0.c)) || var_0.c) & false), ~_wgslsmith_sub_i32(-2147483647i & abs(u_input.b.x), ~(-2147483647i)), 1u >> (1u % 32u));
    let var_2 = vec4<bool>(var_0.c, false, 1270f < _wgslsmith_f_op_f32(-var_0.a.x), var_0.c & true);
    let var_3 = ~(var_1.b << (var_1.c % 32u));
    var_1 = Struct_1(var_1.a, ~_wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_3, var_1.b, 13767i), vec3<i32>(var_1.b, -2147483647i, u_input.b.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), u_input.b.x, firstLeadingBit(var_3))), func_2(Struct_1(func_3(_wgslsmith_div_i32(var_0.b, 15767i), !vec4<bool>(var_2.x, var_2.x, var_2.x, var_1.a.x)), var_3 | -22969i, ~(78039u ^ u_input.a)), 1103f, Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.a), var_3, !any(vec2<bool>(var_2.x, false)))).x);
    var var_4 = Struct_1(!func_3(~var_1.b, var_2), 1i, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

