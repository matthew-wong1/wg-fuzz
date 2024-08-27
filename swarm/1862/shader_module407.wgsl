struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(145f - 108f), 198f, -863f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1450f, 1534f)), _wgslsmith_f_op_f32(-112f + -715f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1857f)) - -702f))));
    var var_1 = 20128u;
    var_1 = _wgslsmith_mult_u32(~reverseBits(_wgslsmith_mult_u32(~67755u, _wgslsmith_sub_u32(arg_0, arg_0))), 0u);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), 289f, _wgslsmith_f_op_f32(664f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(2048f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    var var_2 = Struct_1(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), false), select(vec2<bool>(any(vec4<bool>(true, true, false, true)), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true)), true, select(true, all(vec3<bool>(any(vec2<bool>(false, false)), true, true)), u_input.a.x > u_input.a.x), 166f);
    return vec3<bool>(true, !var_2.c, false);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = 0i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1315f, arg_3.a.d)), arg_3.a.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.d) + _wgslsmith_f_op_f32(1123f - 445f))))) + _wgslsmith_div_f32(891f, -1604f));
    var_1 = _wgslsmith_f_op_f32(-arg_1.c.d);
    var_0 = u_input.a.x;
    let var_2 = all(select(select(func_3(~41581u), vec3<bool>(all(vec4<bool>(arg_1.b, false, arg_2, true)), any(vec4<bool>(arg_3.a.b, arg_3.b, true, false)), arg_1.a.c), !(!vec3<bool>(arg_1.b, arg_1.a.a.x, arg_2))), !vec3<bool>(!arg_2, all(vec3<bool>(arg_1.a.c, arg_3.b, arg_1.a.c)), all(vec3<bool>(arg_3.a.c, false, arg_1.b))), !select(func_3(58577u), vec3<bool>(true, arg_1.b, true), vec3<bool>(false, false, arg_3.a.a.x))));
    return 0u;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(arg_1.a.d, _wgslsmith_f_op_f32(f32(-1f) * -1537f)), arg_1.c.d, arg_1.c.d, _wgslsmith_f_op_f32(ceil(520f)));
    var var_1 = u_input.a.zw & firstTrailingBit(select(-u_input.a.xz, vec2<i32>(firstTrailingBit(14259i), u_input.a.x), vec2<bool>(!arg_1.a.a.x, true)));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2772f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * arg_1.a.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c.d * 779f), _wgslsmith_div_f32(arg_1.a.d, -1578f))))), _wgslsmith_f_op_f32(sign(1000f)), true));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1143f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(-arg_1.a.d)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(284f, 1413f, var_2, var_3)))))))));
    return Struct_1(arg_1.c.a, arg_1.b, true || !(-2370f >= arg_1.a.d), _wgslsmith_f_op_f32(-var_2));
}

