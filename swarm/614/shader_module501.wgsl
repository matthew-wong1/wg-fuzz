struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    var var_0 = Struct_3(Struct_2(firstLeadingBit(min(vec3<u32>(u_input.b, u_input.b, 44762u), ~vec3<u32>(u_input.b, 1u, u_input.b))), Struct_1(_wgslsmith_div_vec2_i32(u_input.d, vec2<i32>(u_input.c, u_input.a.x)), u_input.b & _wgslsmith_dot_vec4_u32(vec4<u32>(48114u, 4294967295u, 40965u, 72677u), vec4<u32>(1u, 33776u, 1u, 25996u)), (vec2<u32>(u_input.b, 1u) & vec2<u32>(u_input.b, 1u)) >> (abs(vec2<u32>(53879u, u_input.b)) % vec2<u32>(32u)), reverseBits(0u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-830f, 1132f, -121f, 1563f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(445f, -358f, 770f, -290f), vec4<f32>(-1000f, -707f, -1203f, -1321f), false)), vec4<f32>(832f, 102f, 120f, -140f)))), arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1301f), 1277f, true))));
    var_0 = Struct_3(var_0.a);
    let var_1 = vec4<u32>(4294967295u, firstLeadingBit(max(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.a.b.d, var_0.a.a.x), 11099u), ~1u)), 4294967295u, ~5986u);
    var_0 = Struct_3(var_0.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, var_0.a.e), _wgslsmith_f_op_vec2_f32(-var_0.a.c.zz)))), var_0.a.c.xz)), var_0.a.c.xw, false));
    return (vec4<i32>(-1i) * -(~max(vec4<i32>(0i, -2147483647i, var_0.a.b.a.x, var_0.a.b.a.x), vec4<i32>(u_input.d.x, u_input.d.x, var_0.a.b.a.x, 0i)))) & -select(-vec4<i32>(var_0.a.b.a.x, u_input.d.x, u_input.a.x, 1i), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, ~(-20478i)), !select(vec4<bool>(true, false, arg_0, var_0.a.d), vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(true, arg_0, var_0.a.d, false)));
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec4_i32(-(~_wgslsmith_add_vec4_i32(vec4<i32>(-17272i, -1i, u_input.c, -1i), vec4<i32>(u_input.d.x, u_input.c, u_input.d.x, -1i))) ^ ~abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.d.x, u_input.a.x, u_input.c), vec4<i32>(45194i, 9593i, u_input.c, 9870i))), min(firstLeadingBit(vec4<i32>(u_input.a.x, -24407i, -27175i, 1i)), func_3(any(vec2<bool>(true, true)))));
    let var_1 = Struct_1(min(vec2<i32>(-2147483647i >> ((26987u >> (arg_0 % 32u)) % 32u), ~1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(32084i, 0i), vec2<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.c), _wgslsmith_mod_i32(1i, -1i)), ~func_3(true).xz)), arg_0, abs(~(~(~vec2<u32>(25726u, arg_0)))), _wgslsmith_div_u32(max(1u, _wgslsmith_sub_u32(arg_0, ~u_input.b)), firstLeadingBit(4294967295u)));
    return Struct_2(~vec3<u32>(_wgslsmith_mod_u32(u_input.b, _wgslsmith_add_u32(1u, arg_0)), arg_0, _wgslsmith_mult_u32(~arg_0, 0u)), Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(var_0, u_input.a.x) & firstTrailingBit(vec2<i32>(var_1.a.x, -11178i)), vec2<i32>(var_1.a.x >> (var_1.b % 32u), _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(1i, 24893i)))), 0u, ~(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_1.d), vec2<u32>(arg_0, 41462u))), _wgslsmith_clamp_u32(15559u, 87923u, countOneBits(0u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1167f - 1000f), 656f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-162f, -1164f)), _wgslsmith_f_op_f32(sign(-353f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(233f)), _wgslsmith_f_op_f32(round(210f))))), 10636i == countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, var_0, -34529i), firstTrailingBit(vec4<i32>(-3649i, var_1.a.x, u_input.d.x, -15205i)))), _wgslsmith_div_f32(-864f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1410f + 682f))), 1377f, true))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-114f * -752f) - -152f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -194f))))));
    let var_1 = arg_2.d;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_2.e, _wgslsmith_f_op_f32(step(-604f, arg_2.c.x)))))) + _wgslsmith_f_op_f32(-arg_0));
    var_0 = 430f;
    var var_2 = vec2<i32>(min(2147483647i, 9063i), u_input.a.x);
    return Struct_2(vec3<u32>(~(~arg_2.a.x | ~arg_2.b.b), ~27162u, ~select(43005u, u_input.b, arg_1 <= 2147483647i)), func_2(countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, u_input.b, 51785u, arg_3), vec4<u32>(6134u, arg_3, arg_2.a.x, 0u)))).b, vec4<f32>(1f, _wgslsmith_f_op_f32(ceil(arg_0)), 714f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(97409u).e + 1f), arg_2.c.x))), select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(select(arg_2.c.x, 249f, arg_2.d))) <= _wgslsmith_f_op_f32(ceil(-655f)), any(vec4<bool>(-44497i >= u_input.a.x, any(vec4<bool>(var_1, var_1, arg_2.d, true)), true, var_1)), true != var_1), _wgslsmith_f_op_f32(-arg_0));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: bool, arg_3: vec3<i32>) -> f32 {
    let var_0 = func_4(-1189f, _wgslsmith_add_i32(2147483647i, -_wgslsmith_dot_vec3_i32(~arg_3, -vec3<i32>(10879i, -2147483647i, -70358i))), func_2(4294967295u), 1u);
    let var_1 = _wgslsmith_dot_vec2_i32(~arg_3.zx, abs(func_3(var_0.d).xy));
    let var_2 = all(!(!select(select(vec2<bool>(false, true), vec2<bool>(var_0.d, true), vec2<bool>(false, true)), vec2<bool>(var_0.d, true), var_0.d)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1141f + var_0.e));
    var_3 = _wgslsmith_f_op_f32(908f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1796f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1798f)))));
    return var_0.e;
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: i32, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = firstTrailingBit(~(~u_input.b << (func_4(arg_1, -2147483647i, Struct_2(vec3<u32>(1110u, arg_3.x, 1u), Struct_1(vec2<i32>(2147483647i, arg_0.x), u_input.b, arg_3.zy, u_input.b), vec4<f32>(939f, arg_1, -1445f, arg_1), false, 136f), arg_3.x).a.x % 32u))) ^ _wgslsmith_mult_u32(4294967295u, 1u);
    let var_1 = Struct_3(Struct_2(~vec3<u32>(u_input.b, _wgslsmith_dot_vec2_u32(arg_3.xx, vec2<u32>(u_input.b, arg_3.x)), 1u), func_4(_wgslsmith_f_op_f32(min(-1184f, arg_1)), -(~u_input.a.x), func_2(1186u), 1u).b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, -434f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1287f, arg_1, arg_1, -663f))), arg_2 != arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-arg_1)))));
    let var_2 = ~firstTrailingBit(~_wgslsmith_sub_u32(41994u, var_1.a.b.d));
    let var_3 = Struct_3(func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(41583u, var_1.a.c.ww, false, u_input.a))), arg_1, true)), -15134i, var_1.a, _wgslsmith_add_u32(10846u, firstTrailingBit(reverseBits(4294967295u)))));
    let var_4 = _wgslsmith_add_vec4_u32(~vec4<u32>(0u, _wgslsmith_div_u32(0u, u_input.b), ~_wgslsmith_clamp_u32(arg_3.x, arg_3.x, 4294967295u), 105330u), ~(~vec4<u32>(arg_3.x, 4294967295u, var_1.a.a.x, var_1.a.a.x) & ~vec4<u32>(var_2, var_1.a.a.x, 19002u, var_2)) << (~(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.a.a.x, 4294967295u, var_1.a.b.d, var_2), vec4<u32>(var_2, 0u, var_3.a.a.x, 37113u)) & vec4<u32>(61274u, var_1.a.a.x, u_input.b, 4294967295u)) % vec4<u32>(32u)));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(countOneBits(u_input.a.zz), _wgslsmith_f_op_f32(-1002f * _wgslsmith_div_f32(_wgslsmith_div_f32(-153f, _wgslsmith_f_op_f32(f32(-1f) * -1204f)), _wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 52272u), vec2<u32>(27522u, u_input.b)), vec2<f32>(2434f, -1031f), false, u_input.a)))), 26134i, vec3<u32>(8528u, _wgslsmith_mult_u32((u_input.b | u_input.b) >> (~u_input.b % 32u), u_input.b), u_input.b >> (u_input.b % 32u)));
    var var_1 = select(!vec2<bool>(true, var_0.d), select(vec2<bool>(_wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(1u, var_0.b.d, u_input.b)) <= ~1u, false), select(select(select(vec2<bool>(false, var_0.d), vec2<bool>(false, var_0.d), vec2<bool>(var_0.d, var_0.d)), vec2<bool>(var_0.d, var_0.d), vec2<bool>(false, var_0.d)), vec2<bool>(any(vec2<bool>(true, true)), var_0.e == var_0.c.x), !select(vec2<bool>(var_0.d, var_0.d), vec2<bool>(var_0.d, true), vec2<bool>(var_0.d, var_0.d))), true && (func_4(-561f, -1i, var_0, u_input.b).d || true)), true);
    var_1 = select(select(!select(!vec2<bool>(var_1.x, var_0.d), !vec2<bool>(var_1.x, var_0.d), select(vec2<bool>(var_0.d, false), vec2<bool>(false, var_1.x), vec2<bool>(true, false))), vec2<bool>(!any(vec3<bool>(false, var_1.x, true)), true), select(select(select(vec2<bool>(var_1.x, var_0.d), vec2<bool>(var_1.x, var_0.d), vec2<bool>(false, var_0.d)), vec2<bool>(var_0.d, false), false), !(!vec2<bool>(false, var_0.d)), !func_2(var_0.b.d).d)), select(select(select(vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(false, var_0.d), vec2<bool>(true, var_0.d), true), !vec2<bool>(true, var_1.x)), vec2<bool>(true, var_1.x || false), select(select(vec2<bool>(true, var_1.x), vec2<bool>(false, var_0.d), vec2<bool>(var_1.x, var_0.d)), vec2<bool>(true, true), func_5(vec2<i32>(var_0.b.a.x, u_input.c), -1388f, -49508i, vec3<u32>(0u, var_0.a.x, var_0.a.x)).d)), vec2<bool>(all(select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(false, false, var_1.x, true), true)), all(vec4<bool>(var_0.d, var_0.d, var_0.d, true))), var_0.d), !(!select(!vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(true, var_0.d), vec2<bool>(var_1.x, true), vec2<bool>(false, var_1.x)))));
    let var_2 = select(!select(vec3<bool>(var_0.d, func_4(-405f, 2147483647i, Struct_2(vec3<u32>(57270u, 0u, 8744u), var_0.b, var_0.c, var_1.x, var_0.e), 14741u).d, !var_1.x), select(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, false, var_0.d), false), !vec3<bool>(var_0.d, true, false), vec3<bool>(true, var_0.d, true)), var_0.d), vec3<bool>(true, func_4(_wgslsmith_f_op_f32(-var_0.c.x), u_input.d.x, func_2(1u), 1u).d && true, true), any(vec3<bool>(all(vec4<bool>(false, true, var_0.d, var_1.x)), var_1.x, var_0.d)));
    var_1 = !var_2.zy;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(222f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + var_0.e) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.c.x))))));
    var_1 = var_2.yz;
    var_1 = select(!var_2.zz, var_2.yx, vec2<bool>(true, !((var_0.c.x == -746f) == var_0.d)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + var_0.e))) + -449f);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(u_input.a.x), abs(abs(vec4<u32>(1u, u_input.b, u_input.b, 0u)) << (reverseBits(min(vec4<u32>(0u, 0u, var_0.a.x, 81641u), vec4<u32>(63055u, 4294967295u, 0u, 4294967295u))) % vec4<u32>(32u))));
}

