struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-815f, 1299f, 1581f, -1155f, 312f, 1157f, 1000f, -536f, -517f, -1503f, 755f, 635f, 857f, -417f, -1395f, -2695f, 1348f, 428f, -1470f, 493f, -456f, -195f, 1000f, -369f, -160f, -1000f, 1000f);

var<private> global1: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(1396f, 671f, 691f), vec3<f32>(402f, -1346f, 1064f), vec3<f32>(-2443f, -1033f, 441f), vec3<f32>(966f, 161f, 1000f), vec3<f32>(1206f, -1177f, -1274f), vec3<f32>(-2378f, -1000f, 281f), vec3<f32>(-634f, -1041f, -488f), vec3<f32>(-1000f, 2057f, -166f), vec3<f32>(1476f, 1108f, 712f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> f32 {
    global0 = array<f32, 27>();
    let var_0 = -430f;
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - var_0)), -1282f, !(!(all(vec4<bool>(true, true, false, true)) & true))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>) -> u32 {
    global1 = array<vec3<f32>, 9>();
    let var_0 = !select(select(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), arg_1, vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)), select(select(arg_1, vec4<bool>(false, false, arg_1.x, arg_1.x), vec4<bool>(false, false, arg_1.x, arg_1.x)), arg_1, arg_1), any(arg_1.ww)), !(!(!vec4<bool>(arg_1.x, arg_1.x, true, false))), arg_1);
    global1 = array<vec3<f32>, 9>();
    return firstLeadingBit(_wgslsmith_dot_vec3_u32(~(select(vec3<u32>(u_input.a.x, u_input.a.x, 40583u), u_input.a, false) & abs(vec3<u32>(u_input.a.x, u_input.a.x, 1u))), u_input.a));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2;
    var var_1 = arg_2.d;
    var_0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.b * var_0.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 27u)], -706f, -722f, global0[_wgslsmith_index_u32(var_0.e.x, 27u)])) * _wgslsmith_div_vec4_f32(arg_2.b, var_0.b))))), arg_2.c, _wgslsmith_div_i32(arg_2.c.x, 721i), vec2<u32>(_wgslsmith_mult_u32(~var_0.e.x, (u_input.a.x << (arg_2.e.x % 32u)) << (u_input.a.x % 32u)), func_3(arg_1, vec4<bool>(true, arg_2.a, var_0.a, true)) ^ ~4294967295u));
    global0 = array<f32, 27>();
    let var_2 = arg_2;
    return func_3(arg_1, !(!select(vec4<bool>(false, arg_2.a, true, true), vec4<bool>(false, arg_0, var_2.a, true), var_2.a))) | (_wgslsmith_sub_u32(0u, var_2.e.x) | 57950u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 4294967295u;
    let var_1 = _wgslsmith_mod_i32(abs(-(~(-arg_1.d))), i32(-1i) * -_wgslsmith_mult_i32(~arg_1.c.x, _wgslsmith_add_i32(arg_1.c.x, -2147483647i)));
    global0 = array<f32, 27>();
    var var_2 = vec4<u32>(arg_0.e.x, reverseBits(1u), ~u_input.a.x, u_input.a.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1139f * _wgslsmith_f_op_f32(func_1())) + -920f), 1213f, _wgslsmith_div_f32(-1000f, 1f), -619f);
    global1 = array<vec3<f32>, 9>();
    var var_1 = func_4(Struct_1(all(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), vec4<f32>(-317f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1619f - var_0.x))), var_0.x, -131f), vec2<i32>(~abs(10920i), 1i), 34411i, ~u_input.a.yz), Struct_1(!all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-556f, var_0.x, -1047f, 1571f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], -914f)))), vec2<i32>(~1i, _wgslsmith_add_i32(1i, -27765i)), _wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 27136i, 6339i, -2147483647i), vec4<i32>(2147483647i, -13822i, -35508i, -27251i)), ~(-36824i)), vec2<u32>(~func_2(false, vec4<i32>(0i, -19339i, -56426i, 1i), Struct_1(true, vec4<f32>(var_0.x, global0[_wgslsmith_index_u32(14094u, 27u)], var_0.x, -982f), vec2<i32>(2147483647i, -1738i), -26588i, vec2<u32>(u_input.a.x, 35797u))), _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(u_input.a.x, 1u)) << (u_input.a.x % 32u))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) * var_0.x), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(var_1.e.x, 27u)])), _wgslsmith_f_op_f32(-701f - 413f), _wgslsmith_f_op_f32(max(420f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-238f)) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 27u)] + -733f))))));
    var var_2 = firstLeadingBit(min(max(vec4<u32>(u_input.a.x, 21290u, 844u, var_1.e.x), vec4<u32>(var_1.e.x, 80294u, u_input.a.x, var_1.e.x)), vec4<u32>(var_1.e.x, 29125u & var_1.e.x, var_1.e.x, max(var_1.e.x, 40509u)))) >> (countOneBits(~abs(vec4<u32>(1u, var_1.e.x, u_input.a.x, 45026u))) % vec4<u32>(32u));
    var_1 = func_4(Struct_1(true, var_1.b, vec2<i32>(firstLeadingBit(var_1.c.x & 2147483647i), abs(select(var_1.d, 1i, var_1.a))), -1i, _wgslsmith_sub_vec2_u32(~vec2<u32>(var_2.x, 34747u), u_input.a.yz)), Struct_1(!all(vec4<bool>(true, false, var_1.a, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, -925f, var_0.x, global0[_wgslsmith_index_u32(var_2.x, 27u)]) * _wgslsmith_f_op_vec4_f32(ceil(var_1.b))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(824f, -970f, var_1.b.x, var_1.b.x))), select(var_1.c, _wgslsmith_add_vec2_i32(var_1.c, ~vec2<i32>(-12453i, var_1.d)), vec2<bool>(false, true)), ~var_1.c.x, var_1.e));
    let x = u_input.a;
    s_output = StorageBuffer(~select(~select(vec4<u32>(40079u, var_1.e.x, var_2.x, 19314u), vec4<u32>(13249u, u_input.a.x, var_1.e.x, var_1.e.x), vec4<bool>(false, var_1.a, false, var_1.a)), select(firstLeadingBit(vec4<u32>(43296u, var_2.x, u_input.a.x, 4294967295u)), vec4<u32>(var_2.x, var_1.e.x, 37369u, var_2.x), vec4<bool>(true, var_1.a, var_1.a, true)), true), reverseBits(((vec4<i32>(1i, 0i, 5501i, var_1.c.x) & vec4<i32>(-6806i, 11141i, -30799i, var_1.c.x)) & (vec4<i32>(31591i, var_1.c.x, -61234i, 1i) ^ vec4<i32>(2147483647i, 0i, var_1.d, var_1.d))) >> (firstTrailingBit(abs(vec4<u32>(1u, 54492u, 1u, u_input.a.x))) % vec4<u32>(32u))));
}

