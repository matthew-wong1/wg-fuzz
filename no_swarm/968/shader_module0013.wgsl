struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = 1220f;
    let var_1 = Struct_2(select(select(vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.a, _wgslsmith_div_i32(2147483647i, arg_0.b.x) <= arg_0.b.x), vec2<bool>(true, arg_0.a.x), !select(select(vec2<bool>(false, false), vec2<bool>(arg_0.a.x, arg_0.a.x), false), vec2<bool>(arg_0.a.x, true), !vec2<bool>(arg_0.a.x, arg_0.a.x))), firstTrailingBit(~firstLeadingBit(vec2<i32>(arg_0.b.x, arg_0.b.x))), vec4<u32>(~4294967295u, ~(~(~2852u)), u_input.a.x, _wgslsmith_sub_u32(51669u | u_input.a.x, 29025u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1003f, _wgslsmith_f_op_f32(min(192f, arg_0.d)))), -1057f))));
    var_0 = var_1.d;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(step(arg_0.d, arg_0.d)), any(select(!(!vec4<bool>(true, true, var_1.a.x, var_1.a.x)), !select(vec4<bool>(false, false, true, var_1.a.x), vec4<bool>(var_1.a.x, arg_0.a.x, var_1.a.x, true), vec4<bool>(true, var_1.a.x, true, arg_0.a.x)), var_1.a.x)), max(abs(~_wgslsmith_sub_u32(var_1.c.x, 66130u)), u_input.a.x), vec2<bool>(!(!arg_0.a.x), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1607f * -920f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(994f - arg_0.d), -1419f)) + var_1.d)));
    var var_3 = Struct_2(vec2<bool>(all(!select(vec2<bool>(arg_0.a.x, var_2.b), vec2<bool>(true, true), vec2<bool>(true, var_2.d.x))), var_2.c <= arg_0.c.x), -firstTrailingBit(abs(countOneBits(var_1.b))), vec4<u32>(var_2.c, var_2.c, arg_0.c.x, 600u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2078f + -807f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.d))))));
    return _wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(var_1.d - -206f));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec2<i32> {
    return vec2<i32>((i32(-1i) * -(~1i)) >> (~arg_0 % 32u), max(_wgslsmith_add_i32(-19434i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-61898i, 1i), vec2<i32>(19206i, -1i))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 7750i), vec2<i32>(1i, 41992i)), vec2<i32>(-22595i, 1i))));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = vec3<bool>(true, true | !(select(arg_0.x, arg_0.x, arg_0.x) | any(arg_0)), true);
    var var_1 = Struct_2(select(var_0.yy, !select(!var_0.zx, var_0.zz, vec2<bool>(true, var_0.x)), arg_0), vec2<i32>(min(-select(arg_1.x, 9160i, false), arg_1.x), _wgslsmith_dot_vec2_i32(-arg_1 & -vec2<i32>(arg_1.x, arg_1.x), arg_1)), ~(~countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(39495u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(43966u, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-203f, 555f)))))));
    var var_2 = _wgslsmith_div_vec3_u32(firstTrailingBit(firstLeadingBit(firstLeadingBit(var_1.c.zwz) ^ ~vec3<u32>(u_input.a.x, var_1.c.x, u_input.a.x))), ~firstTrailingBit(min(_wgslsmith_mult_vec3_u32(vec3<u32>(13812u, 4294967295u, var_1.c.x), var_1.c.wzw), var_1.c.www)));
    let var_3 = Struct_2(!select(var_0.zy, var_1.a, !(!vec2<bool>(var_1.a.x, false))), max(-vec2<i32>(-6024i, 36527i), abs(select(arg_1, arg_1, var_1.a))) ^ -arg_1, vec4<u32>(countOneBits(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, 7299u), 21138u)), var_1.c.x, u_input.a.x, var_2.x), -780f);
    var var_4 = ~(~(~arg_1));
    return arg_0;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1767f + _wgslsmith_div_f32(161f, arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-736f + 1301f)))), arg_1, firstLeadingBit(u_input.a.x), func_5(!vec2<bool>(arg_2 >= arg_2, arg_1 | arg_1), func_4(_wgslsmith_mod_u32(arg_0.x | u_input.a.x, arg_0.x), Struct_1(_wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(arg_1, arg_1), vec2<i32>(2147483647i, 1i), vec4<u32>(arg_0.x, 0u, 4294967295u, arg_0.x), -341f))), true, 4294967295u, select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), arg_1), _wgslsmith_f_op_f32(ceil(arg_2))))), _wgslsmith_div_f32(146f, -1316f));
    let var_1 = vec3<bool>(arg_1, all(select(!(!var_0.d), !vec2<bool>(true, arg_1), true)), true);
    let var_2 = 483f;
    var var_3 = vec4<u32>(~_wgslsmith_dot_vec3_u32(countOneBits(arg_0) ^ (arg_0 | u_input.a), arg_0), 48736u, u_input.a.x, _wgslsmith_div_u32(u_input.a.x, arg_0.x));
    let var_4 = -abs(2147483647i << (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, 4294967295u, 1u, var_3.x)), ~vec4<u32>(var_0.c, 4294967295u, 47825u, u_input.a.x)) % 32u));
    return Struct_1(_wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.e))))), !(!(any(vec4<bool>(true, var_1.x, arg_1, false)) || !var_1.x)), _wgslsmith_add_u32(arg_0.x, ~(~(~47989u))), !func_5(!var_0.d, _wgslsmith_mult_vec2_i32(select(vec2<i32>(var_4, -2147483647i), vec2<i32>(var_4, -1i), var_0.d), vec2<i32>(var_4, -1i) ^ vec2<i32>(var_4, var_4))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
}

