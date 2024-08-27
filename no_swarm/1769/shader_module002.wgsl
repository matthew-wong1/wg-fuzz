struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: f32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<bool>) -> vec2<bool> {
    global1 = _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a.x)))))));
    let var_0 = Struct_2(vec4<u32>(_wgslsmith_dot_vec4_u32(min(~arg_0, max(arg_0, vec4<u32>(arg_0.x, arg_0.x, 62130u, arg_0.x))), _wgslsmith_div_vec4_u32(abs(vec4<u32>(67648u, u_input.c, u_input.c, arg_0.x)), ~vec4<u32>(18979u, 26298u, u_input.c, 1u))), arg_0.x, reverseBits(u_input.c >> (4294967295u % 32u)), max(_wgslsmith_dot_vec2_u32(max(arg_0.yz, arg_0.xy), vec2<u32>(5219u, u_input.c)), arg_0.x)), arg_1.a.x, arg_0.x, arg_1, arg_1.a.x);
    var var_1 = -120f;
    var var_2 = u_input.b.yy;
    global0 = _wgslsmith_div_u32(arg_0.x, reverseBits(~u_input.c));
    return !arg_2;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_2) -> f32 {
    let var_0 = vec4<bool>(any(func_3(arg_2.a, arg_2.d, select(vec2<bool>(true, false), !vec2<bool>(arg_2.d.b, arg_2.d.b), select(vec2<bool>(arg_2.d.b, arg_2.d.b), vec2<bool>(false, arg_2.d.b), vec2<bool>(true, arg_2.d.b))))), !(-u_input.a.x < _wgslsmith_clamp_i32(select(u_input.a.x, 8336i, true), _wgslsmith_add_i32(25920i, u_input.b.x), min(u_input.a.x, 32105i))), false, arg_2.d.b);
    var var_1 = Struct_4(Struct_3(arg_2.d.a, 12850u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.a.x - _wgslsmith_f_op_f32(-755f + arg_0.x))), arg_2.d.a, var_0));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.e, arg_0.x), vec2<f32>(246f, arg_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_2.d.a, arg_2.d.a))), func_3(vec4<u32>(93298u, 1077u, 4294967295u, arg_2.a.x), Struct_1(vec2<f32>(arg_0.x, var_1.a.c), true), var_1.a.e.wy))) * _wgslsmith_f_op_vec2_f32(-arg_2.d.a)), arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.x)), var_1.a.c)), select(vec4<bool>(all(!vec3<bool>(true, false, var_1.a.e.x)), !all(vec2<bool>(true, var_1.a.e.x)), !arg_2.d.b, false), var_0, select(arg_2.b > _wgslsmith_f_op_f32(abs(966f)), true, any(vec3<bool>(var_1.a.e.x, true, var_1.a.e.x)))));
    global0 = 53774u;
    global0 = var_1.a.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1174f * arg_2.b))) + _wgslsmith_f_op_f32(ceil(-221f))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> f32 {
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e * arg_3)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(791f, -1201f)) - -833f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3)) * _wgslsmith_f_op_f32(f32(-1f) * -666f))), any(!vec2<bool>(false, all(vec2<bool>(false, false))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = any(vec2<bool>(!(!(arg_2.e.x | arg_2.e.x)), true));
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(func_4(vec4<i32>(1i, u_input.a.x, u_input.b.x, u_input.b.x), Struct_2(vec4<u32>(arg_3.x, arg_2.b, u_input.c, arg_3.x), _wgslsmith_f_op_f32(func_2(vec3<f32>(arg_0.x, 526f, arg_0.x), 37644u, Struct_2(arg_3, -939f, u_input.c, Struct_1(arg_0.zz, arg_2.e.x), 1000f))), u_input.c, Struct_1(vec2<f32>(arg_0.x, arg_0.x), true), _wgslsmith_f_op_f32(round(-1000f))), min(u_input.c & u_input.c, 1u), _wgslsmith_f_op_f32(round(-100f)))), arg_2.a.x), _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(46438u ^ arg_2.b, 4294967295u >> (arg_3.x % 32u))), 6806u), -554f, vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(arg_2.c))), vec4<bool>(arg_2.e.x & all(vec3<bool>(arg_2.e.x, true, false)), 1f <= _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(arg_2.a.x - -800f)), arg_2.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -313f), _wgslsmith_f_op_f32(floor(arg_2.d.x))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))));
    let var_2 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_2.d, arg_1.ww, !vec2<bool>(var_1.e.x, arg_2.e.x))) - vec2<f32>(-1000f, 285f)), abs(0u), arg_0.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_2.d))))), arg_2.e));
    var var_3 = arg_2.e.x;
    var_0 = var_2.a.e.x;
    return Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.yx), _wgslsmith_f_op_vec2_f32(var_1.d * var_2.a.a), var_2.a.e.x)), !(!var_2.a.e.x));
}

