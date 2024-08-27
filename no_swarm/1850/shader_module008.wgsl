struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_4(Struct_2(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true)), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1950f, -1334f, 666f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(993f, 1788f, 524f), vec3<f32>(1565f, -1155f, -286f))), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))))), 39814i, Struct_2(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2097f, 1424f, -793f, -1743f), vec4<f32>(-167f, 1000f, -171f, 1765f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(622f, _wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_div_f32(108f, 1046f), -643f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-823f, -1060f, -2241f, 505f), vec4<f32>(1000f, -284f, -1219f, -486f))))));
    var_0 = Struct_4(Struct_2(vec3<bool>(_wgslsmith_f_op_f32(-var_0.a.b.a.x) <= _wgslsmith_f_op_f32(sign(var_0.c.b.a.x)), _wgslsmith_div_u32(u_input.b.x, u_input.b.x) <= u_input.c.x, all(var_0.a.a)), var_0.c.b), -(i32(-1i) * -2147483647i), var_0.a, var_0.d);
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d + var_0.d), var_0.d))))), select(vec2<bool>(false, true), select(select(vec2<bool>(var_0.a.a.x, var_0.a.a.x), var_0.a.a.yy, var_0.a.a.x), !vec2<bool>(var_0.a.a.x, var_0.a.a.x), u_input.b.x == ~51707u), var_0.c.a.xy), ~max(u_input.b.xyy, _wgslsmith_add_vec3_u32(u_input.c.zwz, select(u_input.b.wyz, vec3<u32>(u_input.c.x, 4294967295u, 16459u), false))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.d), var_0.d)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2926f, var_0.a.b.a.x, 534f, -2609f))))), u_input.c.x);
    var var_2 = Struct_3(-vec3<i32>(1i >> (~var_1.c.x % 32u), _wgslsmith_mult_i32(u_input.a.x, var_0.b) | _wgslsmith_mod_i32(-18340i, 1i), 7516i), 14022u, u_input.a.x, 13368i);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.b.a.x, _wgslsmith_f_op_f32(sign(-241f))));
    return var_0.a.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: u32, arg_3: vec4<u32>) -> Struct_5 {
    global0 = -1i;
    global0 = i32(-1i) * -47811i;
    var var_0 = Struct_4(Struct_2(select(!select(vec3<bool>(true, true, true), vec3<bool>(arg_1, arg_1, arg_0.x), vec3<bool>(true, false, arg_1)), !vec3<bool>(true, arg_0.x, arg_1), func_3()), Struct_1(vec3<f32>(_wgslsmith_div_f32(967f, -1815f), -287f, _wgslsmith_f_op_f32(floor(-271f))))), u_input.a.x | -(-1i >> (arg_3.x % 32u)), Struct_2(!(!vec3<bool>(true, arg_0.x, false)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(264f, 2705f, -690f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1842f, 1061f, 1015f), vec3<f32>(1000f, 2177f, 1189f), vec3<bool>(arg_0.x, true, arg_0.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(406f, 243f, -1000f, 1887f), vec4<f32>(496f, 2076f, 1000f, -1247f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-359f, 854f, 848f, 1009f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1020f, 1000f, 666f, 784f))))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(995f, -544f, -281f, -763f) * vec4<f32>(-1000f, 659f, -1000f, -269f)), vec4<f32>(755f, -131f, -453f, -1719f), true))))));
    var_0 = Struct_4(Struct_2(!vec3<bool>(-70501i <= var_0.b, arg_1, -470f >= var_0.d.x), var_0.c.b), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(3313i, -62063i, var_0.b), ~vec3<i32>(-35172i, 34351i, 21218i))), Struct_2(var_0.a.a, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d.wwx), _wgslsmith_f_op_vec3_f32(vec3<f32>(-654f, 1384f, -555f) - vec3<f32>(1602f, 327f, -447f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c.b.a.x, _wgslsmith_f_op_f32(min(var_0.c.b.a.x, var_0.c.b.a.x)))) * _wgslsmith_div_f32(-478f, 115f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-409f)) + _wgslsmith_div_f32(var_0.d.x, -327f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d.x, 859f)))), _wgslsmith_f_op_f32(-var_0.a.b.a.x), _wgslsmith_f_op_f32(min(var_0.a.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.b.a.x, var_0.d.x)))))));
    var var_1 = arg_3.x;
    return Struct_5(var_0.d, vec2<bool>(!(_wgslsmith_add_u32(82060u, 1u) > _wgslsmith_add_u32(arg_2, arg_3.x)), !arg_0.x), reverseBits(vec3<u32>(countOneBits(arg_3.x), max(select(1u, 0u, true), 1u), arg_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(var_0.d)))))), 1u);
}

