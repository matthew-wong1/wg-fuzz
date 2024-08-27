struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(616f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -416f) - 756f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = Struct_2(Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), var_0, -60524i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1064f, var_0, var_0) - vec4<f32>(-1000f, -2554f, var_0, -423f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, 1549f) - vec4<f32>(var_0, var_0, -1000f, var_0))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1371f, -1266f, 1992f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 220f, -2428f, var_0) * vec4<f32>(var_0, 560f, var_0, 251f)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), true)))), false), abs(min(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(4294967295u, 4294967295u, 1u, 0u)))), true, vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_0), -364f, _wgslsmith_f_op_f32(var_0 * -947f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 183f, var_0)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1987f, 894f, -1000f))))), _wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(0u, 12u)])), true)));
    let var_2 = ~var_1.b.x & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.b.x), var_1.b.zy);
    var var_3 = ~vec3<i32>(arg_0.x, i32(-1i) * -var_1.a.c, max(-2147483647i, -3578i)) ^ vec3<i32>(i32(-1i) * -2147483647i, -2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, var_1.a.c), u_input.a.zx, vec2<bool>(true, var_1.d.x)), -vec2<i32>(0i, u_input.b.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-291i, arg_0.x), vec2<i32>(2147483647i, var_1.a.c)) << (abs(1u) % 32u)));
    var var_4 = abs(u_input.a.x);
    return -1038f;
}

