struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(1469f, 507f), vec2<f32>(259f, -1095f), vec2<f32>(-700f, -1958f), vec2<f32>(-1000f, 1070f), vec2<f32>(147f, -1000f), vec2<f32>(208f, 247f), vec2<f32>(-724f, 946f), vec2<f32>(-170f, -1000f), vec2<f32>(-1007f, 1019f), vec2<f32>(-292f, -333f), vec2<f32>(261f, -820f), vec2<f32>(930f, 827f), vec2<f32>(371f, -150f));

var<private> global1: array<Struct_2, 31>;

var<private> global2: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = vec4<i32>(~(min(min(-1i, 2147483647i), firstTrailingBit(0i)) | ~(-2147483647i >> (u_input.a % 32u))), 1i, 17700i, _wgslsmith_add_i32(~reverseBits(-1i), 1i) >> (~u_input.a % 32u));
    global0 = array<vec2<f32>, 13>();
    global1 = array<Struct_2, 31>();
    var var_1 = Struct_1(select(vec2<bool>(true, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), any(vec2<bool>(true, true)))));
    let var_2 = global1[_wgslsmith_index_u32(u_input.a, 31u)];
    return _wgslsmith_sub_u32(var_2.d, 25909u);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(min(u_input.a, _wgslsmith_mod_u32(54089u, 4294967295u)), 4294967295u, 1u, ~(u_input.b & 84624u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.b, u_input.b, ~u_input.a), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.b), vec4<u32>(u_input.a, 1u, u_input.b, 83730u)))));
    let var_1 = 9379i;
    global0 = array<vec2<f32>, 13>();
    var var_2 = Struct_2(vec2<u32>(func_3(), max(u_input.a, 1u)), Struct_1(vec2<bool>(!(false && arg_0), false)), Struct_1(arg_1.a), u_input.b, -625f);
    var var_3 = Struct_2(reverseBits(select(~abs(vec2<u32>(0u, var_2.a.x)), _wgslsmith_add_vec2_u32(vec2<u32>(27006u, var_0.x), var_2.a), var_2.c.a)), Struct_1(select(arg_1.a, arg_1.a, false)), Struct_1(arg_1.a), ~4141u >> (var_2.a.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e * _wgslsmith_f_op_f32(var_2.e - -1030f)))));
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: bool) -> vec4<i32> {
    let var_0 = Struct_1(!(!(!(!vec2<bool>(true, arg_1)))));
    let var_1 = func_2(true, var_0, -14916i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -467f) - 301f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1701f, _wgslsmith_f_op_f32(f32(-1f) * -565f))))));
    global2 = _wgslsmith_f_op_f32(1986f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1035f * _wgslsmith_f_op_f32(round(var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(sign(441f)))))));
    var var_3 = var_1.a.x;
    return vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-37294i, -38283i), vec2<i32>(1i, 1i)) << (60605u % 32u), i32(-1i) * -firstLeadingBit(-1i)), ~min(~1i, _wgslsmith_div_i32(2147483647i, ~(-18294i))), _wgslsmith_sub_i32(-1i, -1i), reverseBits(1i));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    global0 = array<vec2<f32>, 13>();
    var var_0 = arg_2;
    var_0 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.d, u_input.a) ^ max(var_0.a, var_0.a), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.d, 9322u), var_0.a)) | vec2<u32>(abs(var_0.a.x), 27144u), Struct_1(vec2<bool>(true, any(vec4<bool>(true, true, var_0.c.a.x, false)))), Struct_1(vec2<bool>(true && all(vec2<bool>(false, arg_2.c.a.x)), false)), _wgslsmith_add_u32(141218u, countOneBits(0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2096f)))))));
    let var_1 = var_0.a.x;
    var var_2 = _wgslsmith_sub_vec4_i32(func_1(~(u_input.a >> (7872u % 32u)), true), vec4<i32>(-1i, _wgslsmith_clamp_i32(abs(2147483647i), -1i, 45345i), -1i, ~reverseBits(arg_0.x)) >> (~vec4<u32>(~4294967295u, ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_2.a.x, arg_2.d), vec3<u32>(41646u, var_0.a.x, arg_2.d)), ~22665u) % vec4<u32>(32u)));
    return Struct_2(select(select(vec2<u32>(~arg_1.a.x, arg_2.d), var_0.a, !var_0.c.a), abs(_wgslsmith_mult_vec2_u32(~var_0.a, abs(vec2<u32>(arg_2.a.x, var_0.a.x)))), select(!vec2<bool>(var_0.b.a.x, arg_2.b.a.x), arg_1.c.a, var_0.b.a)), Struct_1(vec2<bool>(true, true)), func_2(all(vec4<bool>(495f <= arg_1.e, 387f >= arg_3, arg_2.b.a.x | false, false)), Struct_1(vec2<bool>(true || arg_2.c.a.x, true)), 1i), 1u, 991f);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~select(70u, 1u, all(select(select(arg_3.a, vec2<bool>(arg_0.c.a.x, arg_2.c.a.x), arg_2.b.a), vec2<bool>(true, true), !arg_3.a.x)));
    var var_1 = func_2(!(!(_wgslsmith_div_f32(427f, 242f) >= arg_0.e)), Struct_1(arg_0.b.a), arg_1.x);
    let var_2 = Struct_1(arg_2.c.a);
    var var_3 = arg_2;
    var_3 = func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, func_1(~var_3.d, var_3.b.a.x).x, 63417i, -12191i >> (~arg_0.a.x % 32u)), vec4<i32>(0i, -1632i, _wgslsmith_mult_i32(arg_1.x | 0i, -28005i), ~arg_1.x), vec4<i32>(arg_1.x, -arg_1.x, ~(~4522i), ~arg_1.x)), func_4(func_1(_wgslsmith_mod_u32(4294967295u, 47901u) << ((0u & u_input.a) % 32u), true), Struct_2(arg_0.a, arg_0.c, func_2(all(vec4<bool>(arg_0.b.a.x, var_2.a.x, false, var_2.a.x)), var_3.c, i32(-1i) * -32712i), arg_2.d, -961f), func_4(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(8148i, 2147483647i, arg_1.x, arg_1.x), vec4<i32>(arg_1.x, -2147483647i, arg_1.x, arg_1.x)), ~19290i, 1i, select(-1i, -2147483647i, false)), Struct_2(_wgslsmith_clamp_vec2_u32(var_3.a, vec2<u32>(arg_0.d, arg_2.d), arg_2.a), func_4(vec4<i32>(-1i, arg_1.x, arg_1.x, arg_1.x), Struct_2(vec2<u32>(20038u, arg_0.a.x), arg_0.b, Struct_1(vec2<bool>(false, true)), var_3.a.x, -1668f), arg_2, var_3.e).b, Struct_1(arg_2.c.a), 4294967295u, arg_0.e), Struct_2(vec2<u32>(u_input.b, u_input.a), arg_2.b, func_4(vec4<i32>(-8519i, 0i, arg_1.x, arg_1.x), Struct_2(vec2<u32>(u_input.a, var_3.a.x), arg_2.c, Struct_1(vec2<bool>(var_3.c.a.x, false)), 0u, arg_2.e), arg_0, arg_0.e).b, ~4294967295u, -423f), _wgslsmith_f_op_f32(-func_4(vec4<i32>(arg_1.x, arg_1.x, 1i, 0i), Struct_2(vec2<u32>(0u, var_3.a.x), Struct_1(var_2.a), arg_2.c, 4294967295u, var_3.e), global1[_wgslsmith_index_u32(1344u, 31u)], 159f).e)), _wgslsmith_f_op_f32(min(arg_2.e, 298f))), global1[_wgslsmith_index_u32(~(~(~(~var_3.a.x))), 31u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.e))))));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 13>();
    global0 = array<vec2<f32>, 13>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f) * 2017f);
    let var_0 = func_5(func_4(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(2026i, -51844i, 0i, 2147483647i)), func_1(4942u, true)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(_wgslsmith_mod_u32(u_input.b, 0u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(20370u, 0u), abs(vec2<u32>(1u, 4294967295u)))), 31u)], Struct_2(vec2<u32>(~4294967295u, u_input.b >> (u_input.a % 32u)), func_2(true, Struct_1(vec2<bool>(false, true)), ~(-44256i)), Struct_1(vec2<bool>(true, false)), _wgslsmith_div_u32(92631u, 4294967295u), 467f), 1000f), _wgslsmith_clamp_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 4610i, 7537i), vec3<i32>(0i, -10804i, -8844i), vec3<i32>(-1i, 1i, -7060i))) & -_wgslsmith_mod_vec3_i32(vec3<i32>(22326i, 40710i, 0i), vec3<i32>(1i, 1i, 3787i)), vec3<i32>(1i, 1i, 1i), min(-firstLeadingBit(vec3<i32>(24256i, 1i, -3308i)), vec3<i32>(select(-1i, -12374i, true), 4011i, 0i))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~u_input.b), 31u)], Struct_1(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    global2 = 283f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1156f, _wgslsmith_f_op_f32(sign(-277f)))))), ~countOneBits(vec4<u32>(1u, 84823u, u_input.b, 1u)), u_input.b, ~_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(u_input.b, u_input.b, u_input.b)) >> (vec3<u32>(26913u, 90396u, u_input.b) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.a, 18330u), vec3<u32>(30210u, u_input.a, u_input.b)) >> (reverseBits(vec3<u32>(u_input.b, u_input.b, u_input.a)) % vec3<u32>(32u))), vec4<i32>(max(-select(-31591i, 17090i, true), reverseBits(-28909i)), 1i, ~_wgslsmith_clamp_i32(max(-1i, -2147483647i), select(1i, 62574i, var_0.a.x), -1i), ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, 0i, 2147483647i), 2147483647i >> (u_input.b % 32u))));
}

