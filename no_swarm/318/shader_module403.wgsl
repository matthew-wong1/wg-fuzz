struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec2<bool>) -> bool {
    var var_0 = arg_0.c;
    var var_1 = 45262u;
    var var_2 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(arg_3.x, false, arg_3.x), true), select(!vec3<bool>(arg_3.x, true, false), vec3<bool>(arg_0.c < u_input.c, arg_0.a.d.x == 95969u, true), select(vec3<bool>(arg_3.x, arg_3.x, arg_3.x), select(vec3<bool>(arg_3.x, arg_3.x, true), vec3<bool>(false, true, arg_3.x), vec3<bool>(false, true, true)), select(vec3<bool>(arg_3.x, arg_3.x, true), vec3<bool>(arg_3.x, arg_3.x, true), vec3<bool>(arg_3.x, true, arg_3.x)))), vec3<bool>(all(select(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false), vec4<bool>(arg_3.x, true, arg_3.x, false), arg_3.x)), !(arg_3.x & true), !(arg_0.b.x != arg_2.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(arg_1.d.a.xwy - _wgslsmith_f_op_vec3_f32(arg_1.d.b.zyy * _wgslsmith_f_op_vec3_f32(ceil(arg_0.a.a.zxy))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2.x * var_3.x), arg_0.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -565f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.a.b - arg_0.a.b) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1758f, var_3.x, -822f, 124f)))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-505f, -382f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.x), -130f)), -1000f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.c.b * _wgslsmith_f_op_vec4_f32(arg_1.d.b + arg_0.a.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a.a))))), vec3<f32>(_wgslsmith_f_op_f32(213f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_div_f32(921f, 356f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + -1751f)))), _wgslsmith_f_op_f32(step(676f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-823f * -749f), arg_0.b.x)))), countOneBits(_wgslsmith_mod_vec3_u32(min(vec3<u32>(6096u, 1u, 25390u), min(arg_0.a.d, vec3<u32>(0u, arg_1.e, u_input.a.x))), select(firstTrailingBit(vec3<u32>(26106u, arg_0.a.d.x, 0u)), arg_0.a.d, !vec3<bool>(true, true, var_2.x)))), ~u_input.a.x);
    return any(!(!select(vec4<bool>(arg_3.x, false, var_2.x, var_2.x), select(vec4<bool>(var_2.x, arg_3.x, var_2.x, var_2.x), vec4<bool>(true, arg_3.x, var_2.x, false), vec4<bool>(var_2.x, false, true, false)), !vec4<bool>(true, true, arg_3.x, true))));
}

