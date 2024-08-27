struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: bool;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<bool> {
    let var_0 = min(~(~(~(vec4<u32>(u_input.a.x, u_input.b, 15035u, u_input.b) >> (vec4<u32>(4294967295u, 47626u, 4294967295u, 1u) % vec4<u32>(32u))))), abs(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, arg_1.c, 65283u), vec4<u32>(11288u, 0u, arg_1.c, 0u)), select(vec4<u32>(60010u, u_input.c, 4294967295u, 4294967295u), ~vec4<u32>(u_input.c, 19417u, arg_1.c, 1u), true))));
    var var_1 = firstLeadingBit(var_0.x);
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) * _wgslsmith_f_op_f32(-var_2.b)), -2143f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, -319f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(536f, 486f)) - _wgslsmith_div_vec2_f32(vec2<f32>(407f, -128f), vec2<f32>(var_2.b, -2274f))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, arg_1.b))))))));
    return vec2<bool>(!all(!select(arg_2.yz, vec2<bool>(false, arg_0.x), true)), all(arg_2));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global1 = true;
    var var_0 = firstLeadingBit(~24135u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, -1484f) * vec2<f32>(124f, 274f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(861f, -1947f)), select(func_3(vec2<bool>(true, true), Struct_1(9427i, 1984f, arg_1), vec3<bool>(true, true, true)), vec2<bool>(true, all(vec3<bool>(false, false, true))), !any(vec2<bool>(false, false))))));
    let var_2 = arg_0;
    let var_3 = Struct_1(var_2.a, var_1.x, var_2.c | abs(1u));
    return Struct_1(2147483647i & _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(arg_0.a, 9189i, u_input.e, 1i), vec4<i32>(29424i, var_2.a, -2147483647i, var_3.a) << (vec4<u32>(0u, var_2.c, 1u, var_3.c) % vec4<u32>(32u))), firstLeadingBit(reverseBits(vec4<i32>(var_2.a, 34511i, var_3.a, 1i)))), _wgslsmith_f_op_f32(-481f - var_3.b), 42392u);
}

fn func_1(arg_0: u32) -> f32 {
    global0 = !any(!vec4<bool>(true, true, true, all(vec4<bool>(false, true, true, false))));
    global1 = false;
    var var_0 = func_2(Struct_1(-13161i, _wgslsmith_f_op_f32(f32(-1f) * -241f), arg_0), ~(~1u));
    global1 = select(true, false, any(select(vec4<bool>(func_3(vec2<bool>(true, true), Struct_1(0i, var_0.b, var_0.c), vec3<bool>(false, true, true)).x, true, false, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false), all(vec4<bool>(true, true, true, true)))));
    var var_1 = any(!select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true));
    return -2008f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(!(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))));
    var var_0 = vec2<i32>(-2165i, -4403i);
    var var_1 = var_0.x | u_input.e;
    let var_2 = Struct_1(firstTrailingBit(1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(firstLeadingBit(_wgslsmith_mult_u32(30677u, 85093u)))) - 1909f), countOneBits(abs(u_input.a.x)));
    global0 = !(~var_2.c > var_2.c);
    let var_3 = func_2(Struct_1(countOneBits(var_2.a), _wgslsmith_f_op_f32(sign(var_2.b)), 19820u), ~(abs(u_input.d) | ~min(u_input.b, u_input.a.x)));
    let var_4 = Struct_1(var_3.a, var_3.b, _wgslsmith_sub_u32(4294967295u, select(~(~var_3.c), var_3.c, func_2(Struct_1(var_2.a, var_2.b, var_3.c), 82128u).c > ~var_3.c)));
    global1 = any(vec2<bool>(true, true));
    var var_5 = ~(min(vec3<u32>(max(4294967295u, 9005u), ~4294967295u, var_2.c), min(~vec3<u32>(var_3.c, u_input.c, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.c, 1u), vec3<u32>(u_input.d, u_input.b, u_input.b)))) ^ _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.c, 32712u, var_2.c), vec3<u32>(69064u, var_3.c, u_input.d), vec3<u32>(70651u, var_3.c, var_2.c)), min(~vec3<u32>(var_2.c, var_3.c, var_3.c), ~vec3<u32>(u_input.a.x, var_3.c, var_4.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -392f) - var_3.b)))), _wgslsmith_mult_vec2_u32(u_input.a, ~(~reverseBits(vec2<u32>(1u, u_input.c)))), var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - 751f)));
}

