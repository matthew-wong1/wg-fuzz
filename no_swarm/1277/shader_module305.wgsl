struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2109f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-742f + 404f))))), -261f)) * _wgslsmith_f_op_f32(min(-776f, _wgslsmith_f_op_f32(-577f * -1000f))));
    var var_0 = arg_0;
    global0 = 911f;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-471f + _wgslsmith_f_op_f32(trunc(1266f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -367f), -355f))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 809f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1279f * -196f), -1000f))))));
    var var_2 = Struct_1(vec4<bool>(any(!vec4<bool>(arg_0.c.x, var_0.a.x, arg_0.c.x, false)), var_0.c.x, select(any(vec4<bool>(var_0.a.x, arg_0.c.x, true, arg_0.c.x)), any(vec3<bool>(arg_0.c.x, true, true)), !(-338f > var_1.x)), true), abs(~(~(~var_0.b))), !select(select(arg_0.c, select(arg_0.c, vec2<bool>(true, var_0.a.x), arg_0.a.x), vec2<bool>(false, true)), vec2<bool>(true, select(false, arg_0.c.x, false)), arg_0.a.x));
    return -vec2<i32>(~_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-3338i, u_input.a.x, 0i)), -vec3<i32>(u_input.a.x, u_input.b, u_input.b)), ~select(-2147483647i, u_input.b, !var_0.a.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = arg_3;
    var var_1 = all(!(!select(!arg_3.a.wyw, vec3<bool>(var_0.c.x, true, false), vec3<bool>(arg_2.c.x, arg_2.c.x, true))));
    var_1 = select(true, !(!(!arg_3.a.x)), arg_2.c.x);
    var_0 = arg_3;
    var var_2 = arg_3.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(207f)), _wgslsmith_f_op_f32(exp2(arg_0.x)))) - arg_0.x) - arg_0.x) - _wgslsmith_f_op_f32(-arg_0.x));
}

fn func_2(arg_0: bool) -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(step(-973f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(249f, 103f))), vec2<i32>(-1i) * -func_3(Struct_1(vec4<bool>(true, true, false, arg_0), 66032u, vec2<bool>(arg_0, false))), Struct_1(select(vec4<bool>(false, arg_0, arg_0, true), select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(false, false, arg_0, false), vec4<bool>(true, arg_0, arg_0, true)), arg_0), _wgslsmith_clamp_u32(0u, 81714u, 31511u) << (~47036u % 32u), select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, true), arg_0), true)), Struct_1(vec4<bool>(all(vec3<bool>(false, arg_0, false)), all(vec4<bool>(false, true, arg_0, arg_0)), arg_0 & true, any(vec2<bool>(arg_0, true))), 1u, select(!vec2<bool>(true, arg_0), !vec2<bool>(arg_0, false), !vec2<bool>(false, arg_0)))))));
    var var_0 = !vec3<bool>(arg_0, true, arg_0);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-466f, -1233f, true))))))));
    let var_1 = Struct_1(!(!(!(!vec4<bool>(true, var_0.x, var_0.x, false)))), _wgslsmith_dot_vec2_u32(firstTrailingBit(firstLeadingBit(vec2<u32>(1u, 1u))), vec2<u32>(1u, 1u)), select(select(select(var_0.yy, select(var_0.zz, vec2<bool>(true, false), true), select(var_0.yx, var_0.yz, vec2<bool>(false, false))), vec2<bool>(arg_0, any(vec4<bool>(true, true, arg_0, true))), !vec2<bool>(var_0.x, true)), vec2<bool>(select(!var_0.x, arg_0, arg_0), !(!var_0.x)), var_0.xy));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1452f * -727f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(932f + 985f) + _wgslsmith_f_op_f32(abs(-1042f))), 393f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1685f, 1000f, 1637f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1944f, -672f, 815f)))))));
    return vec4<bool>(!all(!(!var_1.a.yxz)), var_0.x, !(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b, u_input.a.x), u_input.a.x ^ u_input.a.x) >= u_input.a.x), all(var_1.a));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -1753f, -1064f, -467f))), vec4<f32>(891f, 1411f, 1000f, 1268f), false))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(710f, -2175f, 397f, -1007f) * vec4<f32>(409f, 430f, 358f, 781f)))))));
    let var_1 = !(!any(select(func_2(true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), func_2(false))));
    let var_2 = Struct_1(!select(select(vec4<bool>(false, false, var_1, var_1), !vec4<bool>(false, var_1, false, var_1), !vec4<bool>(false, true, var_1, var_1)), vec4<bool>(var_1 && var_1, true, var_1, all(vec3<bool>(false, true, var_1))), vec4<bool>(func_2(false).x, false | var_1, false, true)), _wgslsmith_sub_u32(select(1u, 0u, true), 1u), !vec2<bool>(_wgslsmith_div_f32(var_0.x, -829f) < 722f, true));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(672f, 358f) - _wgslsmith_f_op_f32(step(var_0.x, -751f)))) - -241f));
    var var_3 = -489f;
    return Struct_1(select(var_2.a, !select(!var_2.a, !var_2.a, var_2.a), false), ~(~var_2.b), func_2(var_1).wz);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(841f, -2137f, _wgslsmith_f_op_f32(f32(-1f) * -1043f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(711f, 453f, 208f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-774f, 1527f, 787f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2224f, 2374f, -904f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(741f, 1573f, 2733f))))));
    let var_1 = arg_1.a;
    var var_2 = arg_0;
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    let var_3 = firstLeadingBit(-u_input.a);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 815f;
    var var_0 = i32(-1i) * -25703i;
    let var_1 = func_5(true, func_1(), countOneBits(44565u));
    var var_2 = 4294967295u;
    var var_3 = ~(~var_1.b);
    var var_4 = -379f;
    let var_5 = any(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_5(_wgslsmith_f_op_f32(2371f * -2317f) <= _wgslsmith_f_op_f32(sign(1000f)), func_5(true, var_1, 103247u), _wgslsmith_sub_u32(_wgslsmith_add_u32(var_1.b, var_1.b), func_5(false, var_1, 0u).b)).b, firstLeadingBit(var_1.b)), 58622u, vec4<u32>(_wgslsmith_sub_u32(var_1.b, var_1.b), ~4294967295u, 4294967295u, 0u), vec2<f32>(_wgslsmith_f_op_f32(692f - _wgslsmith_f_op_f32(sign(-365f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-315f * _wgslsmith_f_op_f32(func_4(vec2<f32>(-990f, 663f), vec2<i32>(u_input.a.x, -9856i), var_1, Struct_1(vec4<bool>(true, true, true, var_1.a.x), var_1.b, vec2<bool>(true, false)))))))), ~abs(vec4<i32>(-1i, -17209i, u_input.b, u_input.a.x | u_input.b)));
}

