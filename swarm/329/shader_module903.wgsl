struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1618f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = ~select(~vec3<u32>(5482u, arg_0.d, arg_0.d) >> (~vec3<u32>(1u, arg_1.d, arg_0.d) % vec3<u32>(32u)), vec3<u32>(countOneBits(arg_0.d), arg_1.d >> (1u % 32u), _wgslsmith_sub_u32(37997u, arg_0.d)), arg_0.c.x) ^ vec3<u32>(~max(4294967295u, 1u), ~arg_1.d ^ arg_0.d, arg_1.d);
    let var_1 = vec3<bool>(true, true, arg_1.c.x);
    var var_2 = -firstLeadingBit(~max(_wgslsmith_add_vec2_i32(vec2<i32>(42211i, 1i), u_input.a.yx), vec2<i32>(1i, u_input.a.x)));
    var var_3 = _wgslsmith_div_f32(arg_1.e, _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(f32(-1f) * -907f)));
    var_2 = u_input.a.yz;
    return -1878f;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = !(!vec3<bool>(true, -1538f >= _wgslsmith_f_op_f32(func_2()), true));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(284f, _wgslsmith_div_f32(-187f, _wgslsmith_f_op_f32(func_3(Struct_1(-254f, 658f, vec2<bool>(var_0.x, var_0.x), 4294967295u, 290f), Struct_1(-1254f, 2114f, var_0.yz, 46165u, -633f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-443f, -406f)), -583f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1152f - 756f) + _wgslsmith_f_op_f32(-1764f + 118f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-500f, _wgslsmith_f_op_f32(f32(-1f) * -435f), -1240f, 568f))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1211f, -1510f, 134f, -1000f)))))))));
    var var_2 = vec3<u32>(_wgslsmith_div_u32(~min(countOneBits(1u), 42792u), 29714u), ~4294967295u, 1u);
    let var_3 = all(select(!(!vec3<bool>(var_0.x, var_0.x, true)), vec3<bool>(!any(vec4<bool>(var_0.x, false, false, false)), true, var_0.x), select(vec3<bool>(4294967295u == var_2.x, true, false), !vec3<bool>(true, false, var_0.x), var_0.x)));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -856f), -222f, !select(var_0.zy, select(vec2<bool>(false, false), !var_0.zx, vec2<bool>(false, var_0.x)), any(select(vec4<bool>(var_3, var_0.x, false, var_3), vec4<bool>(var_3, false, var_0.x, var_3), var_0.x))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x), -220f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1992f)) + var_1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-763f)) * _wgslsmith_f_op_f32(max(var_1.x, var_1.x))))));
    return Struct_1(872f, var_1.x, select(vec2<bool>(any(!vec2<bool>(var_4.c.x, var_0.x)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, var_3, var_4.c.x), vec3<bool>(var_4.c.x, true, var_4.c.x)))), var_0.zz, vec2<bool>(var_0.x, all(!vec3<bool>(var_3, var_4.c.x, true)))), ~_wgslsmith_mult_u32(select(var_2.x, ~1u, !var_3), var_2.x ^ 0u), 196f);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    let var_0 = -_wgslsmith_clamp_vec4_i32(select(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), -(vec4<i32>(-60562i, -2147483647i, 43000i, u_input.a.x) >> (vec4<u32>(1228u, arg_1.d, 42480u, arg_1.d) % vec4<u32>(32u))), vec4<bool>(u_input.a.x >= 1233i, arg_1.d <= arg_1.d, false, func_1(1i).c.x)), vec4<i32>(max(1i, u_input.a.x), 2147483647i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), u_input.a.x << (func_1(u_input.a.x).d % 32u)), vec4<i32>(_wgslsmith_div_i32(u_input.a.x, 6425i), u_input.a.x, abs(select(u_input.a.x, 22234i, true)), max(i32(-1i) * -3670i, _wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(1i, -33281i)))));
    var var_1 = -var_0.yw;
    var_1 = firstTrailingBit(vec2<i32>(var_1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(-1i, -6550i), -u_input.a.yy), ~vec2<i32>(-3276i, var_0.x))));
    var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, u_input.a.x), _wgslsmith_sub_vec2_i32(var_0.wx, -u_input.a.zy));
    let var_2 = arg_2.x;
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(~1u, _wgslsmith_clamp_u32(arg_1.d, arg_1.d ^ firstTrailingBit(_wgslsmith_add_u32(10685u, 0u)), ~36552u));
    var var_1 = ~min(vec3<u32>(~57285u, 1u, ~_wgslsmith_mult_u32(22511u, arg_0.d)), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.d, 1u, 1u), vec3<u32>(1u, var_0, arg_1.d), vec3<u32>(7558u, 26778u, arg_0.d)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(7958u, 2865u, arg_1.d), vec3<u32>(76190u, 60058u, arg_1.d)) % vec3<u32>(32u))));
    var_1 = vec3<u32>(arg_1.d, 22376u, _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_1.d, arg_0.d), max(1u, ~var_1.x))) ^ vec3<u32>(~arg_0.d, _wgslsmith_add_u32(~var_1.x, firstLeadingBit(arg_1.d)), ~_wgslsmith_sub_u32(var_0, 53290u) & countOneBits(10175u));
    return func_1(~(-(~(~(-1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -670f), 1832f, vec2<bool>(true, true), ~reverseBits(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-300f, func_1(-2147483647i), vec4<bool>(true, true, true, true))))), func_1(_wgslsmith_mult_i32(abs(~u_input.a.x), u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~abs(~vec4<u32>(47881u, var_0.d, var_0.d, var_0.d)), ~max(firstTrailingBit(vec4<u32>(22548u, 58892u, 0u, 34557u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d, var_0.d, 75907u, var_0.d), vec4<u32>(var_0.d, var_0.d, 1u, 1u)))));
}

