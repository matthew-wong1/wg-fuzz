struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<u32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
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

var<private> global0: vec2<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: i32) -> bool {
    var var_0 = Struct_1(vec4<i32>(0i, -1i, arg_1.x, _wgslsmith_sub_i32(select(arg_1.x, 2147483647i, true) >> (~0u % 32u), u_input.b.x)), vec4<f32>(1718f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(731f)), 895f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-713f, _wgslsmith_f_op_f32(trunc(-1000f)), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-465f)))), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))))), _wgslsmith_dot_vec4_u32(max(vec4<u32>(abs(u_input.d), u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 71u), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a.x, 24646u), vec4<u32>(u_input.c.x, u_input.a.x, 89116u, u_input.c.x)), vec4<u32>(u_input.d, u_input.d, u_input.c.x, 1u))), ~vec4<u32>(u_input.a.x, ~69232u, countOneBits(u_input.c.x), 73443u)), _wgslsmith_f_op_f32(ceil(-1004f)));
    var var_1 = !((countOneBits(15282i) == -_wgslsmith_clamp_i32(arg_2, arg_0, -26811i)) && !(_wgslsmith_f_op_f32(-1475f + 1000f) != _wgslsmith_div_f32(188f, global0.x)));
    var_0 = Struct_1((vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, var_0.a.x), ~(-34810i), 11319i, -u_input.b.x) >> ((vec4<u32>(67991u, 1u, var_0.c, var_0.c) ^ ~vec4<u32>(var_0.c, var_0.c, var_0.c, 37369u)) % vec4<u32>(32u))) ^ vec4<i32>(_wgslsmith_div_i32(-1i, -2147483647i) << (~var_0.c % 32u), ~(arg_1.x | u_input.b.x), u_input.b.x, min(arg_0, 15888i) ^ -1435i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1730f - _wgslsmith_f_op_f32(-1136f - global0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1674f), _wgslsmith_f_op_f32(965f - _wgslsmith_f_op_f32(min(var_0.d, 1289f))), true)), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.x)))), -174f), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(trunc(2090f)))));
    let var_2 = Struct_4(Struct_3(u_input.a, Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-var_0.b), var_0.c, _wgslsmith_f_op_f32(var_0.b.x * 875f)), _wgslsmith_sub_u32(u_input.a.x, firstTrailingBit(29865u)), vec4<u32>(reverseBits(26972u), 13671u, _wgslsmith_mod_u32(var_0.c, u_input.c.x), var_0.c)), _wgslsmith_add_u32(27847u, 1u << (0u % 32u)), Struct_1(-arg_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, var_0.b.x, 861f)), firstLeadingBit(countOneBits(25488u)), -1573f), -112f), Struct_3(~_wgslsmith_clamp_vec2_u32(u_input.c.zz, countOneBits(vec2<u32>(var_0.c, var_0.c)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.c, var_0.c), u_input.c.yz)), Struct_2(Struct_1(select(vec4<i32>(1894i, arg_0, 0i, arg_0), vec4<i32>(2147483647i, arg_0, var_0.a.x, u_input.b.x), true), _wgslsmith_f_op_vec4_f32(var_0.b - var_0.b), ~u_input.c.x, 208f), 5375u & var_0.c, select(vec4<u32>(1u, var_0.c, 4294967295u, u_input.c.x), vec4<u32>(0u, var_0.c, var_0.c, 4294967295u), vec4<bool>(true, true, false, true)) | ~vec4<u32>(var_0.c, u_input.c.x, 76483u, u_input.d)), select(min(~u_input.d, _wgslsmith_div_u32(83312u, 57664u)), var_0.c, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(arg_0, u_input.b.x)) >= arg_1.x), Struct_1(-_wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_0.a.x, -1i, var_0.a.x), var_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, var_0.b.x, 400f) - _wgslsmith_f_op_vec4_f32(var_0.b * var_0.b)), ~reverseBits(1u), 1000f), _wgslsmith_f_op_f32(f32(-1f) * -518f)), Struct_1(var_0.a, var_0.b, 25636u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-556f, -215f)))));
    var_1 = false;
    return !all(vec4<bool>(true, true, true, true));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = Struct_5(true || func_3(20023i, reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b.x ^ ~u_input.b.x), Struct_1(firstLeadingBit(~(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), 1f, -2875f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-704f * global0.x) * _wgslsmith_f_op_f32(select(global0.x, -1140f, false)))), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-1837f * arg_0.x)))), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))), ~u_input.c.zy, Struct_4(Struct_3(select(u_input.c.zz << (u_input.a % vec2<u32>(32u)), vec2<u32>(75745u, u_input.c.x), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), Struct_2(Struct_1(vec4<i32>(u_input.b.x, 1i, -19488i, u_input.b.x), vec4<f32>(1000f, 124f, global0.x, arg_0.x), u_input.a.x, 1888f), u_input.d, min(vec4<u32>(u_input.a.x, 4294967295u, u_input.c.x, u_input.d), vec4<u32>(64258u, u_input.d, u_input.c.x, 0u))), u_input.d, Struct_1(firstTrailingBit(vec4<i32>(0i, u_input.b.x, -17855i, u_input.b.x)), vec4<f32>(arg_0.x, global0.x, 1237f, arg_0.x), ~u_input.c.x, arg_0.x), _wgslsmith_f_op_f32(sign(1f))), Struct_3(vec2<u32>(~u_input.a.x, u_input.d << (u_input.d % 32u)), Struct_2(Struct_1(vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x), vec4<f32>(346f, 310f, -2113f, -164f), 114375u, 654f), u_input.c.x, abs(vec4<u32>(u_input.c.x, 25223u, 29089u, u_input.a.x))), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), Struct_1(~vec4<i32>(u_input.b.x, u_input.b.x, -64013i, 1i), vec4<f32>(global0.x, global0.x, arg_0.x, -1420f), ~u_input.a.x, _wgslsmith_f_op_f32(897f * -1109f)), _wgslsmith_f_op_f32(select(-1931f, -716f, true))), Struct_1(vec4<i32>(19799i, 1i, -34575i, u_input.b.x << (27875u % 32u)), vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.x, 427f)), _wgslsmith_f_op_f32(-357f - -1888f), -241f, -126f), ~u_input.c.x >> (u_input.a.x % 32u), 1f)));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-542f)))), global0.x);
    var var_2 = var_1;
    var var_3 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1279f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -433f), -255f)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = max(reverseBits(vec3<u32>(1628u, 0u, countOneBits(arg_1.b))), u_input.c);
    let var_1 = arg_1.a.b.yy;
    let var_2 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_1.a.b.xy)))))));
    let var_3 = arg_1.c.x;
    global0 = vec2<f32>(548f, 2154f);
    return _wgslsmith_div_f32(1148f, _wgslsmith_f_op_f32(step(global0.x, arg_1.a.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.b.x, 61193i, u_input.b.x), Struct_2(Struct_1(vec4<i32>(0i, 51337i, 2147483647i, u_input.b.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x), 52549u, global0.x), u_input.d, vec4<u32>(0u, 1u, u_input.c.x, u_input.a.x)), 0u)) - global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), -1291f)) * 1283f));
    let x = u_input.a;
    s_output = StorageBuffer(-80020i);
}