fn func_4(arg_0: Struct_5, arg_1: vec4<u32>) -> u32 {
    global0 = u_input.a.x;
    global0 = 7189i;
    global0 = abs(~54227i);
    let var_0 = arg_0.c.yx;
    let var_1 = reverseBits(select(reverseBits(u_input.b), vec4<u32>(19266u, 62678u, 22686u, var_0.x) << (~vec4<u32>(9755u, 25845u, u_input.c.x, arg_0.c.x) % vec4<u32>(32u)), 842f > _wgslsmith_f_op_f32(select(608f, arg_0.a.x, false))) >> (abs(_wgslsmith_clamp_vec4_u32(u_input.b >> (vec4<u32>(4294967295u, 1u, 4294967295u, arg_0.c.x) % vec4<u32>(32u)), vec4<u32>(0u, u_input.b.x, var_0.x, 4294967295u), vec4<u32>(arg_1.x, arg_1.x, u_input.b.x, arg_1.x))) % vec4<u32>(32u)));
    return ~countOneBits(_wgslsmith_dot_vec3_u32(arg_1.yzz, vec3<u32>(~0u, var_1.x, _wgslsmith_sub_u32(var_1.x, arg_1.x))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    global0 = _wgslsmith_mult_i32(~abs(u_input.a.x ^ -2147483647i), -6098i) & ~(-32847i);
    let var_0 = Struct_3(firstLeadingBit(~_wgslsmith_mod_vec3_i32(arg_2, arg_2)), _wgslsmith_clamp_u32(1u, ~reverseBits(20830u), 0u) >> (func_4(func_2(vec2<bool>(true, true), select(false, false, false), ~23036u, ~vec4<u32>(48333u, u_input.c.x, 0u, arg_3)), u_input.c) % 32u), arg_2.x, ~reverseBits(u_input.a.x));
    global0 = -1i;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(floor(1f))), -584f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.x;
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(526f, -180f), _wgslsmith_f_op_f32(-718f + -1049f))), _wgslsmith_f_op_f32(sign(-292f)))), Struct_1(vec3<f32>(2037f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -738f)))), vec3<i32>(27779i, -1i, _wgslsmith_mult_i32(-40724i, ~(-2147483647i) >> (u_input.c.x % 32u))), _wgslsmith_div_u32(u_input.c.x, ~35626u));
    let var_1 = u_input.c.x;
    var var_2 = Struct_3(reverseBits(-firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) | -min(vec3<i32>(42384i, 1i, -1i), vec3<i32>(u_input.a.x, 6643i, 2147483647i))), _wgslsmith_clamp_u32(~u_input.b.x, var_1, countOneBits(~25798u) & var_1), _wgslsmith_sub_i32(u_input.a.x, 1i), 2147483647i);
    var var_3 = !(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-32843i, u_input.a.x), var_2.a.xx, vec2<bool>(true, true)), u_input.a) <= (25833i | u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-648f, _wgslsmith_mod_vec2_u32(firstLeadingBit(~_wgslsmith_div_vec2_u32(u_input.c.yw, u_input.c.xx)), reverseBits(u_input.b.yz)));
}

