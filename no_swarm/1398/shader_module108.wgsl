struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: bool,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: Struct_2,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(13311i, 999f, vec4<f32>(-377f, 1147f, -478f, -1168f)), Struct_1(19812i, 317f, vec4<f32>(-504f, 328f, -1000f, -230f)), Struct_1(-14635i, 128f, vec4<f32>(2684f, 138f, -159f, 1000f)), Struct_1(-1i, -1529f, vec4<f32>(523f, 299f, -972f, 1151f)), Struct_1(-24100i, -1000f, vec4<f32>(353f, -1014f, -2687f, 976f)), Struct_1(31125i, -332f, vec4<f32>(-1205f, 459f, -404f, 1680f)), Struct_1(7342i, 1692f, vec4<f32>(-1053f, -894f, 626f, -1405f)), Struct_1(-9844i, 1125f, vec4<f32>(1614f, -1549f, -1473f, 427f)), Struct_1(-1062i, -991f, vec4<f32>(349f, 492f, -1000f, 1010f)), Struct_1(0i, 157f, vec4<f32>(-314f, -486f, 163f, -360f)), Struct_1(0i, -341f, vec4<f32>(1988f, 873f, 1625f, -989f)), Struct_1(i32(-2147483648), 1678f, vec4<f32>(-1412f, -1133f, -1647f, 923f)), Struct_1(-11637i, 231f, vec4<f32>(-339f, 331f, 1000f, -2116f)), Struct_1(43937i, -591f, vec4<f32>(1237f, 1142f, -622f, -223f)), Struct_1(-14897i, -1933f, vec4<f32>(707f, -457f, -1000f, -1000f)), Struct_1(1i, 225f, vec4<f32>(1251f, -1914f, -1088f, -2071f)));

var<private> global1: i32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> i32 {
    global1 = -2147483647i;
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(918f, -186f, -298f)))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -2259f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-677f, -2135f) + 449f)), Struct_2(968f, select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(false, false, false)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), true), true), ~(~firstTrailingBit(vec4<u32>(22424u, 29731u, 13424u, u_input.a))), -214f), Struct_1(max(reverseBits(2147483647i), -2147483647i), -746f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1008f), -841f, _wgslsmith_f_op_f32(step(-1103f, -779f)), 1f))), vec2<bool>(true | (any(vec3<bool>(true, false, false)) && true), true));
    global0 = array<Struct_1, 16>();
    global1 = 99534i;
    let var_1 = vec4<i32>(-var_0.d.a, _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(0i, 14944i, -var_0.d.a), 1i), var_0.d.a), ~var_0.d.a, i32(-1i) * -reverseBits(var_0.d.a));
    return -(-var_0.d.a ^ abs(max(_wgslsmith_add_i32(0i, 21750i), var_1.x)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<u32> {
    global1 = func_3();
    global1 = arg_2.x;
    global1 = -_wgslsmith_sub_i32(1i, -33677i);
    let var_0 = ~u_input.a;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_1.b, arg_0.x, false)))))), ~_wgslsmith_mult_u32(12991u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(46441u, u_input.a), 18333u)), !any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), vec3<bool>(true, any(vec4<bool>(true, true, false, true)) | !(1i < arg_2.x), all(vec4<bool>(true, true, false, true))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, 0u), select(vec2<u32>(var_0, var_0), vec2<u32>(0u, u_input.a), vec2<bool>(true, false)))), ~reverseBits(vec2<u32>(u_input.a, 9468u)) | vec2<u32>(98580u, min(u_input.a, u_input.a))), 16u)]);
    return countOneBits(vec2<u32>(8081u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, abs(4294967295u), ~var_1.b), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(0u, 0u)), reverseBits(4294967295u), var_0))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_4(arg_1.wyz, arg_1.x, Struct_2(-129f, select(select(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), vec2<bool>(false, true)), !vec2<bool>(arg_0, true), all(vec3<bool>(false, arg_0, arg_0))), !(!vec2<bool>(arg_0, false)), true & arg_0), vec4<u32>(~(~u_input.a), 63368u, u_input.a, _wgslsmith_mod_u32(~arg_2, _wgslsmith_div_u32(4294967295u, 1u))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x + arg_1.x))))), global0[_wgslsmith_index_u32(81761u, 16u)], vec2<bool>(true, true));
    return var_0.c;
}

