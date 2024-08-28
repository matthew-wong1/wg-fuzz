struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_3,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(9695u, 53166u, 39601u), vec3<u32>(37709u, 30932u, 7529u), vec3<u32>(46795u, 4294967295u, 74860u), vec3<u32>(1u, 1u, 1u));

var<private> global1: vec3<i32> = vec3<i32>(-1i, -13001i, 2147483647i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<f32>) -> bool {
    var var_0 = (u_input.e >> (reverseBits(min(~1u, u_input.a << (4294967295u % 32u))) % 32u)) <= (i32(-1i) * -69005i);
    let var_1 = all(vec2<bool>(!(!(global1.x < -1i)), true));
    var var_2 = Struct_4(vec4<i32>(10594i, ~_wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(-1i, -1613i), _wgslsmith_mult_i32(u_input.e, 1i)), _wgslsmith_mult_i32(1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(936u, 17870u, 0u, 49087u), vec4<u32>(u_input.d, 0u, u_input.d, 0u)) % 32u), global1.x), u_input.b.x), _wgslsmith_sub_vec2_u32(~abs(vec2<u32>(12894u, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(u_input.a, u_input.a))) << (~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, u_input.a), vec2<u32>(4294967295u, u_input.d))) % vec2<u32>(32u)), Struct_3(Struct_2(Struct_1(vec2<f32>(-1326f, arg_1), vec4<bool>(true, var_1, false, true))), Struct_2(Struct_1(vec2<f32>(arg_1, -795f), vec4<bool>(var_1, true, false, false))), _wgslsmith_mod_u32(~67968u, 50031u) >> (u_input.a % 32u), Struct_1(vec2<f32>(_wgslsmith_div_f32(arg_2.x, -2064f), _wgslsmith_f_op_f32(-arg_2.x)), vec4<bool>(var_1, all(vec4<bool>(false, var_1, false, false)), true, u_input.d >= u_input.a))), -1698f, u_input.d | u_input.d);
    var var_3 = var_2.c.b;
    var_0 = var_3.a.b.x || true;
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>) -> vec2<u32> {
    global0 = array<vec3<u32>, 4>();
    return arg_2.yy;
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: vec3<i32>) -> vec3<bool> {
    var var_0 = u_input.b.wxy;
    global0 = array<vec3<u32>, 4>();
    var var_1 = Struct_4(firstTrailingBit(u_input.b), func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(673f, -289f), arg_0.a.a.a, false)), arg_0.a.a.b)), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(arg_0.b.a.a, vec2<f32>(-1194f, arg_0.b.a.a.x)), vec2<f32>(arg_0.d.a.x, arg_0.d.a.x), arg_0.d.b.x)), vec4<bool>(arg_1, arg_0.a.a.b.x, func_3(vec4<f32>(arg_0.b.a.a.x, 410f, -1725f, 620f), arg_0.a.a.a.x, vec4<f32>(arg_0.a.a.a.x, 662f, -1082f, arg_0.d.a.x)), false && arg_0.b.a.b.x)), global0[_wgslsmith_index_u32(78102u, 4u)]), Struct_3(arg_0.b, arg_0.b, ~(~1u), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(291f, arg_0.a.a.a.x)) * vec2<f32>(1000f, 691f)), vec4<bool>(func_3(vec4<f32>(arg_0.d.a.x, arg_0.d.a.x, 403f, 426f), arg_0.a.a.a.x, vec4<f32>(arg_0.a.a.a.x, -1602f, arg_0.a.a.a.x, -417f)), arg_0.c < u_input.a, true, arg_0.c > 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_f_op_f32(arg_0.a.a.a.x + arg_0.d.a.x))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(301f, arg_0.b.a.a.x))))), u_input.a);
    return var_1.c.d.b.zxy;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.a.a.x, arg_3.b.a.a.x, arg_1.a.x, 324f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.a.x, -403f, arg_1.a.x, arg_1.a.x))))), select(vec4<bool>(arg_2, true, arg_2, arg_0.x), vec4<bool>(arg_0.x, arg_3.d.b.x, false, false), false)))))));
    global1 = u_input.b.zzz;
    global0 = array<vec3<u32>, 4>();
    let var_1 = var_0.x;
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(253f, 1061f, -1119f, -1221f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(903f, arg_1.a.x, -799f, 593f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -1000f) * vec4<f32>(arg_1.a.x, arg_1.a.x, var_0.x, 990f)), false)), true))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.b.a.a.x), _wgslsmith_f_op_f32(-157f - var_0.x), arg_1.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_3.b.a.a.x)), _wgslsmith_f_op_f32(step(var_0.x, var_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1080f)), _wgslsmith_f_op_f32(abs(-190f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-850f))), 1322f), 1i < global1.x)));
    return Struct_2(arg_1);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_add_u32(reverseBits(_wgslsmith_mod_u32(1u, 8359u)), ~4294967295u);
    var var_1 = _wgslsmith_clamp_i32(u_input.b.x, u_input.e, abs(0i));
    let var_2 = func_5(arg_2.d.b.xz, Struct_1(arg_2.a.a.a, vec4<bool>(any(func_2(Struct_3(Struct_2(arg_2.a.a), arg_2.a, u_input.d, Struct_1(arg_2.b.a.a, vec4<bool>(arg_3, true, arg_1.x, arg_2.a.a.b.x))), true, u_input.b.wxz)), true | all(vec4<bool>(arg_1.x, arg_2.a.a.b.x, false, arg_2.b.a.b.x)), true, _wgslsmith_f_op_f32(-877f * -1000f) == _wgslsmith_f_op_f32(arg_0 - 401f))), !(_wgslsmith_dot_vec4_i32(~vec4<i32>(1120i, 54161i, u_input.e, u_input.c), ~u_input.b) >= firstTrailingBit(-u_input.c)), arg_2);
    var var_3 = ~(~(~(~vec2<u32>(arg_2.c, u_input.a))) & vec2<u32>(select(0u | arg_2.c, max(u_input.d, 15721u), !arg_3), ~(~var_0)));
    return arg_2.b.a.b.wyw;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 4>();
    let var_0 = select(select(vec3<bool>(true, true, select(u_input.a >= 0u, any(vec3<bool>(true, true, false)), true)), vec3<bool>(true, true, true), !select(func_1(1178f, vec4<bool>(false, true, false, true), Struct_3(Struct_2(Struct_1(vec2<f32>(2696f, -1000f), vec4<bool>(false, false, true, true))), Struct_2(Struct_1(vec2<f32>(-253f, -1094f), vec4<bool>(false, true, true, true))), u_input.d, Struct_1(vec2<f32>(-1000f, -139f), vec4<bool>(true, true, true, false))), false), vec3<bool>(true, true, false), func_5(vec2<bool>(false, true), Struct_1(vec2<f32>(943f, -1000f), vec4<bool>(false, false, true, false)), true, Struct_3(Struct_2(Struct_1(vec2<f32>(779f, -181f), vec4<bool>(false, false, false, true))), Struct_2(Struct_1(vec2<f32>(1194f, -762f), vec4<bool>(false, false, false, true))), 9661u, Struct_1(vec2<f32>(-1426f, 1597f), vec4<bool>(false, false, false, true)))).a.b.xwx)), !select(!func_2(Struct_3(Struct_2(Struct_1(vec2<f32>(1644f, -1747f), vec4<bool>(false, true, false, false))), Struct_2(Struct_1(vec2<f32>(701f, 643f), vec4<bool>(true, false, true, false))), 6505u, Struct_1(vec2<f32>(407f, -2566f), vec4<bool>(true, true, false, false))), true, vec3<i32>(-13296i, 2275i, -56363i)), vec3<bool>(func_1(-1000f, vec4<bool>(true, true, true, false), Struct_3(Struct_2(Struct_1(vec2<f32>(-465f, 1000f), vec4<bool>(false, true, true, false))), Struct_2(Struct_1(vec2<f32>(1000f, -721f), vec4<bool>(false, false, false, true))), 7709u, Struct_1(vec2<f32>(838f, -1350f), vec4<bool>(false, false, false, false))), false).x, false, func_5(vec2<bool>(false, true), Struct_1(vec2<f32>(-904f, 3438f), vec4<bool>(true, false, false, false)), false, Struct_3(Struct_2(Struct_1(vec2<f32>(-920f, 216f), vec4<bool>(true, true, false, false))), Struct_2(Struct_1(vec2<f32>(202f, -510f), vec4<bool>(true, false, false, false))), u_input.d, Struct_1(vec2<f32>(428f, 1240f), vec4<bool>(false, true, false, false)))).a.b.x), vec3<bool>(false, true, func_1(-1046f, vec4<bool>(true, false, false, true), Struct_3(Struct_2(Struct_1(vec2<f32>(273f, 1000f), vec4<bool>(true, false, true, false))), Struct_2(Struct_1(vec2<f32>(1018f, -303f), vec4<bool>(false, false, false, false))), 19409u, Struct_1(vec2<f32>(575f, -1009f), vec4<bool>(false, true, false, true))), true).x)), true);
    var var_1 = Struct_3(func_5(!(!vec2<bool>(true, var_0.x)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-478f, -1108f) + vec2<f32>(1000f, -811f)) * func_5(vec2<bool>(false, var_0.x), Struct_1(vec2<f32>(-1110f, -340f), vec4<bool>(false, var_0.x, var_0.x, true)), var_0.x, Struct_3(Struct_2(Struct_1(vec2<f32>(292f, -581f), vec4<bool>(var_0.x, false, true, true))), Struct_2(Struct_1(vec2<f32>(1000f, -796f), vec4<bool>(var_0.x, false, true, var_0.x))), u_input.d, Struct_1(vec2<f32>(332f, 275f), vec4<bool>(var_0.x, var_0.x, true, var_0.x)))).a.a), vec4<bool>(false, true, true, true)), var_0.x, Struct_3(func_5(!var_0.yz, Struct_1(vec2<f32>(627f, -231f), vec4<bool>(var_0.x, true, false, var_0.x)), true, Struct_3(Struct_2(Struct_1(vec2<f32>(-647f, 1790f), vec4<bool>(var_0.x, false, true, true))), Struct_2(Struct_1(vec2<f32>(-286f, 1678f), vec4<bool>(var_0.x, false, false, var_0.x))), 41627u, Struct_1(vec2<f32>(-776f, 1000f), vec4<bool>(var_0.x, var_0.x, var_0.x, false)))), Struct_2(func_5(var_0.yy, Struct_1(vec2<f32>(832f, 591f), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), false, Struct_3(Struct_2(Struct_1(vec2<f32>(-1774f, 1530f), vec4<bool>(true, false, var_0.x, var_0.x))), Struct_2(Struct_1(vec2<f32>(1578f, 2200f), vec4<bool>(true, true, true, false))), u_input.d, Struct_1(vec2<f32>(-1000f, 1401f), vec4<bool>(var_0.x, var_0.x, true, true)))).a), 46995u, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-532f, 1242f) + vec2<f32>(-1000f, -1000f)), !vec4<bool>(var_0.x, true, var_0.x, true)))), Struct_2(Struct_1(func_5(vec2<bool>(false, true), func_5(var_0.zy, Struct_1(vec2<f32>(1387f, 1006f), vec4<bool>(var_0.x, false, var_0.x, false)), true, Struct_3(Struct_2(Struct_1(vec2<f32>(1077f, -835f), vec4<bool>(false, false, true, true))), Struct_2(Struct_1(vec2<f32>(1510f, 808f), vec4<bool>(var_0.x, var_0.x, false, false))), 0u, Struct_1(vec2<f32>(1434f, -1000f), vec4<bool>(var_0.x, false, var_0.x, false)))).a, var_0.x, Struct_3(Struct_2(Struct_1(vec2<f32>(861f, -572f), vec4<bool>(true, true, true, var_0.x))), Struct_2(Struct_1(vec2<f32>(-237f, 205f), vec4<bool>(false, true, var_0.x, var_0.x))), u_input.a, Struct_1(vec2<f32>(-199f, 363f), vec4<bool>(var_0.x, var_0.x, false, false)))).a.a, !vec4<bool>(var_0.x, var_0.x, true, var_0.x))), abs(~countOneBits(~u_input.d)), func_5(var_0.yz, func_5(!func_5(vec2<bool>(true, var_0.x), Struct_1(vec2<f32>(-1264f, 1488f), vec4<bool>(var_0.x, true, true, var_0.x)), true, Struct_3(Struct_2(Struct_1(vec2<f32>(298f, 434f), vec4<bool>(var_0.x, var_0.x, var_0.x, false))), Struct_2(Struct_1(vec2<f32>(794f, 172f), vec4<bool>(var_0.x, false, true, var_0.x))), u_input.a, Struct_1(vec2<f32>(-722f, -168f), vec4<bool>(var_0.x, var_0.x, true, var_0.x)))).a.b.xz, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-470f, -2260f) * vec2<f32>(874f, 331f)), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), true, Struct_3(func_5(vec2<bool>(var_0.x, var_0.x), Struct_1(vec2<f32>(-179f, -999f), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), true, Struct_3(Struct_2(Struct_1(vec2<f32>(520f, 1324f), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), Struct_2(Struct_1(vec2<f32>(-620f, -1897f), vec4<bool>(false, var_0.x, false, var_0.x))), u_input.a, Struct_1(vec2<f32>(-156f, -359f), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))), Struct_2(Struct_1(vec2<f32>(103f, 173f), vec4<bool>(false, var_0.x, var_0.x, var_0.x))), 30285u, func_5(var_0.zy, Struct_1(vec2<f32>(818f, 456f), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), var_0.x, Struct_3(Struct_2(Struct_1(vec2<f32>(970f, -1000f), vec4<bool>(var_0.x, false, false, true))), Struct_2(Struct_1(vec2<f32>(-1115f, 476f), vec4<bool>(var_0.x, true, true, true))), u_input.a, Struct_1(vec2<f32>(-681f, 1503f), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))).a)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -973f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(373f))), Struct_3(Struct_2(func_5(vec2<bool>(false, true), Struct_1(vec2<f32>(165f, -1257f), vec4<bool>(var_0.x, false, false, true)), true, Struct_3(Struct_2(Struct_1(vec2<f32>(-1186f, 722f), vec4<bool>(true, false, false, false))), Struct_2(Struct_1(vec2<f32>(290f, 1000f), vec4<bool>(true, false, var_0.x, false))), u_input.a, Struct_1(vec2<f32>(1559f, -428f), vec4<bool>(var_0.x, true, true, var_0.x)))).a), func_5(vec2<bool>(true, true), Struct_1(vec2<f32>(738f, 1000f), vec4<bool>(true, var_0.x, true, var_0.x)), all(vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(1256f, 997f), vec4<bool>(true, var_0.x, var_0.x, true))), Struct_2(Struct_1(vec2<f32>(342f, 1000f), vec4<bool>(true, var_0.x, false, false))), u_input.a, Struct_1(vec2<f32>(1541f, 882f), vec4<bool>(var_0.x, var_0.x, false, false)))), countOneBits(_wgslsmith_mod_u32(u_input.d, u_input.a)), func_5(func_5(vec2<bool>(var_0.x, true), Struct_1(vec2<f32>(-369f, 385f), vec4<bool>(false, true, false, false)), var_0.x, Struct_3(Struct_2(Struct_1(vec2<f32>(1623f, 200f), vec4<bool>(var_0.x, true, false, var_0.x))), Struct_2(Struct_1(vec2<f32>(260f, -1328f), vec4<bool>(false, var_0.x, var_0.x, false))), u_input.a, Struct_1(vec2<f32>(366f, 441f), vec4<bool>(var_0.x, false, false, var_0.x)))).a.b.xy, Struct_1(vec2<f32>(1232f, 497f), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), all(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), Struct_3(Struct_2(Struct_1(vec2<f32>(-1338f, -1218f), vec4<bool>(false, true, var_0.x, true))), Struct_2(Struct_1(vec2<f32>(940f, -146f), vec4<bool>(var_0.x, true, var_0.x, var_0.x))), 0u, Struct_1(vec2<f32>(1640f, 625f), vec4<bool>(var_0.x, var_0.x, true, var_0.x)))).a)).a);
    let var_2 = u_input.b.x;
    global1 = -vec3<i32>(_wgslsmith_mult_i32(abs(0i) | (var_2 << (1u % 32u)), 1i), ~(-select(-36511i, 24744i, var_1.b.a.b.x)), _wgslsmith_add_i32(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-29970i, var_2, var_2, var_2), vec4<i32>(global1.x, -2147483647i, -2147483647i, global1.x))), 0i));
    let var_3 = ~_wgslsmith_div_i32(min(-(1i >> (var_1.c % 32u)), var_2), 1i);
    var var_4 = Struct_2(var_1.d);
    global1 = u_input.b.www;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_5(var_0.yz, func_5(var_0.xy, var_1.b.a, false, Struct_3(var_1.b, var_1.b, var_1.c, Struct_1(vec2<f32>(1580f, var_4.a.a.x), var_4.a.b))).a, true, Struct_3(var_1.b, var_1.a, var_1.c, Struct_1(var_1.d.a, var_1.d.b))).a.a.x, 264f)));
}

