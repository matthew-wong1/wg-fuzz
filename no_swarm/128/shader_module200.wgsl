struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32) -> vec2<u32> {
    var var_0 = -vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(countOneBits(vec3<i32>(u_input.a.x, -2147483647i, -1i))), select(reverseBits(vec3<i32>(-1i, u_input.a.x, u_input.a.x)), -vec3<i32>(0i, u_input.a.x, u_input.a.x), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), abs(-48613i), u_input.a.x);
    var var_1 = arg_1;
    let var_2 = Struct_1(~0u);
    var var_3 = Struct_1(firstLeadingBit(select(_wgslsmith_mult_u32(~var_2.a, ~u_input.b.x), abs(110568u) ^ var_2.a, !(!arg_0.x))));
    var_3 = var_2;
    return _wgslsmith_mult_vec2_u32(vec2<u32>(56376u, _wgslsmith_dot_vec2_u32(vec2<u32>(49972u, var_3.a) << (u_input.b % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 0u) | u_input.b, reverseBits(vec2<u32>(4714u, 51258u))))), u_input.b);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>) -> vec4<f32> {
    var var_0 = Struct_1(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(85145u, ~arg_0.x, u_input.b.x), ~(vec3<u32>(43899u, 90267u, 4294967295u) >> (vec3<u32>(arg_0.x, arg_0.x, 20395u) % vec3<u32>(32u))))));
    return _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(348f, _wgslsmith_div_f32(1343f, _wgslsmith_f_op_f32(1f + -699f)), _wgslsmith_f_op_f32(f32(-1f) * -1138f), -649f)));
}

fn func_2(arg_0: i32, arg_1: i32) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_u32((~vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) << ((vec3<u32>(49286u, 37969u, 5016u) << (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u))) & ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, u_input.b.x, u_input.b.x), vec3<u32>(56495u, 0u, u_input.b.x)) | ~(~vec3<u32>(0u, u_input.b.x, u_input.b.x))));
    let var_1 = var_0;
    var var_2 = var_0;
    var_2 = var_0;
    let var_3 = var_1;
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_4(func_3(vec4<bool>(true, true, true, true), 670f), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(arg_1, 0i), 1i, arg_1, _wgslsmith_div_i32(u_input.a.x, arg_0)), vec4<i32>(u_input.a.x, 0i, 1i, -1i) << (vec4<u32>(0u, var_1.a, var_0.a, 4780u) % vec4<u32>(32u)))))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = arg_3.yx;
    let var_1 = Struct_1(u_input.b.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1430f, 1807f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-969f * _wgslsmith_div_f32(-864f, arg_2.x))));
    let var_3 = var_1.a;
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1431f), -2158f));
    return Struct_1(4294967295u);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: u32) -> f32 {
    let var_0 = func_5(Struct_1(~_wgslsmith_sub_u32(~u_input.b.x, 0u)), 1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_2(u_input.a.x ^ u_input.a.x, u_input.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, arg_0, 1387f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-919f, 488f, -2497f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-918f, arg_0, arg_0))))));
    let var_1 = ~select(~(reverseBits(vec4<u32>(var_0.a, 31144u, u_input.b.x, arg_2)) & ~vec4<u32>(62965u, 21290u, var_0.a, arg_2)), ~vec4<u32>(0u, abs(0u), arg_2 << (4108u % 32u), _wgslsmith_add_u32(4294967295u, u_input.b.x)), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(arg_0 + 1014f)) > arg_0);
    var var_2 = Struct_2(u_input.a.x ^ -(i32(-1i) * -1i), Struct_1(~u_input.b.x));
    let var_3 = func_5(func_5(var_2.b, _wgslsmith_mult_i32(u_input.a.x, -1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(912f, -322f, arg_0, 1076f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 917f, arg_0, -112f) - vec4<f32>(-2076f, arg_0, arg_0, arg_0)))), vec3<f32>(_wgslsmith_f_op_vec4_f32(func_2(-19557i, ~(-2147483647i))).x, _wgslsmith_f_op_f32(-arg_0), 1007f)), firstTrailingBit(firstLeadingBit(u_input.a.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -2164f, arg_0) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, -354f) + vec4<f32>(arg_0, 726f, arg_0, arg_0))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(672f, arg_0, -1805f), vec3<f32>(arg_0, arg_0, 910f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1863f, arg_0, arg_0))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))))));
    var var_4 = vec2<i32>(select(u_input.a.x, -2147483647i, all(vec4<bool>(true, arg_1.x, false, arg_1.x)) && arg_1.x) | var_2.a, u_input.a.x & u_input.a.x);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_4(~select(vec2<u32>(0u, var_3.a), u_input.b, true) >> (u_input.b % vec2<u32>(32u)), -firstTrailingBit(~vec4<i32>(var_4.x, var_2.a, -1i, var_2.a)))).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2383f, 916f) - _wgslsmith_f_op_f32(475f - -284f)), _wgslsmith_f_op_f32(func_1(-1499f, select(vec2<bool>(true, false), vec2<bool>(false, false), true), u_input.b.x)), true)) * -656f)));
    let var_1 = Struct_2(-_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, min(u_input.a.x, u_input.a.x)), Struct_1(_wgslsmith_mult_u32(55112u, abs(max(u_input.b.x, u_input.b.x)))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = Struct_2(-_wgslsmith_dot_vec2_i32(u_input.a, u_input.a) & var_1.a, var_1.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1265f), _wgslsmith_f_op_f32(ceil(712f))));
    var_3 = vec2<f32>(174f, 722f);
    let var_4 = -abs(0i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1945f))), var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_div_i32(var_1.a, 53294i), ~u_input.a.x)).x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.x, var_3.x, false)))), var_3.x), var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -633f));
}