fn func_3(arg_0: Struct_2) -> f32 {
    global0 = array<vec3<f32>, 12>();
    let var_0 = Struct_2(Struct_1(select(vec2<bool>(false, any(vec2<bool>(false, false))), select(vec2<bool>(false, false), arg_0.a.a, arg_0.d.x), arg_0.d.yz), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b)), -260f)), arg_0.a.c, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1225f - arg_0.a.b), _wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.a.x, -1i, u_input.a.x, -1i)))), arg_0.e.x, 638f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1896f))), arg_0.d.x), vec4<u32>(max(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.b.x), arg_0.b.wy), ~4294967295u), 1u), 1802u, arg_0.b.x, select(arg_0.b.x, ~arg_0.b.x, false)), arg_0.c, arg_0.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.x, arg_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x)))));
    var var_1 = _wgslsmith_mult_u32(firstLeadingBit(1u), var_0.b.x);
    let var_2 = Struct_1(!select(var_0.a.a, !var_0.d.yx, ~arg_0.b.x >= 21344u), _wgslsmith_f_op_f32(-arg_0.a.d.x), ~(-(~_wgslsmith_clamp_i32(arg_0.a.c, 0i, 0i))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.d.x), _wgslsmith_f_op_f32(-arg_0.a.b), true & var_0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(arg_0.e.x, 1418f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1388f * -1000f))), -1557f, _wgslsmith_f_op_f32(-var_0.a.b)), var_0.e.x == _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.e.x + 1848f), arg_0.a.d.x));
    var_1 = 13585u;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.e.x)));
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(func_2(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, countOneBits(u_input.a.x), u_input.a.x ^ 49352i, -u_input.b.x), (vec4<i32>(u_input.b.x, 28240i, -8558i, -1i) << (vec4<u32>(4294967295u, 4294967295u, 21956u, 35157u) % vec4<u32>(32u))) << (~vec4<u32>(arg_0.x, 1u, arg_0.x, 23968u) % vec4<u32>(32u)), ~vec4<i32>(-11045i, u_input.a.x, 1i, u_input.b.x) | vec4<i32>(-1i, 1i, u_input.a.x, u_input.b.x)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(241f + -366f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec2<bool>(true, true), -263f, 2147483647i, vec4<f32>(-604f, 1000f, 1153f, 530f), true), vec4<u32>(0u, arg_0.x, arg_0.x, 0u), true, vec3<bool>(false, true, false), vec3<f32>(1276f, 498f, 1572f)))))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(~vec4<i32>(u_input.a.x, u_input.b.x, u_input.a.x, -45793i))), 1f, select(true, any(vec2<bool>(true, false)), arg_0.x >= arg_0.x))) + _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec2<bool>(false, false), 734f, u_input.b.x, vec4<f32>(-1000f, 859f, 358f, 133f), false), vec4<u32>(3469u, 1u, 1u, 1u), true, vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, arg_0.x), 12u)])))));
    var var_1 = Struct_2(Struct_1(!vec2<bool>(any(vec2<bool>(true, true)), true), _wgslsmith_f_op_f32(-1955f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -324f) - -715f)), min(-u_input.b.x, _wgslsmith_mod_i32(-2251i, u_input.b.x) << (~arg_0.x % 32u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1476f, -341f, 415f), vec4<f32>(1036f, -2178f, 1572f, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1271f, -3252f, 187f, 1000f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-653f, -513f, 157f, -1678f) * vec4<f32>(540f, 1178f, 869f, 1641f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2488f, 1253f, -716f, 115f) + vec4<f32>(-392f, 1240f, -664f, 1512f)), vec4<bool>(false, false, true, false))))), !any(select(vec2<bool>(false, false), vec2<bool>(false, false), false))), vec4<u32>(~_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1574u, 33326u, arg_0.x, 29607u), vec4<u32>(arg_0.x, 4294967295u, 2637u, arg_0.x))), ~_wgslsmith_dot_vec2_u32(~arg_0.yz, arg_0.yz), reverseBits(4294967295u), countOneBits(_wgslsmith_mod_u32(~1u, _wgslsmith_mult_u32(arg_0.x, 4294967295u)))), true, !(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), -1i != u_input.a.x)), vec3<f32>(237f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1510f)) - -617f))), _wgslsmith_f_op_f32(-1069f + 1164f)));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * 580f), _wgslsmith_f_op_f32(abs(var_1.a.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(392f)) + 428f))))));
    var_0 = _wgslsmith_f_op_f32(var_1.e.x * 1000f);
    return Struct_2(Struct_1(vec2<bool>(-u_input.a.x == _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.c, u_input.b.x, 2147483647i, -1i), vec4<i32>(-1i, var_1.a.c, var_1.a.c, u_input.a.x)), var_1.a.b < _wgslsmith_f_op_f32(func_3(Struct_2(var_1.a, var_1.b, var_1.a.e, var_1.d, vec3<f32>(var_1.a.b, -1185f, 301f))))), _wgslsmith_f_op_f32(-794f - var_1.e.x), -(~(-u_input.a.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a.d) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2204f, 590f, 205f, var_1.a.d.x), vec4<f32>(var_1.a.d.x, -1004f, -343f, -1585f), var_1.d.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.d.x), var_1.a.b, var_1.a.d.x, var_1.e.x), select(select(vec4<bool>(var_1.c, false, var_1.d.x, var_1.a.e), vec4<bool>(true, var_1.a.a.x, false, var_1.a.a.x), vec4<bool>(false, var_1.d.x, var_1.d.x, var_1.c)), vec4<bool>(var_1.d.x, true, true, true), true))), all(!(!vec3<bool>(true, var_1.d.x, var_1.a.e)))), var_1.b, any(select(select(var_1.d, vec3<bool>(var_1.a.e, var_1.a.e, false), var_1.c), select(var_1.d, vec3<bool>(true, var_1.d.x, false), var_1.a.a.x), !vec3<bool>(false, var_1.d.x, true))) | any(!(!var_1.d.zy)), vec3<bool>(all(vec3<bool>(var_1.d.x, var_1.c, false)), true, false), _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(var_1.b.x ^ 29805u, 12u)], _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.e.x, var_1.e.x, var_1.a.d.x)))))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(func_1(arg_0.b.wyz).a, arg_0.b, func_1(arg_0.b.zxx).d.x, vec3<bool>(all(select(!arg_1.a, vec2<bool>(true, false), arg_0.d.zz)), arg_1.a.x, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -299f)), arg_0.a.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_1.d.x)))))));
    var var_1 = (0u | (~arg_0.b.x << (var_0.b.x % 32u))) << (_wgslsmith_add_u32(max(_wgslsmith_sub_u32(firstLeadingBit(arg_0.b.x), arg_0.b.x), firstLeadingBit(66516u | var_0.b.x)), 56672u) % 32u);
    global0 = array<vec3<f32>, 12>();
    var var_2 = true;
    var var_3 = !select(vec4<bool>(~arg_0.b.x == 25395u, true, arg_0.d.x, _wgslsmith_f_op_f32(arg_1.d.x + arg_0.e.x) == _wgslsmith_f_op_f32(arg_1.d.x * arg_1.d.x)), vec4<bool>(arg_1.e, true, any(!vec4<bool>(false, var_0.a.e, var_0.d.x, arg_0.c)), arg_1.e), !select(!vec4<bool>(false, false, var_0.a.a.x, var_0.d.x), select(vec4<bool>(true, var_0.c, false, var_0.a.e), vec4<bool>(false, false, true, false), vec4<bool>(true, true, var_0.c, var_0.a.a.x)), any(vec4<bool>(true, var_0.d.x, arg_0.a.a.x, true))));
    return arg_0.a;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    return 60456u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = ~(func_5(~(-vec4<i32>(0i, var_0, u_input.a.x, u_input.a.x)), func_4(func_1(vec3<u32>(78235u, 12690u, 0u)), Struct_1(vec2<bool>(false, false), 1094f, u_input.b.x, vec4<f32>(1488f, -1910f, 392f, -156f), false))) ^ _wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(15066u, 0u, 10422u), vec3<u32>(25312u, 51647u, 4294967295u)))));
    global0 = array<vec3<f32>, 12>();
    var var_2 = func_4(func_1((~vec3<u32>(48887u, 35860u, var_1) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1, 74642u, 66777u), vec3<u32>(var_1, 11310u, var_1), vec3<u32>(var_1, var_1, var_1)) % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(var_1, 33785u, var_1) | vec3<u32>(0u, var_1, var_1), vec3<u32>(var_1, 41330u, var_1)) % vec3<u32>(32u))), Struct_1(select(func_1(vec3<u32>(88044u, var_1, var_1) >> (vec3<u32>(var_1, var_1, var_1) % vec3<u32>(32u))).d.xy, vec2<bool>(-1i == u_input.a.x, true), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1311f + -137f))), u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-664f)), -454f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1034f, 1000f))), _wgslsmith_f_op_f32(485f - -1307f), -2130f), true));
    var_2 = func_1(vec3<u32>(~1u, ~min(_wgslsmith_div_u32(31460u, 1852u), var_1), var_1)).a;
    let var_3 = vec3<f32>(var_2.b, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.d.x, 422f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(sign(var_2.d.x)), func_1(vec3<u32>(var_1, 2909u, var_1)).c)), var_2.b))), var_2.b);
    global0 = array<vec3<f32>, 12>();
    let var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b + var_3.x), var_2.d.x), func_1(~vec3<u32>(var_1, var_1, 64714u)).e.x, var_2.d.x, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_2.d)))), reverseBits(~min(vec3<i32>(15538i, -17589i, 41552i), ~u_input.a)), 0u);
}

