struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, i32(-2147483648), 1343i);

var<private> global1: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(38520u, 71243u, 12294u), vec3<u32>(4294967295u, 41800u, 16336u), vec3<u32>(0u, 33518u, 14166u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(17848u, 18797u, 4294967295u));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_0.a)), _wgslsmith_f_op_f32(-arg_0.a)))), -688f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(954f, arg_0.a)) * _wgslsmith_f_op_f32(arg_0.a + -339f))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)) - 1000f), 1000f, -876f))), true));
    let var_1 = ~u_input.b;
    let var_2 = min(vec4<u32>(u_input.c, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c) | vec2<u32>(u_input.c, u_input.c))), u_input.c << (6857u % 32u), ~max(u_input.c, 0u)), ~_wgslsmith_div_vec4_u32(~select(vec4<u32>(4294967295u, u_input.c, u_input.c, 35303u), vec4<u32>(u_input.c, 82262u, 7399u, 0u), vec4<bool>(true, true, false, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, 142786u, 16262u) ^ vec4<u32>(884u, u_input.c, u_input.c, 36357u), select(vec4<u32>(u_input.c, 0u, u_input.c, u_input.c), vec4<u32>(u_input.c, 1u, u_input.c, 4294967295u), true))));
    global1 = array<vec3<u32>, 7>();
    let var_3 = all(select(vec4<bool>(false, u_input.b > 1i, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_0.a > arg_0.a, true, var_2.x >= 1u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true, true, true)));
    return 0i;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = select(!vec3<bool>(global0.x <= min(arg_0.x, global0.x), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), true), vec3<bool>(true, true, true), vec3<bool>(true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1516f) + arg_1.a) != -1112f));
    global0 = -arg_0.wzz;
    global0 = vec3<i32>(arg_0.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~arg_0.yz, -arg_0.wz), global0.xy) << (select(_wgslsmith_dot_vec2_u32(vec2<u32>(16756u, 1u) ^ vec2<u32>(u_input.c, 0u), vec2<u32>(1u, 10535u) & vec2<u32>(u_input.c, 33287u)), u_input.c, var_0.x) % 32u), -2147483647i);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(-993f, -872f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + arg_1.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1316f - _wgslsmith_f_op_f32(trunc(-798f))) + -693f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-arg_2.a))));
    var var_2 = vec3<i32>(1i, abs(_wgslsmith_add_i32(2147483647i, global0.x)), _wgslsmith_sub_i32(u_input.b, func_3(arg_1)));
    return any(var_0);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(-200f);
    var var_1 = vec4<bool>(any(vec3<bool>(u_input.c <= u_input.c, true, var_0.a > var_0.a)) && select(true, all(vec4<bool>(false, true, false, false)) && (u_input.c != 25438u), true), !func_2(~select(vec4<i32>(3253i, u_input.b, -63226i, -2147483647i), vec4<i32>(global0.x, global0.x, global0.x, -8860i), true), arg_1, Struct_1(-345f)), all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(select(true, false, false), true), func_2(vec4<i32>(global0.x, global0.x, 0i, -3246i) >> (arg_0 % vec4<u32>(32u)), Struct_1(arg_1.a), arg_1))), true);
    let var_2 = arg_1;
    var_0 = Struct_1(var_0.a);
    let var_3 = arg_1;
    return vec3<bool>(false, var_1.x, !any(select(!vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, var_1.x), !var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!(true & any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, u_input.d != global0.x, true), true)));
    let var_1 = abs(vec4<i32>(~38462i, -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.d, -1i), vec4<i32>(2147483647i, 0i, global0.x, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(-13675i, u_input.b, u_input.d, -6122i), vec4<i32>(global0.x, 34176i, u_input.d, -1i))), global0.x, -1i));
    var_0 = vec2<bool>(all(!vec3<bool>(true, var_0.x, any(vec4<bool>(var_0.x, var_0.x, false, var_0.x)))), all(func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, 57120u), ~vec4<u32>(u_input.c, u_input.c, 29844u, 0u)), Struct_1(1f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1475f, 124f, 741f) * vec3<f32>(755f, -797f, -1000f)))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))), var_0.x))));
    var var_3 = ~u_input.c;
    var var_4 = vec4<bool>(all(!(!func_1(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), Struct_1(var_2.x)).zx)), any(select(vec4<bool>(false, true, !var_0.x, func_1(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), Struct_1(var_2.x)).x), !select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true)), !(!vec4<bool>(var_0.x, false, true, var_0.x)))), u_input.c == u_input.c, !var_0.x);
    var var_5 = all(vec3<bool>(func_1(vec4<u32>(~u_input.c, _wgslsmith_mod_u32(u_input.c, 0u), firstLeadingBit(1u), u_input.c), Struct_1(_wgslsmith_f_op_f32(-var_2.x))).x, var_0.x, !var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(firstLeadingBit(~abs(vec2<u32>(32547u, 15763u))), ~abs(countOneBits(vec2<u32>(u_input.c, 0u)))), var_2.x, vec4<i32>(u_input.b, _wgslsmith_div_i32(-6495i << (u_input.c % 32u), 1i), select(abs(~(-21293i)), global0.x, all(vec3<bool>(true, true, false))), -1i), 829f);
}