fn func_1() -> i32 {
    var var_0 = func_4((4294967295u | ~u_input.a) <= ~_wgslsmith_dot_vec2_u32(func_2(vec2<f32>(-1451f, 712f), Struct_1(-1i, 1000f, vec4<f32>(195f, 448f, -1000f, -2558f)), vec4<i32>(22034i, -2220i, 19930i, 972i)), vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-443f, _wgslsmith_f_op_f32(trunc(1548f)), -816f, 1138f)))), _wgslsmith_div_u32(firstTrailingBit(func_2(vec2<f32>(-310f, 1417f), Struct_1(-10592i, -186f, vec4<f32>(-571f, 159f, 471f, -2012f)), vec4<i32>(-46138i, -2147483647i, 0i, 27855i)).x) & 4294967295u, 20125u));
    global1 = min(~(~_wgslsmith_sub_i32(~2147483647i, 0i)), 1i);
    let var_1 = i32(-1i) * -min(1i, ~1i);
    var_0 = Struct_2(_wgslsmith_f_op_f32(-var_0.a), var_0.b, ~vec4<u32>(firstTrailingBit(~4294967295u), 32645u, _wgslsmith_mod_u32(var_0.c.x, var_0.c.x), max(~var_0.c.x, 1u)), _wgslsmith_f_op_f32(max(var_0.d, var_0.a)));
    var_0 = func_4(var_0.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a, var_0.a, 384f, -192f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1518f, var_0.d, var_0.a, -2319f), vec4<f32>(var_0.a, 1547f, var_0.d, -1614f), var_0.b.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 605f, -1675f, var_0.d) * vec4<f32>(var_0.a, var_0.d, 188f, 1250f))))), ~_wgslsmith_sub_u32(u_input.a, 51156u) >> ((~64166u >> (func_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a, var_0.d))), global0[_wgslsmith_index_u32(~var_0.c.x, 16u)], abs(vec4<i32>(0i, 1i, var_1, -2147483647i))).x % 32u)) % 32u));
    return _wgslsmith_dot_vec2_i32(max(countOneBits(-abs(vec2<i32>(var_1, -17812i))), vec2<i32>(-2147483647i >> (~var_0.c.x % 32u), _wgslsmith_div_i32(-2147483647i, var_1))), vec2<i32>(-_wgslsmith_clamp_i32(select(var_1, var_1, var_0.b.x), ~var_1, ~var_1), 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-749f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(-1257f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(390f)))), -1000f))), vec2<bool>(true, true), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 30533u), vec4<u32>(37145u, u_input.a, u_input.a, 0u)), ~vec4<u32>(u_input.a, 0u, u_input.a, 0u)), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 32934u, 38024u, u_input.a), vec4<u32>(u_input.a, u_input.a, 110203u, u_input.a)))), _wgslsmith_mod_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 45675u), vec4<u32>(62308u, 4294967295u, u_input.a, u_input.a))), vec4<u32>(_wgslsmith_mult_u32(4294967295u, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 36756u), vec3<u32>(u_input.a, u_input.a, 35569u)), 1u, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(~29984u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 71710u, 4294967295u), vec3<u32>(1u, 53247u, u_input.a)), u_input.a ^ u_input.a, u_input.a), vec4<u32>(min(u_input.a, u_input.a), u_input.a, 7262u, _wgslsmith_mult_u32(u_input.a, u_input.a)))), 1872f);
    var var_1 = !select((var_0.d <= _wgslsmith_f_op_f32(f32(-1f) * -189f)) & false, select(any(var_0.b), false, false & any(vec4<bool>(true, var_0.b.x, true, true))), false);
    var var_2 = _wgslsmith_add_i32(-12037i, -func_1());
    let var_3 = reverseBits(_wgslsmith_clamp_i32(-(i32(-1i) * -16383i), countOneBits(-42065i), countOneBits(-5235i) << (var_0.c.x % 32u))) & 0i;
    var_0 = func_4(any(func_4(!any(vec3<bool>(false, var_0.b.x, false)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(623f, 1430f, -238f, 830f) - vec4<f32>(-681f, -387f, -1000f, var_0.d)))), _wgslsmith_dot_vec4_u32(var_0.c, var_0.c) << (60557u % 32u)).b), vec4<f32>(var_0.d, -412f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.d)), _wgslsmith_f_op_f32(floor(-1885f))), _wgslsmith_f_op_f32(-var_0.d)), var_0.c.x);
    let var_4 = 1392f > var_0.a;
    var var_5 = _wgslsmith_mod_vec2_i32(select(-vec2<i32>(min(-1i, var_3), ~(-2147483647i)), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(2147483647i, 1i)), select(vec2<i32>(var_3, var_3), vec2<i32>(-2147483647i, var_3), false)), ~vec2<i32>(var_3, 1i)), func_4(all(select(vec4<bool>(false, var_4, var_4, var_0.b.x), vec4<bool>(false, var_0.b.x, false, var_4), vec4<bool>(var_4, var_4, false, var_4))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 965f, var_0.a, -1111f))) + vec4<f32>(var_0.a, -1000f, 971f, var_0.d)), 1u).b), -_wgslsmith_clamp_vec2_i32(-(~vec2<i32>(0i, var_3)), abs(vec2<i32>(0i, var_3)), vec2<i32>(~var_3, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3, var_3, var_3, var_3), vec4<i32>(-3576i, 0i, var_3, -2147483647i)))));
    var var_6 = !var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2279f, var_0.d)))), var_5.x & var_3, _wgslsmith_f_op_f32(trunc(var_0.a)), -15179i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-123f, _wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-989f * var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1003f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-356f, -560f, var_4)) * _wgslsmith_f_op_f32(trunc(483f))))));
}

