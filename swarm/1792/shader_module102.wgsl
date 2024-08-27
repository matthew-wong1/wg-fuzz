struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec4<u32> {
    var var_0 = Struct_1(vec4<u32>(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, 59218u, 16327u), _wgslsmith_mult_vec4_u32(arg_1.a, vec4<u32>(u_input.b, 0u, u_input.b, global1.c))), 1u, arg_0), u_input.b, 67259u), arg_1.b, reverseBits(global1.a.x));
    global1 = Struct_1(global1.a ^ vec4<u32>(~7481u, _wgslsmith_mod_u32(~global1.a.x, abs(4301u)), ~abs(u_input.b), 1u), var_0.b || !(!all(vec2<bool>(arg_2, arg_1.b))), 1u >> (_wgslsmith_mult_u32(abs(_wgslsmith_clamp_u32(0u, 65401u, 4294967295u)), ~(arg_1.c >> (u_input.b % 32u))) % 32u));
    global1 = arg_1;
    let var_1 = firstTrailingBit(vec2<u32>(u_input.c.x, min(~60528u, ~abs(52760u))));
    var var_2 = select(vec2<bool>(var_0.b, arg_2), select(vec2<bool>(!(true && global1.b), all(vec2<bool>(true, true))), vec2<bool>(all(vec2<bool>(arg_1.b, true)) & (false && arg_1.b), ~global1.a.x != 55486u), true), !vec2<bool>(arg_2, !arg_2));
    return ~(~vec4<u32>(_wgslsmith_dot_vec4_u32(global1.a | vec4<u32>(arg_0, 4294967295u, 49522u, 1u), _wgslsmith_add_vec4_u32(global1.a, global1.a)), ~arg_1.a.x, abs(global1.a.x), 26459u));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    global0 = ~0u;
    global0 = _wgslsmith_dot_vec4_u32(global1.a, arg_0);
    global1 = arg_1;
    let var_0 = arg_1;
    global1 = arg_1;
    return Struct_1(reverseBits(func_3(abs(0u), Struct_1(vec4<u32>(global1.a.x, global1.a.x, u_input.c.x, var_0.a.x), var_0.b, 4294967295u), !var_0.b, -55560i)) >> (arg_1.a % vec4<u32>(32u)), var_0.b, 4294967295u);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(global1.a, _wgslsmith_div_f32(700f, arg_0) > arg_0, 4294967295u);
    let var_1 = func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, countOneBits(98677u), arg_2.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, global1.a.x, 42512u, 0u), arg_1.a)), arg_1.a & vec4<u32>(func_2(vec4<u32>(1u, arg_1.c, arg_1.c, 1u), Struct_1(vec4<u32>(4294967295u, global1.a.x, u_input.b, 4294967295u), global1.b, var_0.c)).c, global1.a.x, 36328u, abs(57101u))), func_2(min(select(vec4<u32>(arg_1.a.x, arg_1.a.x, global1.a.x, 4294967295u), countOneBits(global1.a), !var_0.b), func_2(reverseBits(arg_1.a), arg_1).a), arg_2));
    var var_2 = _wgslsmith_mult_u32(arg_1.a.x, _wgslsmith_sub_u32(4294967295u | var_0.a.x, (var_0.a.x ^ var_1.a.x) | 23828u));
    var var_3 = select(vec4<bool>(true, true, arg_1.b, var_1.b), !(!vec4<bool>(var_1.b, all(vec2<bool>(var_0.b, var_1.b)), true, u_input.d <= 56643i)), false);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -868f));
    return arg_2;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global1 = func_2(~(~reverseBits(vec4<u32>(1u, 16973u, 1u, 0u))), arg_2);
    let var_0 = arg_1.x;
    let var_1 = vec4<bool>((i32(-1i) * -_wgslsmith_div_i32(u_input.a, u_input.d)) >= -1i, (firstLeadingBit(_wgslsmith_clamp_u32(arg_2.a.x, 47439u, 1u)) ^ 1u) > 24942u, !(~_wgslsmith_sub_i32(-15045i, -2147483647i) < _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_0.x, -2147483647i), u_input.d)), arg_2.b);
    let var_2 = arg_2;
    global0 = 4294967295u;
    return func_2(~(~_wgslsmith_mult_vec4_u32(min(vec4<u32>(var_2.c, 1758u, u_input.b, 13610u), vec4<u32>(arg_2.c, 1u, 27427u, 131034u)), firstTrailingBit(vec4<u32>(var_2.a.x, arg_2.a.x, global1.a.x, u_input.b)))), var_2);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<bool>) -> i32 {
    var var_0 = arg_1.x;
    let var_1 = func_5(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -27786i), vec2<i32>(-1i, arg_0)), 0i, i32(-1i) * -1i), vec4<i32>(-1i, u_input.a >> (u_input.c.x % 32u), arg_0, arg_0))), vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_div_f32(arg_1.x, 1891f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(357f * 323f)), -909f)), func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)), -1781f))), Struct_1(global1.a, true, max(~24391u, 9027u)), func_2(_wgslsmith_div_vec4_u32(max(global1.a, global1.a), ~global1.a), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, global1.c, 0u, 4294967295u), vec4<u32>(u_input.c.x, 1u, global1.c, u_input.c.x)), global1.b != false, global1.c))), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), 391f), func_4(-363f, func_4(arg_1.x, func_2(global1.a, Struct_1(vec4<u32>(29945u, global1.a.x, u_input.c.x, u_input.c.x), arg_2.x, u_input.c.x)), Struct_1(global1.a, false, global1.a.x)), Struct_1(~vec4<u32>(75652u, 1u, 52897u, 1u), arg_2.x, ~u_input.c.x)), func_2(global1.a, func_2(~global1.a, Struct_1(global1.a, arg_2.x, u_input.b)))));
    let var_2 = ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(func_3(select(1u, u_input.b, global1.b), Struct_1(vec4<u32>(u_input.b, u_input.b, global1.c, 19604u), global1.b, 79732u), true, u_input.d << (102287u % 32u)).x, 0u), ~global1.a.x, ~global1.c);
    var var_3 = Struct_1(global1.a, _wgslsmith_f_op_f32(-arg_1.x) >= arg_1.x, var_2);
    var_3 = var_1;
    return max(arg_0, -23963i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a, false, u_input.b & _wgslsmith_mult_u32(u_input.b, ~u_input.c.x >> (global1.a.x % 32u)));
    var var_0 = ~max(select(vec3<i32>(u_input.a, u_input.d, 5140i), abs(vec3<i32>(-1i, u_input.d, u_input.a)), vec3<bool>(false, true, global1.b)), (vec3<i32>(-1i, u_input.d, u_input.a) | vec3<i32>(u_input.a, u_input.d, u_input.a)) >> (vec3<u32>(global1.a.x, u_input.b, u_input.b) % vec3<u32>(32u))) | vec3<i32>(1i, _wgslsmith_div_i32(0i, -(~u_input.d)), func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.a, 29469i, u_input.d), ~vec4<i32>(u_input.a, u_input.a, -2265i, 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2111f, -1073f, -1326f, -768f) - vec4<f32>(397f, 1000f, 539f, 773f))), !(!vec4<bool>(global1.b, false, true, global1.b))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-218f, 724f, 1553f))))))));
    var_0 = ~vec3<i32>(min(~(-46151i), 2147483647i), ~3894i, ~u_input.a);
    var var_2 = Struct_1(global1.a, all(!select(!vec2<bool>(global1.b, false), vec2<bool>(true, true), u_input.c.x <= 1u)), ~firstLeadingBit(~1u >> (_wgslsmith_sub_u32(1u, global1.c) % 32u)));
    let var_3 = -1027f;
    let var_4 = Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.a.x, ~global1.a.x, 1u, firstTrailingBit(u_input.b)), func_4(_wgslsmith_f_op_f32(min(-1338f, var_3)), Struct_1(global1.a, true, u_input.c.x), func_5(vec4<i32>(u_input.a, u_input.d, var_0.x, -1i), vec3<f32>(var_3, -1136f, var_3), Struct_1(vec4<u32>(63084u, 0u, var_2.a.x, global1.c), false, u_input.c.x), Struct_1(global1.a, var_2.b, 45675u))).a), vec4<u32>(_wgslsmith_mult_u32(1u, 10529u), ~1u, global1.a.x, ~33856u)), !(!(var_2.b & (-9612i < u_input.d))), func_5(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(11977i, var_0.x, var_0.x, 10053i), _wgslsmith_mult_vec4_i32(vec4<i32>(-13459i, var_0.x, 1i, 1i), vec4<i32>(var_0.x, 2147483647i, -1i, var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_1.x, var_1.x))))), func_5(~_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 4562i, var_0.x, -2147483647i), vec4<i32>(var_0.x, u_input.d, 61593i, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -874f, var_1.x) * vec3<f32>(1000f, -1122f, 976f))), func_4(_wgslsmith_f_op_f32(ceil(var_3)), Struct_1(vec4<u32>(var_2.a.x, 0u, 1u, u_input.c.x), true, 4294967295u), func_4(var_3, Struct_1(vec4<u32>(u_input.b, global1.a.x, 42917u, 0u), global1.b, 78337u), Struct_1(global1.a, var_2.b, var_2.c))), Struct_1(~vec4<u32>(51306u, 1u, u_input.c.x, var_2.c), !global1.b, 0u)), func_2(abs(vec4<u32>(u_input.c.x, var_2.c, global1.a.x, 14115u)), Struct_1(var_2.a, false, 0u))).a.x);
    var var_5 = select(!select(!select(vec2<bool>(var_4.b, global1.b), vec2<bool>(var_2.b, false), false), select(select(vec2<bool>(false, false), vec2<bool>(var_4.b, var_4.b), vec2<bool>(var_2.b, false)), select(vec2<bool>(var_2.b, var_2.b), vec2<bool>(false, var_2.b), vec2<bool>(var_4.b, false)), vec2<bool>(false, global1.b)), true), select(vec2<bool>(false, false), vec2<bool>(true, any(vec4<bool>(var_4.b, false, false, false))), any(!(!vec2<bool>(global1.b, var_4.b)))), vec2<bool>(~(~global1.a.x) > u_input.c.x, var_4.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0.x & _wgslsmith_mod_i32(var_0.x, u_input.a), 0i, 4163i), 0u);
}

