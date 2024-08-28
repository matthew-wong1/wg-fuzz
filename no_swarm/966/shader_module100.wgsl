struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(2147483647i, u_input.a), -26391i, _wgslsmith_mod_i32(u_input.b.x, 0i));
    let var_1 = firstLeadingBit(~(~vec2<u32>(1u, 0u)));
    let var_2 = Struct_1(997f, arg_1);
    var var_3 = var_2;
    return var_2;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_u32(~countOneBits(~vec2<u32>(1u, 1u)), vec2<u32>(~_wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 43473u), vec3<u32>(38442u, 18592u, 43326u))), 31431u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1361f), arg_1, -abs(u_input.a) <= 1i)), true);
    let var_2 = func_2(~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-17752i, arg_0), ~arg_0, firstLeadingBit(arg_0), ~u_input.b.x), abs(u_input.b)), !all(select(vec4<bool>(true, var_1.b, var_1.b, var_1.b), select(vec4<bool>(var_1.b, var_1.b, false, true), vec4<bool>(var_1.b, false, true, var_1.b), true), arg_0 > 13091i)));
    let var_3 = _wgslsmith_add_u32(var_0.x ^ var_0.x, var_0.x);
    var var_4 = min(var_3, 0u);
    return func_2(arg_0, true);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = 36982i;
    var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(~max(_wgslsmith_mult_i32(20747i, u_input.b.x), select(0i, u_input.a, arg_2.b)), 2238i), 27870i);
    var_0 = 2711i & u_input.a;
    var_0 = select(16279i, u_input.b.x, arg_2.b);
    var var_1 = firstTrailingBit(vec3<u32>(3160u, ~1u, 43388u));
    return func_1(firstTrailingBit(u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(u_input.a, true).a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, -710f, 1486f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, arg_2.a, arg_0.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1504f, arg_2.a, arg_2.a)))))));
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = 584f;
    let var_3 = vec2<bool>(true, any(select(!vec4<bool>(false, true, true, arg_0.b), vec4<bool>(true, !var_1.b, true, true), !(!vec4<bool>(arg_0.b, var_1.b, true, var_0.b)))));
    let var_4 = func_1(max(u_input.a, _wgslsmith_clamp_i32(~u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(var_2 + var_2), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1371f), _wgslsmith_f_op_f32(-var_1.a), arg_0.a));
    return StorageBuffer(-751f, vec4<f32>(430f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-102f)) + _wgslsmith_div_f32(var_2, 1290f)), -195f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a)))), i32(-1i) * -u_input.b.x, vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(57476u, 11806u, 0u, 88781u), vec4<u32>(1u, 1u, 1u, 1u)) >> (1u % 32u), 79929u), vec4<i32>(_wgslsmith_add_i32(u_input.a << (~1u % 32u), 1i), _wgslsmith_mod_i32(-1i, _wgslsmith_sub_i32(-12380i, min(u_input.a, -2147483647i))), u_input.b.x, min(u_input.b.x, -5263i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1555f, true);
    var var_1 = var_0;
    var var_2 = vec3<bool>(!all(!(!vec3<bool>(var_1.b, false, var_0.b))), var_1.b, !var_0.b);
    var var_3 = var_0;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a)) - _wgslsmith_f_op_f32(trunc(var_0.a))), !(var_1.b && false));
    let x = u_input.a;
    s_output = func_4(func_3(func_1(-2147483647i, var_1.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1167f, -607f, var_4.a), vec3<f32>(506f, -4146f, -1000f)))))), ~(~30585u), var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(849f, var_3.a)))) * vec2<f32>(1408f, _wgslsmith_f_op_f32(round(var_1.a))))));
}

