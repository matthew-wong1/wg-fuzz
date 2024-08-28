struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<bool>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f)), _wgslsmith_f_op_f32(ceil(-1220f)), !all(vec2<bool>(false, true))))));
    var var_1 = Struct_4(Struct_2(-_wgslsmith_mod_i32(u_input.c.x, -u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, var_0, var_0, -502f))), vec4<f32>(650f, 700f, var_0, 316f))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_0, -1197f, var_0)), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -753f)))), -22847i, select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true)), vec4<i32>(~2147483647i, select(u_input.a, u_input.a, true), abs(u_input.a), 1i), ~u_input.b > u_input.b), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(613f - 2034f), var_0), u_input.a, vec4<bool>(true, true, true, u_input.b >= 0u), select(_wgslsmith_mult_vec4_i32(vec4<i32>(26946i, u_input.c.x, -53715i, u_input.c.x), vec4<i32>(-39013i, u_input.c.x, u_input.a, u_input.c.x)), ~vec4<i32>(-1i, u_input.c.x, u_input.c.x, -1i), true), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true)))), ~min(u_input.c.x, _wgslsmith_mult_i32(u_input.a, u_input.c.x)) > _wgslsmith_add_i32(-41531i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(1i, u_input.c.x))), u_input.b, Struct_3(253f));
    var var_2 = vec3<i32>(-1i) * -(var_1.a.c.d.xxw >> (select(vec3<u32>(u_input.b, 1u, u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(36852u, 1u, var_1.c), vec3<u32>(u_input.b, u_input.b, var_1.c)), var_1.a.c.e & true) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(var_1.a.c.d.x, var_2.x, var_2.x), -var_1.a.c.d.wzx, vec3<bool>(false, var_1.b, false)), -(~vec3<i32>(2147483647i, var_2.x, 0i))), firstTrailingBit(_wgslsmith_sub_vec3_i32(-u_input.c, countOneBits(vec3<i32>(u_input.c.x, -58247i, var_2.x))))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(~reverseBits(4294967295u), 10176u, u_input.b << (var_1.c % 32u)), vec3<u32>(var_1.c, 4294967295u, 0u) | max(vec3<u32>(33640u, 4294967295u, u_input.b) >> (vec3<u32>(0u, u_input.b, u_input.b) % vec3<u32>(32u)), min(vec3<u32>(var_1.c, 0u, u_input.b), vec3<u32>(0u, var_1.c, u_input.b)))) % vec3<u32>(32u));
    global0 = abs(0i ^ var_2.x);
    return u_input.b >= (var_1.c & 1u);
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = vec3<bool>(!(!(!func_3())), false, !((all(vec4<bool>(false, true, false, true)) & true) == false));
    var var_1 = u_input.c.x;
    global0 = firstTrailingBit((i32(-1i) * -_wgslsmith_clamp_i32(u_input.c.x, -95i, -38411i)) ^ _wgslsmith_add_i32(u_input.a, u_input.c.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(649f, 985f, 726f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-717f, -1210f, -675f)), !vec3<bool>(var_0.x, false, true))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + -1176f)))), 715f, _wgslsmith_f_op_f32(f32(-1f) * -665f)), false & var_0.x));
    var var_3 = !any(vec3<bool>(any(vec3<bool>(false, false, var_0.x)), all(!vec3<bool>(true, false, var_0.x)), (u_input.a ^ -23263i) > u_input.a));
    return select(select(!(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)), !(!select(vec4<bool>(var_0.x, false, false, true), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, true))), !(var_2.x > var_2.x)), vec4<bool>(true, var_0.x, -70031i < _wgslsmith_sub_i32(u_input.a, reverseBits(u_input.c.x)), any(select(select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x)), !vec4<bool>(var_0.x, var_0.x, false, false), var_0.x))), !func_3());
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> i32 {
    var var_0 = 643f;
    var_0 = _wgslsmith_f_op_f32(-arg_0.a.x);
    let var_1 = Struct_2(5473i & ~u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(540f, arg_0.a.x, arg_0.a.x, 1016f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1441f, arg_0.a.x, -119f, -423f) - vec4<f32>(113f, -1040f, 1629f, 113f)), select(arg_0.c, arg_0.c, arg_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a.x, 628f, -444f, -476f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, 131f, arg_0.a.x, arg_0.a.x))), arg_1)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-661f, 1267f, arg_0.a.x, 414f) * vec4<f32>(arg_0.a.x, -178f, 2112f, 115f))))), arg_0, arg_0);
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(242f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_div_f32(var_1.d.a.x, 411f)))), 2662f));
    return -35466i & (var_1.d.b | arg_0.d.x);
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: Struct_3) -> f32 {
    var var_0 = vec3<i32>(max(-22570i, select(arg_0.a.c.b | arg_0.a.a, -u_input.c.x, all(arg_0.a.d.c.zz)) | (i32(-1i) * -22240i)), func_4(Struct_1(arg_0.a.b.xw, _wgslsmith_sub_i32(u_input.a, 10756i) & -18268i, func_2(_wgslsmith_add_u32(27527u, arg_1.x)), abs(-vec4<i32>(arg_0.a.d.b, 2260i, u_input.c.x, u_input.c.x)), select(true, true, arg_0.b | true)), ~firstTrailingBit(7828u) > _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, arg_1.x), u_input.b << (arg_1.x % 32u))), arg_0.a.d.d.x);
    let var_1 = arg_0.a.c.c.x || !(!arg_0.b);
    var_0 = -abs(select(vec3<i32>(-var_0.x, _wgslsmith_div_i32(arg_0.a.d.b, -1i), 24718i), vec3<i32>(-30172i, u_input.a, -63206i) & vec3<i32>(u_input.a, u_input.c.x, var_0.x), var_1));
    var var_2 = Struct_4(Struct_2(-51914i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(arg_0.a.b)))), arg_0.a.d, Struct_1(_wgslsmith_div_vec2_f32(arg_0.a.c.a, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.d.a, arg_0.d.a), vec2<f32>(arg_2.a, arg_0.a.c.a.x)))), func_4(Struct_1(vec2<f32>(1496f, arg_2.a), 1i, arg_0.a.d.c, vec4<i32>(22832i, arg_0.a.c.b, u_input.a, arg_0.a.c.d.x), var_1), any(arg_0.a.c.c.zy)), func_2(arg_0.c), vec4<i32>(-var_0.x, arg_0.a.d.d.x & 0i, abs(1i), 10873i), ~arg_0.c <= 47106u)), arg_0.a.d.c.x, 29664u, Struct_3(925f));
    let var_3 = ~vec3<i32>(~arg_0.a.c.b, 43754i, arg_0.a.c.d.x);
    return _wgslsmith_f_op_f32(484f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.b.x - -1029f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(0i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-848f, -1317f, 2287f, -542f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-304f, 671f, 1000f, 1009f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-270f, 1444f, 978f, -1232f), vec4<f32>(-1000f, -1000f, 470f, -688f), true)))) * vec4<f32>(-584f, 1060f, _wgslsmith_f_op_f32(select(1158f, _wgslsmith_f_op_f32(step(663f, -1432f)), any(vec4<bool>(false, true, true, true)))), _wgslsmith_div_f32(-1865f, _wgslsmith_f_op_f32(func_1(Struct_4(Struct_2(u_input.c.x, vec4<f32>(-1591f, 866f, 686f, -1713f), Struct_1(vec2<f32>(181f, -923f), -10201i, vec4<bool>(true, false, true, false), vec4<i32>(0i, u_input.c.x, 1i, u_input.a), false), Struct_1(vec2<f32>(1205f, 253f), u_input.c.x, vec4<bool>(false, true, false, false), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.c.x), false)), false, u_input.b, Struct_3(375f)), vec2<u32>(0u, 4294967295u), Struct_3(899f)))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(423f, 1264f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-887f, 1000f))))), firstLeadingBit(46417i), !select(func_2(4294967295u), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), any(vec2<bool>(true, false))), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 12759i, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.a, -12753i, -2147483647i), vec4<i32>(-1i, 11231i, -568i, u_input.c.x)))), true), Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, 370f))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(916f, -543f)))))), _wgslsmith_dot_vec4_i32(~vec4<i32>(-37902i, 0i, 2147483647i, u_input.a) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -1i, -1i, u_input.a), vec4<i32>(u_input.c.x, u_input.c.x, 9274i, u_input.c.x)), ~firstLeadingBit(vec4<i32>(u_input.a, u_input.c.x, 1i, 2147483647i))), !func_2(u_input.b << (u_input.b % 32u)), _wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, u_input.c.x, -19802i, u_input.a), -(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(0u, 97884u, 4294967295u, 41518u) % vec4<u32>(32u)))), true));
    let var_1 = all(select(var_0.c.c, vec4<bool>(var_0.d.c.x, var_0.c.c.x, !var_0.c.e, var_0.d.e), vec4<bool>(1u >= ~u_input.b, !all(var_0.c.c.ywy), var_0.c.c.x, all(func_2(u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_div_f32(var_0.c.a.x, var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-255f, var_0.c.a.x), _wgslsmith_f_op_f32(select(var_0.d.a.x, _wgslsmith_f_op_f32(-1071f - var_0.c.a.x), var_1 || var_1))))), u_input.b, -1000f);
}

