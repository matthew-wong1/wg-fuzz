struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(2147483647i, 0i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(0i, -1i), vec2<i32>(8013i, 2147483647i), vec2<i32>(0i, -14949i), vec2<i32>(-19804i, 0i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, 19170i), vec2<i32>(-1i, -8673i));

var<private> global1: f32 = 285f;

var<private> global2: i32;

var<private> global3: f32 = 1218f;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    global2 = 1i;
    global3 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_0 = Struct_1(arg_0.x, _wgslsmith_add_i32(1i, abs(select(31932i, 0i, false))) << (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(59900u, u_input.b, u_input.b, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 7315u, u_input.a.x)), vec4<u32>(u_input.b, _wgslsmith_div_u32(4294967295u, 31813u), max(u_input.b, 12605u), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a))) % 32u), firstLeadingBit(min(vec2<u32>(min(2500u, u_input.b), _wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.yz)), ~(vec2<u32>(1u, u_input.b) & u_input.a.yy))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x)));
    var var_2 = _wgslsmith_mult_vec2_u32(u_input.a.zz, _wgslsmith_mult_vec2_u32(u_input.a.zz, _wgslsmith_sub_vec2_u32(abs(max(var_0.c, vec2<u32>(u_input.b, u_input.a.x))), ~(~vec2<u32>(var_0.c.x, 102849u)))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1031f, -549f))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_1.a.d.x, 1256f, arg_3.b)), -1776f, select(true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.d.x + -958f) * _wgslsmith_f_op_f32(sign(335f)))), arg_3.d)));
    var var_1 = Struct_1(-1516f, -31279i, u_input.a.zz);
    let var_2 = vec3<f32>(var_0.x, arg_3.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1123f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_3.d.x)))))) + _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_f32(arg_3.d, _wgslsmith_f_op_vec2_f32(ceil(arg_3.d)))))));
    let var_3 = arg_1;
    let var_4 = vec4<u32>(var_1.c.x, ~1u, 0u, countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 0u, var_1.c.x), firstLeadingBit(vec4<u32>(var_3.d.c.x, 28466u, 0u, 1u))), vec4<u32>(71520u, ~70357u, 1u, 0u))));
    return ~arg_1.c;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2038f * -161f)), -2158f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -334f)))))));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, 313f), vec2<f32>(var_0.x, -1350f))), var_0.yz)) * var_0.zx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.xz), vec2<f32>(var_0.x, var_0.x))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(609f - -806f), _wgslsmith_f_op_f32(528f + var_0.x)))))));
    var var_2 = Struct_1(var_0.x, _wgslsmith_clamp_i32(arg_1.x, _wgslsmith_mult_i32(~func_2(vec3<bool>(false, false, arg_2), Struct_3(Struct_2(vec4<u32>(47077u, 21051u, 18999u, arg_0), false, arg_2, var_1), vec2<u32>(u_input.a.x, u_input.b), vec3<i32>(arg_1.x, 0i, arg_1.x), Struct_1(var_0.x, 0i, u_input.a.zz)), vec3<bool>(arg_2, false, true), Struct_2(vec4<u32>(17097u, 27975u, u_input.a.x, u_input.a.x), true, arg_2, vec2<f32>(1072f, -2086f))).x, arg_1.x), 1i), reverseBits(~u_input.a.xx));
    let var_3 = var_2.b;
    global2 = _wgslsmith_sub_i32(-36608i, -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~global0[_wgslsmith_index_u32(0u, 10u)], arg_1.yz, reverseBits(vec2<i32>(var_2.b, -11165i))), vec2<i32>(_wgslsmith_mult_i32(var_2.b, 10409i), 7795i)));
    return Struct_2(countOneBits(vec4<u32>(79895u, 21927u, 50261u << (~var_2.c.x % 32u), ~_wgslsmith_div_u32(1u, arg_0))), true, arg_2, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), 1276f), var_0.x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_4(~u_input.a.x, _wgslsmith_div_vec3_i32(vec3<i32>(1i, -30687i, 3240i), vec3<i32>(2147483647i, -2147483647i, 1i)), all(vec3<bool>(arg_1.b, false, arg_0.b))).d.x, _wgslsmith_f_op_f32(step(arg_1.d.x, -1699f)))) - arg_0.d.x);
    let var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(arg_0.a.x, arg_0.a.x) << (~67680u % 32u), arg_0.a.x, 22294u, arg_1.a.x), arg_0.a), vec4<u32>(min(_wgslsmith_dot_vec2_u32(max(vec2<u32>(arg_1.a.x, u_input.b), arg_0.a.zx), reverseBits(vec2<u32>(1u, 0u))), firstLeadingBit(30423u)), _wgslsmith_add_u32(u_input.b, 35430u), ~_wgslsmith_mod_u32(10884u, u_input.a.x), u_input.b));
    return _wgslsmith_mult_i32(-4690i & ~_wgslsmith_add_i32(34068i, func_2(vec3<bool>(false, true, false), Struct_3(Struct_2(arg_0.a, arg_0.c, arg_0.c, arg_0.d), vec2<u32>(0u, arg_0.a.x), vec3<i32>(31744i, 7376i, 14039i), Struct_1(arg_0.d.x, -20474i, vec2<u32>(arg_1.a.x, arg_1.a.x))), vec3<bool>(false, false, arg_0.b), Struct_2(arg_0.a, arg_0.b, false, arg_1.d)).x), 2147483647i);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_2 {
    global2 = firstLeadingBit(1i ^ func_5(func_4(42681u | u_input.a.x, func_2(vec3<bool>(arg_2.c, true, false), Struct_3(Struct_2(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.b), true, arg_2.c, arg_2.d), arg_2.a.yx, vec3<i32>(28092i, -50973i, 2147483647i), Struct_1(1194f, 1i, vec2<u32>(u_input.a.x, arg_0.x))), vec3<bool>(true, true, true), arg_2), u_input.b < 1u), arg_2));
    let var_0 = Struct_1(-448f, countOneBits(firstLeadingBit(-23553i) >> (_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_2.a.x, arg_0.x), arg_0.x) % 32u)), vec2<u32>(~_wgslsmith_clamp_u32(arg_2.a.x, u_input.b, arg_0.x), ~arg_2.a.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(261f, 2169f, 242f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2160f, arg_2.d.x, arg_2.d.x))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(959f, var_0.a, var_0.a), vec3<f32>(679f, -645f, 482f)))))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-var_0.a)) + var_0.a);
    global0 = array<vec2<i32>, 10>();
    return func_4(abs(reverseBits(14799u)), vec3<i32>(-1i) * -(reverseBits(vec3<i32>(-2147483647i, -1i, 11677i)) >> (~u_input.a % vec3<u32>(32u))), true);
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<u32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.d.x), arg_2.d.x)), _wgslsmith_f_op_f32(322f - -183f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2306f, 521f, arg_2.d.x) + vec3<f32>(-430f, arg_1.d.x, 942f))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-507f, -1300f, -1000f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1606f, arg_1.d.x, -264f), vec3<f32>(arg_2.d.x, -295f, arg_1.d.x), true)))))));
    global2 = _wgslsmith_mult_i32(0i, -firstLeadingBit(-1i));
    global3 = -514f;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1081f, arg_2.d.x, arg_1.d.x, -755f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.x, arg_1.d.x, arg_2.d.x, arg_1.d.x))), vec4<f32>(-603f, _wgslsmith_div_f32(1923f, arg_1.d.x), arg_2.d.x, _wgslsmith_f_op_f32(arg_2.d.x - -1236f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - _wgslsmith_f_op_f32(-arg_2.d.x)) + _wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1148f * _wgslsmith_div_f32(arg_1.d.x, -114f))), arg_2.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(vec4<u32>(1u, firstTrailingBit(~1u | ~u_input.b), 1u, _wgslsmith_mod_u32(u_input.a.x, countOneBits(_wgslsmith_clamp_u32(4294967295u, u_input.b, 10707u)))), func_1(min(u_input.a.yy, abs(~vec2<u32>(4294967295u, u_input.b))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(-1070f, -1000f), 775f))), Struct_2(reverseBits(~vec4<u32>(u_input.a.x, u_input.a.x, 54586u, u_input.a.x)), any(vec4<bool>(true, true, true, true)), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-200f, 1707f))))), Struct_2(~((vec4<u32>(61609u, 7507u, u_input.b, 33604u) | vec4<u32>(u_input.a.x, u_input.a.x, 0u, 8026u)) >> (vec4<u32>(0u, 1u, 3730u, 58459u) % vec4<u32>(32u))), true, true, vec2<f32>(552f, -1519f)), abs(vec4<u32>(~(~74904u), 26512u, u_input.b, ~1u)));
}

