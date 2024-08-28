struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 49416u;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-387f * 953f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1000f, 976f, global1.d)))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - _wgslsmith_f_op_f32(-1053f - 483f)), _wgslsmith_f_op_f32(f32(-1f) * -889f))));
    let var_2 = Struct_1(max(-arg_2.c, u_input.b.x), 2769i, -(~_wgslsmith_div_i32(arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, arg_0, 7730i, arg_0), vec4<i32>(13437i, arg_0, arg_1.b, arg_1.a)))), false, select(vec4<bool>(global1.e.x, true, all(vec3<bool>(false, false, arg_1.e.x)) && true, arg_2.e.x), !arg_2.e, true));
    global0 = firstLeadingBit(1u);
    let var_3 = var_2.d;
    return _wgslsmith_mult_u32(min(arg_3, _wgslsmith_dot_vec2_u32(vec2<u32>(55229u, arg_3), vec2<u32>(1u, 0u))), abs(arg_3)) << (~arg_3 % 32u);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = vec2<bool>(!(~arg_2.b >= var_0.c), !arg_2.e.x);
    global1 = arg_1;
    global1 = Struct_1(arg_1.c, -5182i, abs(6421i << (func_3(arg_2.b, Struct_1(89740i, arg_1.c, arg_2.b, true, arg_1.e), var_0, max(20545u, 0u)) % 32u)), !all(!global1.e.wzx) | true, select(vec4<bool>(all(global1.e.xw), true, true, !var_1.x | true), !vec4<bool>(any(vec4<bool>(var_0.d, false, var_1.x, arg_1.d)), select(var_0.e.x, arg_0, true), true, true), !(!(!vec4<bool>(false, arg_1.d, global1.e.x, arg_0)))));
    global0 = _wgslsmith_div_u32(func_3(_wgslsmith_dot_vec3_i32(-u_input.b, _wgslsmith_mult_vec3_i32(vec3<i32>(global1.b, var_0.a, var_0.b), vec3<i32>(global1.b, -1i, var_0.c))), var_0, Struct_1(-18476i, reverseBits(20887i), -2147483647i, true, !vec4<bool>(false, true, true, global1.e.x)), 1u) & 90184u, 4294967295u);
    return Struct_1(~0i, abs(max(_wgslsmith_sub_i32(~(-2147483647i), -arg_1.c), ~(i32(-1i) * -34391i))), select(arg_1.b, firstLeadingBit(global1.b & var_0.a) | _wgslsmith_add_i32(-6742i << (0u % 32u), select(-55549i, 1i, var_0.e.x)), true), (select(0i, abs(-1i), true) ^ _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 0i, arg_2.c), vec4<i32>(arg_2.c, u_input.a.x, global1.b, u_input.c)))) != _wgslsmith_mod_i32(var_0.a, arg_1.a), vec4<bool>(arg_0, all(global1.e.yxz), !all(select(arg_2.e.wx, vec2<bool>(arg_1.e.x, true), false)), all(vec4<bool>(!arg_0, false, arg_0 & global1.e.x, arg_1.e.x))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = func_2(true, arg_0, Struct_1(~reverseBits(23683i), u_input.a.x, _wgslsmith_sub_i32(global1.b, arg_2.c), !(-global1.a >= _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), vec4<bool>(global1.d, _wgslsmith_f_op_f32(sign(arg_1)) > arg_1, true, arg_0.d)));
    var var_1 = firstTrailingBit(var_0.a);
    global0 = 1u;
    var var_2 = arg_0;
    var_2 = Struct_1(_wgslsmith_dot_vec3_i32(u_input.b, ~(-firstLeadingBit(u_input.b))), _wgslsmith_add_i32(-5635i, -(~(-17934i))), abs(~arg_2.b), select(arg_1 < -1158f, global1.d, true), vec4<bool>(global1.e.x, false, any(arg_2.e), !select(false, !arg_0.d, true)));
    return ~select(vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(12558u, 18793u, 0u, 51516u), vec4<u32>(16926u, 4012u, 15756u, 59534u))), ~(~4294967295u), _wgslsmith_add_u32(1u, 1u)), _wgslsmith_div_vec3_u32(abs(vec3<u32>(0u, 4294967295u, 0u)), abs(vec3<u32>(1545u, 106610u, 28880u))), !var_0.d || (1u <= func_3(-2147483647i, arg_2, arg_2, 30229u)));
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<bool>(_wgslsmith_dot_vec3_u32(func_4(func_2(false, Struct_1(1i, u_input.a.x, u_input.b.x, global1.d, global1.e), Struct_1(u_input.a.x, global1.b, -6563i, false, vec4<bool>(global1.d, true, global1.d, global1.d))), _wgslsmith_f_op_f32(step(1044f, -198f)), Struct_1(1i, global1.a, 7824i, true, global1.e)), vec3<u32>(39674u, ~66345u, 0u)) >= ~(~1u), global1.e.x && any(select(global1.e.zy, select(global1.e.wx, global1.e.yx, vec2<bool>(global1.d, global1.d)), select(vec2<bool>(false, global1.e.x), vec2<bool>(global1.e.x, false), true))));
    global0 = _wgslsmith_add_u32(~(~1u), ~(~(~90740u))) | func_3(u_input.c, func_2(var_0.x, func_2(var_0.x, func_2(true, Struct_1(1i, global1.b, global1.a, false, global1.e), Struct_1(global1.a, global1.c, u_input.a.x, true, vec4<bool>(global1.e.x, true, true, true))), func_2(var_0.x, Struct_1(u_input.b.x, global1.b, global1.a, global1.e.x, global1.e), Struct_1(u_input.b.x, -15291i, 16626i, var_0.x, vec4<bool>(global1.d, global1.e.x, global1.e.x, false)))), Struct_1(u_input.b.x, global1.a, 2147483647i, false, vec4<bool>(global1.e.x, false, var_0.x, true))), func_2(false, func_2(false != var_0.x, Struct_1(global1.c, 12884i, u_input.a.x, global1.d, global1.e), Struct_1(961i, 0i, 1i, global1.e.x, global1.e)), func_2(true, func_2(var_0.x, Struct_1(-1i, global1.c, -2147483647i, false, vec4<bool>(true, true, var_0.x, var_0.x)), Struct_1(-1i, -2147483647i, u_input.a.x, false, global1.e)), Struct_1(global1.c, 2147483647i, -11196i, false, global1.e))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 10305u, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 59665u), vec3<u32>(1u, 19141u, 124992u), vec3<u32>(90027u, 8714u, 4294967295u))));
    var var_1 = _wgslsmith_f_op_f32(-466f - _wgslsmith_div_f32(-1376f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-849f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_2 = func_2(false, Struct_1(-47586i, u_input.a.x, firstLeadingBit(global1.a) | -26611i, true && all(!vec2<bool>(global1.e.x, false)), !vec4<bool>(true, any(vec4<bool>(var_0.x, true, true, false)), !global1.d, global1.d)), func_2(true, Struct_1(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.yz, vec2<i32>(2147483647i, 1i) & vec2<i32>(global1.b, u_input.c)), -(~1i), !(9573i >= u_input.c), vec4<bool>(!var_0.x, global1.e.x && false, true, any(vec2<bool>(var_0.x, true)))), Struct_1(_wgslsmith_mod_i32(u_input.c, _wgslsmith_add_i32(u_input.b.x, u_input.b.x)), global1.a, -17379i, true, select(select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(false, true, true, false), global1.d), !vec4<bool>(global1.e.x, var_0.x, var_0.x, global1.d), any(vec4<bool>(false, global1.d, false, true))))));
    global0 = func_3(u_input.b.x ^ max(var_2.c >> (0u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -30046i, -10480i), u_input.b)), Struct_1(-9947i, ~(-var_2.a), global1.a, any(var_2.e.zy) == false, select(global1.e, vec4<bool>(global1.e.x, var_0.x, false, false), vec4<bool>(var_2.e.x, var_2.d, var_2.e.x, false))), func_2(var_2.e.x, func_2(true, Struct_1(u_input.a.x, -14720i, -7749i, var_2.d, global1.e), Struct_1(-54156i, global1.b, var_2.b, var_2.d, vec4<bool>(false, true, false, var_0.x))), Struct_1(_wgslsmith_div_i32(global1.a, global1.a), 2147483647i, ~1i, any(vec3<bool>(var_0.x, false, false)), !global1.e)), 1u) << ((_wgslsmith_mult_u32(~firstTrailingBit(4294967295u), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, 0u, 6760u, 1u)), ~vec4<u32>(1u, 1u, 4294967295u, 4294967295u))) << (~1u % 32u)) % 32u);
    return func_2(all(var_2.e.zw), func_2(false, Struct_1(firstLeadingBit(countOneBits(global1.a)), reverseBits(u_input.a.x), countOneBits(abs(-43933i)), func_2(var_0.x, Struct_1(var_2.c, 2147483647i, global1.a, global1.e.x, vec4<bool>(var_0.x, global1.d, var_0.x, true)), func_2(var_0.x, Struct_1(0i, global1.b, 7242i, false, vec4<bool>(false, global1.e.x, global1.e.x, true)), Struct_1(6724i, global1.c, global1.b, true, vec4<bool>(var_0.x, var_2.e.x, var_0.x, false)))).d, var_2.e), Struct_1(countOneBits(1i), global1.c, reverseBits(global1.c), false, !select(global1.e, var_2.e, global1.e))), func_2(all(vec3<bool>(false, false, var_0.x)) || any(vec3<bool>(global1.e.x, var_2.e.x, true)), Struct_1(max(var_2.c, max(u_input.c, var_2.a)), ~(~global1.c), _wgslsmith_mod_i32(~u_input.b.x, max(u_input.a.x, u_input.a.x)), select(u_input.c < -1i, false, -1i >= global1.b), vec4<bool>(true, any(global1.e), false, true)), func_2(!var_0.x, func_2(any(global1.e), func_2(true, Struct_1(global1.a, global1.b, global1.c, false, vec4<bool>(global1.e.x, false, false, var_2.d)), Struct_1(u_input.a.x, global1.c, u_input.a.x, global1.e.x, var_2.e)), Struct_1(global1.a, 2147483647i, -1i, false, vec4<bool>(true, false, global1.d, true))), Struct_1(-2147483647i, -u_input.b.x, global1.b, global1.e.x, !global1.e))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    global1 = func_2(all(select(!select(vec4<bool>(global1.d, true, false, false), vec4<bool>(global1.d, global1.e.x, true, global1.d), global1.e.x), !select(global1.e, vec4<bool>(global1.e.x, false, global1.d, true), vec4<bool>(false, true, false, true)), true || (10524i >= global1.b))), func_2(!(!(!global1.e.x)), Struct_1(~(-u_input.a.x), 26366i, 37339i, any(global1.e.xy), !vec4<bool>(global1.d, true, global1.d, true)), func_2(true, func_2(true, Struct_1(u_input.c, global1.a, 37804i, false, global1.e), func_1()), Struct_1(abs(global1.c), u_input.a.x, -global1.c, true, vec4<bool>(true, global1.d, false, global1.e.x)))), Struct_1(_wgslsmith_mod_i32(min(func_1().b, 0i), -2147483647i), global1.c, ~select(firstTrailingBit(2147483647i), u_input.a.x, !global1.d), false, vec4<bool>(select(true, all(vec3<bool>(true, true, global1.e.x)), func_1().d), global1.e.x, true, func_1().d)));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-542f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-887f)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-804f, -181f, true)), _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_div_f32(1000f, 134f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-767f, 1000f, 393f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1647f, 443f, -973f) + vec3<f32>(960f, -1105f, -1276f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(704f, -848f, 159f) * vec3<f32>(656f, 1000f, 1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-759f, 104f, -470f) - vec3<f32>(-570f, -1643f, -2386f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(628f, -314f, 558f))))))));
    global1 = Struct_1(~(-1i), u_input.a.x, _wgslsmith_sub_i32(-1i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global1.b, global1.c, 1i), min(vec4<i32>(global1.c, 1i, u_input.a.x, u_input.b.x), vec4<i32>(global1.a, -1i, u_input.c, global1.a))))), !(-261f == var_1.x), func_1().e);
    let var_2 = select(~vec2<u32>(1u, 1u), vec2<u32>(~(~_wgslsmith_sub_u32(46564u, 42672u)), max(reverseBits(1u), _wgslsmith_clamp_u32(0u, 51354u, 1u) ^ 66582u)), !global1.d);
    var var_3 = vec3<u32>(select(min(var_2.x, ~(~45190u)), 1u, !(var_1.x == -1571f)), _wgslsmith_clamp_u32(1u >> (_wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, var_2.x, var_2.x, 4294967295u), vec4<u32>(var_2.x, var_2.x, 25201u, 33132u)), ~vec4<u32>(var_2.x, 70351u, var_2.x, var_2.x)) % 32u), func_3(_wgslsmith_sub_i32(~global1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-10153i, -32221i, 60042i, u_input.b.x), vec4<i32>(u_input.a.x, global1.c, -6800i, global1.c))), Struct_1(-1i, u_input.b.x, 1i, global1.e.x, func_1().e), Struct_1(~global1.c, -2147483647i, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), true, select(vec4<bool>(global1.d, global1.d, global1.d, global1.e.x), global1.e, vec4<bool>(global1.e.x, false, true, global1.e.x))), _wgslsmith_add_u32(4294967295u, ~var_2.x)), var_2.x), countOneBits(var_2.x));
    var var_4 = Struct_1(i32(-1i) * -1i, global1.b, u_input.a.x, false || global1.d, !select(vec4<bool>(true, true, false, global1.e.x), !(!vec4<bool>(global1.d, global1.e.x, true, global1.d)), select(select(global1.e, global1.e, global1.e.x), !global1.e, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.zx))), _wgslsmith_f_op_vec3_f32(sign(var_1)), abs(vec3<u32>(1u, var_3.x, 45899u)), _wgslsmith_sub_vec2_u32(select(var_2, firstTrailingBit(~var_2), vec2<bool>(true, true)), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(127765u, 18867u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 4294967295u, 31127u, var_2.x), vec4<u32>(var_2.x, var_3.x, var_3.x, 6648u))), var_2)));
}

