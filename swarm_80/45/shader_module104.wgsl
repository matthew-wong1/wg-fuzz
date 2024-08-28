struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.b, arg_0.a.b, 1053f) - vec3<f32>(arg_0.a.b, -301f, arg_0.a.b))))) + vec3<f32>(arg_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b) + _wgslsmith_f_op_f32(-arg_0.a.b)), _wgslsmith_f_op_f32(select(-941f, -1257f, all(arg_1.c))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(337f * arg_0.a.b), _wgslsmith_f_op_f32(exp2(arg_0.a.b)), _wgslsmith_f_op_f32(ceil(arg_0.a.b)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-220f, arg_0.a.b, _wgslsmith_f_op_f32(arg_0.a.b + 130f)))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<u32>) -> vec2<i32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(307f + 789f) - 1230f) - 701f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_4(Struct_3(vec4<i32>(-64310i, 1i, -2147483647i, u_input.c.x), 730f, -2147483647i, Struct_1(vec2<i32>(-1i, u_input.c.x), -2147483647i, vec3<bool>(true, arg_1.a.c.x, true), 51104u))), Struct_1(vec2<i32>(-12209i, arg_1.a.b), u_input.c.x, vec3<bool>(arg_1.a.c.x, arg_1.a.c.x, arg_1.a.c.x), 4294967295u))).x + _wgslsmith_f_op_f32(f32(-1f) * -460f))))), 354f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -917f) - _wgslsmith_f_op_f32(abs(1228f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1232f, 909f))), any(vec2<bool>(false, arg_1.a.c.x))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(197f - _wgslsmith_f_op_f32(694f + var_0.x)), -352f, _wgslsmith_f_op_f32(174f + -960f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -194f, -1000f, 1000f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-397f, -936f, 256f, 280f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 975f, var_0.x, -881f) + vec4<f32>(996f, 633f, var_0.x, var_0.x))))))));
    let var_2 = _wgslsmith_f_op_f32(var_0.x - var_0.x);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1601f, 342f), -1000f)), _wgslsmith_f_op_f32(ceil(-372f)), _wgslsmith_f_op_f32(-var_0.x), var_0.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(662f, 363f))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-307f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_1.x) + _wgslsmith_f_op_f32(abs(var_2))))));
    var var_3 = true;
    return countOneBits(arg_1.a.a);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_4, arg_3: i32) -> Struct_2 {
    return Struct_2(Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_3, -33317i) | vec2<i32>(arg_2.a.a.x, -2147483647i), arg_2.a.d.a), min(max(arg_2.a.a.yz, vec2<i32>(-48998i, 0i)), vec2<i32>(0i, arg_1)), func_3(~vec4<u32>(u_input.b.x, 5751u, u_input.b.x, 56982u), Struct_2(Struct_1(arg_2.a.d.a, arg_1, arg_2.a.d.c, 1u)), vec2<u32>(0u, 4294967295u))), -699i, vec3<bool>(true, arg_2.a.b != -358f, !(u_input.a >= 19997i)), 4294967295u));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: f32) -> f32 {
    let var_0 = Struct_3(_wgslsmith_div_vec4_i32(arg_2.a, arg_2.a) & -_wgslsmith_div_vec4_i32(arg_2.a, vec4<i32>(arg_2.a.x, -2147483647i, -27421i, arg_2.a.x) | arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2309f - arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - _wgslsmith_f_op_f32(1005f - arg_2.b)), func_2(arg_2.d.c.x, arg_2.a.x, Struct_4(arg_2), 28414i).a.c.x))), -(~(-1i) & ~(arg_2.c | -2147483647i)), func_2(select(true, false, arg_2.b >= -1312f) != arg_2.d.c.x, -1i, Struct_4(arg_2), func_3(~(~vec4<u32>(0u, 0u, u_input.b.x, arg_2.d.d)), arg_1, _wgslsmith_sub_vec2_u32(min(vec2<u32>(0u, 33038u), u_input.b), u_input.b)).x).a);
    let var_1 = Struct_4(Struct_3(max(vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.d.a, vec2<i32>(arg_2.c, arg_2.c)), arg_2.a.x >> (var_0.d.d % 32u), 42177i, func_3(vec4<u32>(u_input.b.x, 5432u, 16423u, arg_1.a.d), arg_1, vec2<u32>(1u, 0u)).x), arg_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_3)) * arg_0.x), 37090i, Struct_1(vec2<i32>(-18389i, -1i), u_input.a ^ 1i, var_0.d.c, 1u)));
    let var_2 = arg_1;
    let var_3 = ~1i;
    var var_4 = var_1.a.d.c;
    return _wgslsmith_f_op_vec3_f32(func_1(var_1, Struct_1(var_2.a.a, 0i, vec3<bool>(var_4.x, select(arg_2.d.c.x, true && var_1.a.d.c.x, false), true), 59315u))).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a << (4294967295u % 32u);
    let var_1 = var_0;
    var var_2 = Struct_3(~select(~vec4<i32>(1i, u_input.c.x, 1i, -22916i), select(vec4<i32>(-35069i, var_1, u_input.a, -2147483647i), vec4<i32>(var_1, var_1, u_input.a, -6180i), vec4<bool>(false, false, false, true)), all(vec2<bool>(false, true))) << (vec4<u32>(_wgslsmith_add_u32(~u_input.b.x, u_input.b.x & 19850u), ~u_input.b.x, ~u_input.b.x, abs(u_input.b.x)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-806f * _wgslsmith_f_op_f32(abs(260f))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(func_1(Struct_4(Struct_3(vec4<i32>(var_1, -27078i, 43901i, 43315i), -517f, var_0, Struct_1(u_input.c, -25182i, vec3<bool>(false, true, true), u_input.b.x))), Struct_1(u_input.c, u_input.a, vec3<bool>(true, false, false), 52564u))), func_2(false, var_0, Struct_4(Struct_3(vec4<i32>(-1i, -26383i, -39439i, var_1), 561f, 1i, Struct_1(vec2<i32>(2147483647i, var_1), 35470i, vec3<bool>(false, false, true), 4294967295u))), -1i), Struct_3(vec4<i32>(16850i, -2147483647i, -14805i, -1i), 2592f, var_1, Struct_1(u_input.c, u_input.a, vec3<bool>(true, false, false), u_input.b.x)), -329f)))), firstTrailingBit(_wgslsmith_clamp_i32(i32(-1i) * -u_input.c.x, _wgslsmith_mult_i32(~u_input.a, u_input.c.x & var_1), 36939i)), func_2(any(vec3<bool>(true, true, true)) & false, 1i, Struct_4(Struct_3(firstLeadingBit(vec4<i32>(var_1, 44306i, var_1, var_1)), 338f, var_0, func_2(true, -59016i, Struct_4(Struct_3(vec4<i32>(0i, 0i, var_0, var_0), -181f, 1i, Struct_1(vec2<i32>(1i, var_1), 8968i, vec3<bool>(true, true, false), 0u))), var_1).a)), 0i).a);
    var var_3 = Struct_4(Struct_3(_wgslsmith_div_vec4_i32(~var_2.a & -var_2.a, _wgslsmith_div_vec4_i32(abs(var_2.a), var_2.a)), -1440f, _wgslsmith_mod_i32(~0i, -u_input.a), var_2.d));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(35100u, 2730u, var_3.a.d.d, var_2.d.d), _wgslsmith_sub_vec4_u32(vec4<u32>(30450u, 46803u, var_3.a.d.d, 1u), vec4<u32>(var_3.a.d.d, 29319u, var_3.a.d.d, 97052u))))));
}