fn func_5(arg_0: vec3<u32>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3.a.x, -825f), arg_3.a, vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a.x, -330f) + _wgslsmith_f_op_vec2_f32(arg_3.a - vec2<f32>(arg_3.a.x, arg_3.a.x)))) + vec2<f32>(arg_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.a.x))))), _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, reverseBits(arg_0.x)), 4294967295u), firstLeadingBit(4294967295u)), arg_3.a.x, _wgslsmith_f_op_vec2_f32(arg_3.a + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2068f, 1874f) + vec2<f32>(-324f, arg_3.a.x)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_3.a))))), select(vec4<bool>(false, false, !(!arg_1), any(select(vec3<bool>(true, arg_1, arg_2), vec3<bool>(arg_1, true, true), vec3<bool>(false, true, arg_1)))), select(vec4<bool>(false, true, false, true && arg_2), select(!vec4<bool>(arg_3.b, arg_1, true, arg_3.b), vec4<bool>(false, false, arg_2, false), arg_2 && arg_1), select(2147483647i, u_input.b.x, false) > _wgslsmith_add_i32(14751i, 2898i)), any(select(select(vec3<bool>(arg_2, true, arg_1), vec3<bool>(arg_1, true, arg_2), arg_2), vec3<bool>(true, false, true), vec3<bool>(true, arg_2, arg_1)))));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_3) -> f32 {
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1.d)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_1.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, arg_1.c)))), ~(~_wgslsmith_sub_u32(1u, arg_1.b)), 173f, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(trunc(564f)), _wgslsmith_f_op_f32(-arg_1.d.x)))), vec4<bool>(true, arg_1.e.x, all(arg_1.e.ywx) | true, select(arg_1.e.x, arg_1.e.x, true) & (-60033i <= u_input.b.x))));
    var var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(max(arg_0, _wgslsmith_mult_vec3_i32(arg_0, min(vec3<i32>(18434i, 7927i, -3696i), vec3<i32>(-1i, -2147483647i, u_input.b.x)))), u_input.b.yyx ^ vec3<i32>(countOneBits(arg_0.x), -u_input.a.x, u_input.b.x)), arg_0);
    let var_2 = abs(u_input.a.yy);
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1000f))));
    var var_3 = Struct_2(reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, arg_1.b, u_input.c, 37258u), vec4<u32>(var_0.a.b, 1u, u_input.c, u_input.c), var_0.a.e), countOneBits(vec4<u32>(var_0.a.b, 0u, arg_1.b, 120666u))), ~(vec4<u32>(32u, 1u, var_0.a.b, var_0.a.b) ^ vec4<u32>(u_input.c, 4294967295u, var_0.a.b, 4294967295u)))), _wgslsmith_f_op_f32(arg_1.d.x * var_0.a.d.x), countOneBits(0u) & (select(72647u, ~var_0.a.b, all(var_0.a.e)) | (select(var_0.a.b, 4294967295u, true) << ((1u & u_input.c) % 32u))), Struct_1(var_0.a.a, any(func_5(~vec3<u32>(1u, 14421u, arg_1.b), true, true, Struct_1(vec2<f32>(-440f, 1000f), true)).e)), _wgslsmith_f_op_f32(330f - arg_1.d.x));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.b - var_0.a.a.x), var_0.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = Struct_2(~select(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, var_0, 4294967295u, 1u), vec4<u32>(var_0, var_0, var_0, var_0)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, 1u, 1u, 22314u), _wgslsmith_div_vec4_u32(vec4<u32>(6191u, var_0, u_input.c, 1u), vec4<u32>(var_0, 4294967295u, u_input.c, var_0)), vec4<u32>(1u, 21514u, 4294967295u, 47810u)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1380f) * _wgslsmith_f_op_f32(func_6(_wgslsmith_div_vec3_i32(u_input.b.yzx >> (vec3<u32>(var_0, 45634u, var_0) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(u_input.b.x, u_input.b.x, -60999i))), func_5(~vec3<u32>(u_input.c, 2857u, 37376u), true, true, func_1(vec3<f32>(1645f, 163f, 987f), vec4<f32>(-218f, 1025f, 632f, -681f), Struct_3(vec2<f32>(1254f, 187f), u_input.c, -716f, vec2<f32>(451f, 170f), vec4<bool>(false, true, true, true)), vec4<u32>(u_input.c, 59273u, u_input.c, 20481u)))))), var_0, func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(191f, -1521f, -259f) + vec3<f32>(1065f, 1085f, -372f))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1614f, -345f, -289f), vec3<f32>(111f, 1440f, -1000f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(804f, 1000f, -851f))))), vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1131f), _wgslsmith_f_op_f32(func_6(-vec3<i32>(-10540i, u_input.a.x, u_input.b.x), Struct_3(vec2<f32>(-906f, 572f), 0u, 523f, vec2<f32>(496f, 1139f), vec4<bool>(false, false, true, false)))), _wgslsmith_f_op_f32(-599f - _wgslsmith_f_op_f32(1228f + 1000f))), func_5(select(firstLeadingBit(vec3<u32>(16511u, 4294967295u, u_input.c)), ~vec3<u32>(u_input.c, u_input.c, 4294967295u), u_input.c <= 5715u), true, false, func_1(_wgslsmith_div_vec3_f32(vec3<f32>(1928f, -1634f, 819f), vec3<f32>(-619f, 839f, -221f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1120f, 172f, -642f, -1000f)), Struct_3(vec2<f32>(572f, -1245f), u_input.c, -336f, vec2<f32>(1679f, -1000f), vec4<bool>(true, false, true, true)), abs(vec4<u32>(var_0, 4989u, var_0, 4294967295u)))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, var_0, u_input.c, u_input.c), vec4<u32>(u_input.c, var_0, 4294967295u, u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1041f) + -1202f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-853f))))));
    var var_2 = var_1;
    global0 = 57857u;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1454f, var_1.e)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.d.a.x)))))) * vec2<f32>(_wgslsmith_f_op_f32(func_2(vec3<f32>(_wgslsmith_f_op_f32(var_2.e + var_1.e), _wgslsmith_f_op_f32(abs(var_2.d.a.x)), _wgslsmith_f_op_f32(abs(220f))), _wgslsmith_mod_u32(131371u, var_0), Struct_2(var_1.a, _wgslsmith_f_op_f32(floor(var_2.e)), ~14260u, Struct_1(var_2.d.a, var_2.d.b), _wgslsmith_f_op_f32(372f + 556f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(254f + -704f)))));
    let var_4 = ~(~vec4<u32>(1u, 0u, var_2.a.x, u_input.c) >> (min(firstTrailingBit(vec4<u32>(var_0, 4294967295u, 26509u, u_input.c)) | _wgslsmith_mult_vec4_u32(var_1.a, var_1.a), var_2.a) % vec4<u32>(32u)));
    var var_5 = -4940i;
    var var_6 = var_1;
    let var_7 = func_5(vec3<u32>(var_6.a.x, u_input.c, ~51883u), select(var_6.d.b, true, all(!func_5(var_6.a.zxy, false, true, Struct_1(vec2<f32>(var_3.x, var_2.e), false)).e.xxy)), var_6.c < 47799u, Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, -1000f)))), !(!var_6.d.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(1u >> (var_0 % 32u), u_input.c));
}

