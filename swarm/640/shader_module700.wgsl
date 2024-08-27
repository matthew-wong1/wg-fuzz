struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 51733i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> bool {
    global0 = abs(2147483647i);
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_0)))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(438f, arg_0, -1758f, arg_0) * vec4<f32>(2227f, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(arg_0, -1000f, 935f, arg_0), vec4<bool>(false, false, false, true))))), 401f), Struct_3(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), ~vec4<i32>(-1i, u_input.a, u_input.a, u_input.a))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(47331u, 23111u, 48901u, 2582u), vec4<u32>(4294967295u, 0u, 54487u, 0u)), Struct_2(-358f, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(963f, -1641f, -121f, 236f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) - 1004f)), arg_0), Struct_3(abs(~(~vec4<i32>(u_input.a, -1i, u_input.a, u_input.a))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(108458u, 36325u, 19303u, 1u), vec4<u32>(1u, 1u, 71168u, 4294967295u)) >> (select(~41426u, ~0u, false) % 32u), Struct_2(_wgslsmith_f_op_f32(-arg_0), Struct_1(vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)) - _wgslsmith_f_op_f32(exp2(arg_0)))));
    global0 = 0i;
    let var_1 = Struct_2(var_0.c.c.a, var_0.b.c.b, var_0.c.c.b.a.x);
    global0 = 17517i;
    return true & any(vec4<bool>(true, true, true, true));
}

fn func_2() -> Struct_2 {
    let var_0 = countOneBits(select(~(~_wgslsmith_mod_u32(4294967295u, 4294967295u)), 22515u, !(!any(vec2<bool>(false, true)))));
    let var_1 = select(vec4<bool>(func_3(-767f), true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(false, false, false, true)), true), vec4<bool>(true, true, true, true)), !vec4<bool>(var_0 != var_0, true, all(vec3<bool>(false, false, true)), func_3(1021f)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), true, false), true & !any(vec4<bool>(false, false, false, true))));
    global0 = _wgslsmith_mod_i32(~(i32(-1i) * -1i), -15319i);
    global0 = _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(abs(2147483647i), max(-3015i, u_input.a))) & ~(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(31337i, 0i))), vec2<i32>(i32(-1i) * -u_input.a, 2147483647i));
    global0 = u_input.a;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(976f, _wgslsmith_f_op_f32(1063f + -1027f)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1973f), _wgslsmith_f_op_f32(-351f - 334f), -699f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-234f * 638f), _wgslsmith_f_op_f32(f32(-1f) * -1384f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1406f, -220f))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> i32 {
    var var_0 = Struct_4(func_2(), Struct_3(vec4<i32>(u_input.a, 33341i, u_input.a, -(~2147483647i)), min(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.x, arg_1.x, 1u, 1u), abs(vec4<u32>(arg_1.x, arg_1.x, 71760u, arg_1.x))), arg_1.x), Struct_2(269f, func_2().b, _wgslsmith_f_op_f32(f32(-1f) * -770f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.a.x, arg_0.a.x))) * -688f)), Struct_3(vec4<i32>(min(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 20380i, u_input.a), vec3<i32>(u_input.a, 53704i, 14468i))), abs(10480i ^ u_input.a), u_input.a ^ ~(-1614i), _wgslsmith_mult_i32(~u_input.a, countOneBits(-2664i))), 80800u, func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1699f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_1 = ~var_0.b.b;
    let var_2 = vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(sign(-586f)), _wgslsmith_div_f32(-1433f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-868f)), 706f))));
    var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.c.c - -895f))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, var_0.b.d, var_0.a.b.a.x, -153f) + vec4<f32>(1000f, -1395f, arg_0.a.x, 1372f)) - _wgslsmith_f_op_vec4_f32(-arg_0.a))), var_2.x), Struct_3(_wgslsmith_sub_vec4_i32(var_0.b.a << (~vec4<u32>(106781u, var_0.c.b, 10913u, 0u) % vec4<u32>(32u)), var_0.c.a >> (_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 0u, arg_1.x, 1u), vec4<u32>(1u, var_0.b.b, 99108u, 5025u)) % vec4<u32>(32u))), _wgslsmith_add_u32(_wgslsmith_mult_u32(~4294967295u, arg_1.x << (11324u % 32u)), ~29208u), Struct_2(784f, arg_0, _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, 254f), _wgslsmith_f_op_f32(select(arg_0.a.x, 652f, false)))), _wgslsmith_f_op_f32(-func_2().a)), Struct_3(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(var_0.c.a, var_0.c.a), vec4<i32>(u_input.a, var_0.c.a.x, 68859i, firstLeadingBit(u_input.a))), var_0.c.b, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - var_0.b.d), Struct_1(_wgslsmith_f_op_vec4_f32(var_0.b.c.b.a + vec4<f32>(var_0.a.a, 994f, -1000f, -677f))), var_0.c.c.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(129f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a));
    return select(22760i, 0i, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(311f, 967f, -653f, 335f)))), vec3<u32>(~26357u, 24170u, 1u));
    let var_0 = -(max(reverseBits(10797i), -64830i) << (~4294967295u % 32u));
    global0 = var_0;
    var var_1 = func_2();
    global0 = select(min(28857i, _wgslsmith_mod_i32(var_0, var_0 << (25307u % 32u))), firstLeadingBit(34825i), false);
    global0 = u_input.a;
    let var_2 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, 27231i);
}