fn func_1() -> vec2<f32> {
    var var_0 = u_input.a.x;
    let var_1 = func_2(vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, 0u, u_input.a.x)), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~(60158u ^ u_input.a.x), _wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x))) ^ u_input.a, !(~(~1u) < _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), select(vec3<u32>(u_input.a.x, u_input.a.x, 61393u), u_input.a, vec3<bool>(false, false, false)))), -915f);
    var var_2 = 349f;
    var_2 = var_1.a;
    var var_3 = _wgslsmith_f_op_f32(-var_1.a);
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.e, var_1.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-891f, 1f))))));
}

fn func_6(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(ceil(-241f));
    let var_1 = -10591i;
    var var_2 = 2014f;
    var var_3 = var_1;
    var_2 = var_0;
    return func_2(firstLeadingBit(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(3489u, 1u, 0u)), _wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(22247u, 10899u, u_input.a.x))) | (~u_input.a << (~u_input.a % vec3<u32>(32u)))), all(func_2(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), true, var_0).d), _wgslsmith_f_op_vec2_f32(func_1()).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -459f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1025f)))));
    let var_2 = func_6(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1037f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-311f, var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -1109f))))), -2117f);
    var var_3 = min(select(-vec2<i32>(19526i, abs(0i)), vec2<i32>(~_wgslsmith_mod_i32(1831i, -2147483647i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(29628i, var_0, -38953i, 87085i), vec4<i32>(var_0, 29288i, var_0, 7155i), var_2.d.x), vec4<i32>(-4144i, -1i, -10533i, var_0))), vec2<bool>(false, var_2.d.x)), _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(var_0, -10610i) << (abs(vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u))), max(vec2<i32>(-2147483647i, func_4(18829u, var_2).x), vec2<i32>(var_0, -28225i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-546f, var_1.x) - vec2<f32>(var_1.x, -1016f)) + vec2<f32>(-1849f, var_1.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_1.x)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.e, var_1.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(select(vec2<bool>(var_2.d.x, true), vec2<bool>(true, var_2.b), false), vec2<i32>(var_0, -2147483647i) << (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.c, 0u, var_2.c, 0u), vec4<u32>(1u, var_2.c, var_2.c, var_2.c)), 1522f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -1241f))), ~min(abs(vec2<i32>(-1i, var_0)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(22697i, var_0), vec2<i32>(-32475i, var_3.x))), u_input.a.yy);
}