fn func_1() -> vec2<bool> {
    let var_0 = func_4(_wgslsmith_add_u32(~(~func_2(vec2<i32>(2147483647i, 16742i), Struct_2(Struct_1(vec2<bool>(true, true), false, true, 145f), false, Struct_1(vec2<bool>(false, false), false, false, -990f)), true, Struct_2(Struct_1(vec2<bool>(true, false), false, true, 1572f), true, Struct_1(vec2<bool>(false, true), false, true, -330f)))), 1u), Struct_2(Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)), true, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -752f)))), !all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true)), Struct_1(select(func_3(52174u).xy, vec2<bool>(true, true), false), func_2(u_input.a.wz, Struct_2(Struct_1(vec2<bool>(true, true), true, false, 2119f), true, Struct_1(vec2<bool>(true, false), false, false, -1000f)), false, Struct_2(Struct_1(vec2<bool>(true, true), false, true, -193f), false, Struct_1(vec2<bool>(true, false), false, true, 688f))) != ~0u, true | any(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -118f))))));
    let var_1 = u_input.a.x;
    var var_2 = func_4(select(_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 10104u), countOneBits(1u)), _wgslsmith_mult_u32(select(~60639u, ~1u, true), ~_wgslsmith_mod_u32(1u, 4294967295u)), !(!any(var_0.a))), Struct_2(func_4(_wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(23441u, 0u)), Struct_2(var_0, var_0.b && var_0.c, func_4(0u, Struct_2(var_0, true, Struct_1(vec2<bool>(var_0.b, false), false, var_0.b, var_0.d))))), true, var_0));
    var var_3 = vec3<bool>(true, var_0.b, var_0.c);
    let var_4 = true;
    return var_2.a;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec2<f32>) -> bool {
    let var_0 = -1000f;
    let var_1 = u_input.a.x;
    let var_2 = -1956f;
    var var_3 = vec3<bool>(all(!(!func_1())), any(arg_1), false);
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, var_0) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1342f, -270f), vec2<f32>(1700f, var_2)))))) - arg_2.b);
    return true;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = (arg_0.d <= 1689f) || false;
    var var_1 = true;
    let var_2 = vec3<f32>(arg_0.d, 293f, func_4(~_wgslsmith_mod_u32(1u, 4294967295u) | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u)), Struct_2(Struct_1(vec2<bool>(true, arg_0.c), false, true, _wgslsmith_f_op_f32(f32(-1f) * -504f)), select(func_3(1u).x, true | var_0, false), func_4(abs(0u), Struct_2(Struct_1(vec2<bool>(var_0, var_0), false, true, arg_0.d), false, Struct_1(arg_0.a, arg_0.b, var_0, arg_0.d))))).d);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(vec3<bool>(any(vec3<bool>(false, true, false)), true, false), vec3<bool>(true, true, true), true));
    let var_1 = firstLeadingBit(~(-_wgslsmith_div_i32(-1i | u_input.a.x, ~63058i)));
    let var_2 = func_6(Struct_1(vec2<bool>(var_0.x, var_0.x), !func_5(!vec2<bool>(false, var_0.x), func_1(), Struct_3(923f, vec2<f32>(1636f, -146f), vec3<u32>(4294967295u, 4294967295u, 0u)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-485f, -1080f)))), _wgslsmith_clamp_i32(u_input.a.x, -53234i, -24605i) <= 1i, _wgslsmith_f_op_f32(f32(-1f) * -208f)));
    let var_3 = vec4<i32>(var_1, min(var_1, -1i), var_1, ~(-23885i));
    let var_4 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), firstTrailingBit(vec3<u32>(1u, 34013u, 1u))), 1u) & _wgslsmith_add_u32(_wgslsmith_sub_u32(abs(1u), func_2(u_input.a.xy, Struct_2(var_2, var_2.a.x, var_2), false, Struct_2(var_2, var_2.c, Struct_1(vec2<bool>(var_2.b, var_0.x), var_0.x, true, var_2.d)))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(79626u, 0u, 16719u), vec3<u32>(4294967295u, 19786u, 66051u)), 0u)), _wgslsmith_mult_u32(~(~42588u) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(7938u, 0u, 0u), vec3<u32>(4294967295u, 8982u, 4294967295u)), _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(89391u, 27869u), vec2<u32>(0u, 1u))), ~firstTrailingBit(vec2<u32>(4294967295u, 57866u)))), 9396u);
    let var_5 = vec2<bool>(reverseBits(var_1) == ~(var_1 & u_input.a.x), !all(vec4<bool>(var_0.x, true, var_0.x, var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(var_1), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.d - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2592f) - -766f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_4(0u, Struct_2(var_2, false, Struct_1(var_0.yx, true, var_0.x, var_2.d))).d, var_2.d))), vec4<i32>(18866i, i32(-1i) * -var_1, 60690i, _wgslsmith_mult_i32(var_3.x, var_1)), _wgslsmith_mult_i32(abs(var_3.x), max(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, u_input.a.x), var_3.xzy), var_3.x)));
}

