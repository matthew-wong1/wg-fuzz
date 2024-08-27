struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    let var_0 = all(select(vec2<bool>(all(vec4<bool>(arg_1.e.x, false, arg_1.c.x, false)), false), arg_1.c, !vec2<bool>(arg_1.e.x, arg_1.e.x))) && !(!arg_1.e.x);
    let var_1 = arg_1.e;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(2738f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(select(arg_1.a, 383f, var_0)))))), -204f, !select(vec2<bool>(var_1.x, var_0), vec2<bool>(false, false), any(arg_1.e)), countOneBits(firstLeadingBit(abs(arg_1.d))) & -_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(2147483647i, arg_1.d.x, u_input.b.x, 12058i)), vec4<i32>(-2147483647i, 1i, arg_1.d.x, u_input.b.x)), var_1);
    let var_3 = 1u;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x))), _wgslsmith_f_op_f32(-101f - _wgslsmith_f_op_f32(round(260f))), _wgslsmith_f_op_f32(-var_2.a), -1073f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-606f, var_2.a, arg_1.b, arg_2.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(972f, -1269f, 1731f, 841f) + vec4<f32>(1374f, arg_2.x, var_2.a, var_2.b))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-529f, _wgslsmith_f_op_f32(max(243f, -1038f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-292f + arg_1.a)), arg_2.x)));
    return var_2.b;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(3395i, 0i, _wgslsmith_dot_vec2_i32(countOneBits(reverseBits(vec2<i32>(0i, 1i))), min(vec2<i32>(2147483647i, -2147483647i), _wgslsmith_add_vec2_i32(arg_3.zy, vec2<i32>(u_input.b.x, u_input.b.x)))), -u_input.b.x), arg_1.d);
    var var_1 = arg_1;
    let var_2 = arg_1;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)))), -1229f, !select(vec2<bool>(true, arg_1.e.x), vec2<bool>(false, var_2.c.x), arg_1.e.x), vec4<i32>(arg_3.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(min(0i, u_input.b.x), var_2.d.x), -var_2.d.x, _wgslsmith_dot_vec4_i32(arg_3, vec4<i32>(1802i, -23881i, 1i, arg_1.d.x))), abs(var_1.d.x ^ 47480i), _wgslsmith_dot_vec2_i32(min(arg_1.d.zw, _wgslsmith_mod_vec2_i32(var_1.d.yz, vec2<i32>(-2147483647i, arg_3.x))), vec2<i32>(var_1.d.x, -1125i))), select(!(!(!var_2.e)), vec3<bool>(var_2.c.x, true, select(!arg_1.c.x, var_2.c.x, any(var_2.c))), vec3<bool>(true, true, var_1.c.x)));
    let var_4 = -var_3.d.xw;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-714f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(418f, var_2.a))))) * _wgslsmith_f_op_f32(-var_2.a)) - _wgslsmith_f_op_f32(max(-466f, _wgslsmith_f_op_f32(f32(-1f) * -931f))));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -880f)))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(ceil(1003f)), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -686f))), _wgslsmith_f_op_f32(func_3(select(u_input.a.xx, vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(false, false)), Struct_1(-197f, 1000f, vec2<bool>(false, false), vec4<i32>(u_input.b.x, -1i, -19269i, u_input.b.x), vec3<bool>(false, true, false)), vec3<f32>(-1000f, 386f, -518f))), vec2<bool>(true, true), firstTrailingBit(vec4<i32>(-2147483647i, 19028i, 11973i, u_input.b.x)) & -vec4<i32>(32639i, -47872i, -14554i, -584i), vec3<bool>(true, any(vec4<bool>(true, false, false, true)), true)), u_input.a, _wgslsmith_sub_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(9160i, -59417i, 0i, u_input.b.x), vec4<i32>(70126i, 35089i, u_input.b.x, -8688i))), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(0i, u_input.b.x, -2147483647i, u_input.b.x)), vec4<i32>(2147483647i, 2147483647i, u_input.b.x, -2147483647i))))), !(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(false, true), true)), vec4<i32>(-1i) * -(~(-vec4<i32>(-2147483647i, 24527i, -2147483647i, -2147483647i))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), select(true, any(vec3<bool>(false, true, false)), _wgslsmith_sub_i32(70096i, u_input.b.x) != u_input.b.x)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(552f - -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + -405f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(115f, var_0.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))))), vec2<bool>(var_0.e.x, all(var_0.e)), vec4<i32>(abs(u_input.b.x), _wgslsmith_dot_vec3_i32(-var_0.d.wzx, var_0.d.wyy) << (max(u_input.a.x, u_input.a.x ^ 1u) % 32u), var_0.d.x, -(~_wgslsmith_clamp_i32(-2147483647i, var_0.d.x, 0i))), !select(!(!var_0.e), select(!var_0.e, var_0.e, !var_0.c.x), vec3<bool>(true, true, var_0.e.x)));
    var_0 = Struct_1(-529f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a.wx, Struct_1(var_0.b, 1761f, vec2<bool>(var_0.e.x, var_0.e.x), vec4<i32>(u_input.b.x, u_input.b.x, var_0.d.x, -2147483647i), vec3<bool>(false, true, true)), vec3<f32>(var_0.b, -1216f, var_0.a))) + _wgslsmith_f_op_f32(trunc(1367f))) * var_0.b), !select(vec2<bool>(var_0.c.x, var_0.c.x), var_0.e.zz, true), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(~u_input.b.x, 25417i, _wgslsmith_add_i32(var_0.d.x, -10024i), _wgslsmith_clamp_i32(1i, var_0.d.x, -1i)), countOneBits(var_0.d) << (firstTrailingBit(vec4<u32>(4294967295u, 1u, 58079u, 4294967295u)) % vec4<u32>(32u))), vec4<i32>(-10888i, -1i, var_0.d.x & -u_input.b.x, var_0.d.x), var_0.d), !var_0.e);
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-314f, var_0.a), vec2<f32>(-1151f, var_0.b))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -1000f) * vec2<f32>(-908f, var_0.b)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(var_0.a, var_0.b)))));
    var var_2 = firstLeadingBit(~firstTrailingBit(2861u));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x)));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))))));
    var_0 = _wgslsmith_div_f32(2223f, 1f);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-222f)), _wgslsmith_f_op_f32(floor(-1000f)))), -1205f, 1f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-415f, -1373f, -776f, -1405f), vec4<f32>(-1851f, -1039f, 236f, -327f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(344f, 666f, 1535f, 708f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -255f), _wgslsmith_f_op_f32(1002f - 939f), -1164f, _wgslsmith_f_op_f32(select(162f, -935f, true))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(firstLeadingBit(_wgslsmith_mult_vec2_u32(u_input.a.zx, vec2<u32>(46996u, u_input.a.x))), Struct_1(_wgslsmith_f_op_f32(-1245f + var_1.x), _wgslsmith_div_f32(-547f, var_1.x), vec2<bool>(true, true), -vec4<i32>(u_input.b.x, -1i, u_input.b.x, 2147483647i), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(var_1.zwy, var_1.yww))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-238f)), var_1.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2121f), var_1.x))), 1345f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    var var_3 = _wgslsmith_add_u32(~_wgslsmith_mult_u32(~(~48382u), 1u), 0u | firstTrailingBit(~_wgslsmith_mult_u32(1u, u_input.a.x)));
    return 76287i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -233f) * -647f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-400f, 289f)), _wgslsmith_f_op_f32(-663f - _wgslsmith_div_f32(1411f, -664f)), false)))), vec2<bool>(all(vec3<bool>(true, true, true)) | select(select(false, true, true), any(vec2<bool>(false, true)), false), select(all(vec4<bool>(false, false, true, true)), false, u_input.b.x < u_input.b.x)), vec4<i32>(i32(-1i) * -41211i, func_1(), u_input.b.x, ~_wgslsmith_clamp_i32(50812i, u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(-24968i, u_input.b.x)))), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), u_input.a.x == u_input.a.x), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), false), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), 0u >= min(min(u_input.a.x, 26185u), 1u)));
    let var_1 = var_0.c;
    let var_2 = firstLeadingBit(~(~2386u)) | ~(~max(firstTrailingBit(66175u), 1u));
    let var_3 = Struct_1(1421f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * 1f), 708f)), !(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(var_0.c.x, false), vec2<bool>(var_0.c.x, true))), var_0.d, vec3<bool>(all(!select(vec4<bool>(var_0.e.x, var_1.x, false, true), vec4<bool>(var_1.x, var_0.e.x, true, false), var_0.e.x)), false, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_add_u32(0u, var_2)) <= ~3734u));
    var_0 = var_3;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-661f))), -1255f), _wgslsmith_f_op_f32(exp2(var_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1091f))), !(!vec2<bool>(false & var_0.e.x, true)), max(~(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2147483647i, 1i, 1i), vec4<i32>(var_3.d.x, -20886i, 2147483647i, 44493i)) | var_0.d), ~_wgslsmith_add_vec4_i32(var_3.d, var_0.d)), vec3<bool>(u_input.a.x >= var_2, !(!var_3.c.x), var_0.e.x));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(872f)), -367f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.a, -1311f) * _wgslsmith_f_op_f32(f32(-1f) * -354f))))), var_3.e.zz, ~select(~var_0.d, _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d.x, var_0.d.x, -1i, 0i), var_4.d), all(vec3<bool>(var_3.e.x, false, var_3.c.x))) & ~var_3.d, select(var_3.e, select(var_4.e, !(!vec3<bool>(var_0.c.x, true, var_0.c.x)), var_4.e.x), var_3.e));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(var_4.d.x & var_3.d.x, u_input.b.x | -25218i), var_3.d.x), countOneBits(max(_wgslsmith_mod_i32(var_0.d.x, var_4.d.x), -u_input.b.x)), _wgslsmith_div_i32(u_input.b.x, ~var_4.d.x | -u_input.b.x)));
}

