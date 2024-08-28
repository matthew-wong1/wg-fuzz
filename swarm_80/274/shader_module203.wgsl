struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<u32>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> vec4<u32> {
    let var_0 = !(!(true && all(vec2<bool>(true, true))));
    let var_1 = false;
    global0 = ~u_input.a;
    global0 = u_input.a;
    let var_2 = _wgslsmith_mult_vec2_u32(~firstTrailingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 21120u)), firstTrailingBit(vec2<u32>(4294967295u, 52882u)))), min(~(~vec2<u32>(38826u, 49906u)), ~firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(4698u, 1u), vec2<u32>(1u, 0u)))));
    return _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, var_2.x, 107857u, _wgslsmith_mod_u32(var_2.x, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(abs(~var_2.x), 0u, var_2.x, _wgslsmith_dot_vec2_u32(var_2, firstLeadingBit(vec2<u32>(4294967295u, 20947u)))), countOneBits(vec4<u32>(0u, select(61505u, 0u, var_0), 0u, 1u))));
}

fn func_3() -> f32 {
    global0 = ~(1u ^ _wgslsmith_mod_u32(1u & u_input.a, u_input.a)) ^ 1u;
    return _wgslsmith_f_op_f32(min(301f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-879f + -1063f)), 1459f, min(1u, abs(52565u)) != u_input.a))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(arg_1 + 368f);
    var var_1 = arg_3;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), -1957f)));
    let var_2 = arg_3;
    return min(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(arg_3.c, arg_3.c), var_1.e, 1u), arg_2.c), countOneBits(arg_3.c));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    global0 = arg_3.c.x;
    var_0 = arg_3;
    var var_1 = arg_3.d.x;
    var var_2 = -525f;
    return Struct_1(var_0.a, (false & (_wgslsmith_f_op_f32(-469f + arg_1) >= _wgslsmith_f_op_f32(-728f * arg_1))) & any(var_0.a), var_0.c, var_0.d ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(var_0.d.x, var_0.d.x), firstLeadingBit(-1i)), _wgslsmith_div_vec2_i32(arg_3.d, var_0.d), min(vec2<i32>(-13250i, arg_3.d.x), ~var_0.d)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<u32>(u_input.a, 1u), -358f, ~_wgslsmith_mult_vec4_u32(select(func_1(), countOneBits(vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), false), (vec4<u32>(u_input.a, u_input.a, u_input.a, 44615u) << (vec4<u32>(15381u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) & func_2(848f, -1088f, Struct_1(vec3<bool>(false, true, true), false, vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec2<i32>(-2147483647i, -1i), 4294967295u), Struct_1(vec3<bool>(true, false, false), false, vec4<u32>(30341u, 4294967295u, 0u, 49780u), vec2<i32>(6198i, 1i), 1u))), Struct_1(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), true), vec3<bool>(u_input.a > 4410u, all(vec2<bool>(false, true)), true), true), true, ~vec4<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), u_input.a, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1751u, u_input.a), vec3<u32>(23720u, 77034u, 51520u))), min(~vec2<i32>(20372i, 39672i), vec2<i32>(-8845i, -1i)) >> (~min(vec2<u32>(u_input.a, 23425u), vec2<u32>(40779u, 4294967295u)) % vec2<u32>(32u)), ~1u));
    var var_1 = max(_wgslsmith_div_u32(func_4(var_0.c.yy, _wgslsmith_f_op_f32(-224f + _wgslsmith_f_op_f32(min(-535f, 1915f))), func_2(_wgslsmith_f_op_f32(sign(-935f)), 778f, Struct_1(var_0.a, true, vec4<u32>(u_input.a, 0u, u_input.a, 1u), var_0.d, 0u), func_4(var_0.c.xz, -1457f, vec4<u32>(var_0.e, 1u, u_input.a, 1u), var_0)), var_0).c.x, abs(~9897u)), _wgslsmith_mult_u32(34848u >> (firstLeadingBit(var_0.e) % 32u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(11561u, abs(u_input.a), abs(u_input.a)), ~(~91260u))));
    global0 = 3551u;
    let var_2 = func_4(var_0.c.ww, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -830f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(530f * 691f)))), reverseBits(func_2(-951f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-365f, -597f))), Struct_1(var_0.a, !var_0.a.x, var_0.c, min(var_0.d, vec2<i32>(-1i, var_0.d.x)), ~var_0.e), var_0)), Struct_1(vec3<bool>(-var_0.d.x > 6200i, !(!var_0.b), -var_0.d.x != (1i & var_0.d.x)), true, var_0.c ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.e, 1u, 14701u, 22981u), vec4<u32>(var_0.e, u_input.a, var_0.e, 28116u)), countOneBits(abs(_wgslsmith_add_vec2_i32(var_0.d, var_0.d))), 60368u));
    let var_3 = abs(~_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(0i, 0i, var_0.d.x)), -vec3<i32>(var_0.d.x, var_0.d.x, 2147483647i), vec3<i32>(var_0.d.x, 1i, var_0.d.x))) ^ vec3<i32>(_wgslsmith_div_i32(var_0.d.x ^ -var_0.d.x, var_2.d.x), abs(43709i), _wgslsmith_add_i32(-80442i, 0i));
    var var_4 = var_0.a.x;
    let var_5 = var_0;
    let var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(321f, -1293f), vec2<f32>(141f, -1842f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-938f, 1794f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-869f, -305f), vec2<f32>(-692f, 1538f), var_2.a.xz))) * vec2<f32>(744f, -1000f))));
    let var_7 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(abs(vec2<u32>(~0u, _wgslsmith_div_u32(var_5.e, 0u))), -117f, ~(~vec4<u32>(1u, 4294967295u, u_input.a, 0u)), Struct_1(vec3<bool>(!var_7.b, !var_7.b, false), false, countOneBits(abs(var_2.c)), vec2<i32>(var_0.d.x, ~71390i), 36340u)).d, vec4<u32>(max(reverseBits(max(0u, 0u)), ~4294967295u << ((73180u | var_2.c.x) % 32u)), var_5.c.x, _wgslsmith_dot_vec4_u32(var_2.c, ~vec4<u32>(var_7.c.x, 57340u, 4294967295u, 0u)) & 6545u, ~_wgslsmith_div_u32(_wgslsmith_mod_u32(32717u, 10364u), ~1u)), abs(vec2<i32>(-var_0.d.x >> (var_5.c.x % 32u), i32(-1i) * -4946i)), countOneBits(~(~min(4294967295u, var_0.c.x))), var_0.c.x);
}