fn func_2() -> Struct_2 {
    var var_0 = all(vec4<bool>(!any(vec4<bool>(true, true, true, true)), select(~u_input.d < (u_input.a.x << (0u % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, 1i, -1i)) > ~u_input.b, true), !any(vec3<bool>(true, true, true)), min(countOneBits(u_input.c), -2147483647i << (u_input.d % 32u)) >= ~(-48244i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1006f, -1000f, 508f, -1000f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(340f, 620f, 1558f, -1336f))), _wgslsmith_div_vec4_f32(vec4<f32>(398f, -1024f, 159f, -1000f), vec4<f32>(711f, -610f, 456f, 504f)), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-214f, -1135f, 1000f, 1000f) + vec4<f32>(-1018f, 1203f, -310f, -1522f)), vec4<f32>(-858f, -710f, 685f, 1651f))))));
    var_0 = !(!(!(true && func_3(Struct_4(Struct_1(vec4<f32>(var_1.x, var_1.x, var_1.x, 1301f), vec4<f32>(var_1.x, var_1.x, 1622f, var_1.x), var_1.ywx, vec3<u32>(u_input.d, u_input.d, 1u), 1u), var_1.yy, u_input.c, u_input.c), Struct_2(var_1.x, var_1.x, Struct_1(vec4<f32>(1247f, 937f, 1329f, var_1.x), vec4<f32>(var_1.x, 2090f, -436f, 1411f), vec3<f32>(644f, -1000f, 472f), vec3<u32>(u_input.a.x, 30863u, 16158u), 4294967295u), Struct_1(vec4<f32>(1073f, 1387f, -989f, var_1.x), vec4<f32>(var_1.x, -136f, -374f, 1054f), vec3<f32>(2476f, 1330f, 1551f), vec3<u32>(u_input.a.x, u_input.d, u_input.d), u_input.d), 0u), vec2<f32>(-1000f, -1552f), vec2<bool>(false, false)))));
    var var_2 = Struct_2(302f, var_1.x, Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1133f, var_1.x, var_1.x, -1349f)))))), vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -269f), var_1.x), var_1.ywx, vec3<u32>(u_input.d, 1u, ~u_input.a.x ^ 39340u), u_input.d), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(ceil(358f)), _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(389f, var_1.x, var_1.x, 1027f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 526f, var_1.x, 871f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(749f, 749f, var_1.x, var_1.x) + vec4<f32>(276f, 1107f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -1077f, 1631f) * vec4<f32>(var_1.x, var_1.x, var_1.x, -412f))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1580f))), -1208f, _wgslsmith_f_op_f32(select(var_1.x, var_1.x, true))), firstTrailingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(52725u, 1u, u_input.a.x), vec3<u32>(u_input.d, 0u, u_input.a.x))), 21752u & u_input.d), 0u);
    var_0 = _wgslsmith_div_f32(var_1.x, -180f) == _wgslsmith_f_op_f32(-var_2.b);
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.d.a.x))) - -1164f) + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-496f))), var_2.c, Struct_1(var_2.c.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_2.a, var_2.c.c.x, var_2.b)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1293f, -1335f, var_1.x, -1094f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_2.c.a.x, _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_mod_vec3_u32(vec3<u32>(~var_2.e, abs(4294967295u), 49298u), vec3<u32>(_wgslsmith_add_u32(var_2.d.e, 5458u), u_input.d, 0u)), ~u_input.a.x), 0u);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -166f)))));
    var var_1 = ~arg_3.b.c.e >> (~select(u_input.d, ~0u, 438f != _wgslsmith_f_op_f32(-247f + arg_3.b.c.b.x)) % 32u);
    var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.c.b.yx);
    var var_2 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(abs(arg_3.b.d.d.zy | u_input.a), arg_0.c.d.zx), max(611u, ~18968u));
    var var_3 = arg_3.b.d;
    return arg_3.b.c;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = func_4(func_2(), true, -abs(u_input.b | arg_0), Struct_3(~(min(vec2<i32>(0i, -1i), vec2<i32>(2147483647i, 0i)) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), Struct_2(1350f, _wgslsmith_f_op_f32(237f - _wgslsmith_div_f32(1683f, 564f)), Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1753f, -1587f, -996f, -1000f), vec4<f32>(1053f, -2379f, 785f, 1568f))), vec4<f32>(-438f, -491f, -718f, -1713f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-407f, 1284f, -1000f) - vec3<f32>(-1332f, -467f, -439f)), vec3<u32>(68236u, 88107u, u_input.a.x), select(u_input.d, u_input.a.x, true)), func_2().c, 27934u)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(555f, 101f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1556f, 1000f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -537f)))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -106f), -589f)), false)));
    let var_1 = func_1(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.b), select(u_input.b, 2147483647i, false)), ~(-vec2<i32>(-2147483647i, u_input.c))), reverseBits(select(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.c, 40010i), false) << (~u_input.a % vec2<u32>(32u)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(round(1484f))), var_0.x) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_1.d.b.yw, vec2<f32>(226f, 362f)))) - vec2<f32>(-244f, var_1.a))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(func_1(-3371i).c.c.zz, var_1.d.c.yz) * vec2<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.b - var_1.a)))), var_1.b));
    let var_2 = func_2();
    let var_3 = 1i;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(var_2.c.c.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1912f), _wgslsmith_f_op_f32(-var_0.x))), var_1.b);
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1367f)) * var_0.x), var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec4_u32(~vec4<u32>(var_1.c.d.x, 46927u, var_2.c.d.x, var_1.c.e), _wgslsmith_sub_vec4_u32(vec4<u32>(38825u, var_2.e, var_1.c.e, 0u), vec4<u32>(4294967295u, var_2.c.e, 23824u, 4294967295u))) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 61617u, var_1.c.d.x, 11508u), vec4<u32>(var_2.d.e, 35462u, var_2.e, 0u)), ~vec4<u32>(69026u, var_1.c.e, var_2.e, u_input.d), max(vec4<u32>(55604u, var_2.c.d.x, 60967u, 40147u), vec4<u32>(u_input.d, 60112u, var_1.d.d.x, var_2.c.d.x))) % vec4<u32>(32u)), ~vec4<u32>(52595u, ~54471u, 0u, ~var_2.d.e), vec4<bool>(true, true, true, false)), _wgslsmith_div_vec4_i32(abs(firstTrailingBit(vec4<i32>(18051i, -44156i, 2147483647i, -1i))), ~vec4<i32>(~31380i, 2147483647i, 26053i, 34771i)), abs(reverseBits(vec2<i32>(~u_input.b, 2147483647i))));
}

