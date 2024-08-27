struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(-223f, 985f, -656f, -485f, -312f);

var<private> global1: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-728f, 1585f), vec2<f32>(-356f, 277f), vec2<f32>(1000f, 341f), vec2<f32>(761f, 417f), vec2<f32>(353f, -399f), vec2<f32>(133f, 971f), vec2<f32>(694f, -283f), vec2<f32>(-478f, -721f));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global0 = array<f32, 5>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.c, 5u)];
    global1 = array<vec2<f32>, 8>();
    let var_1 = ~_wgslsmith_add_vec3_u32(~vec3<u32>(1u, u_input.c, 1u), vec3<u32>(0u, 1u, ~0u));
    let var_2 = Struct_1(!select(vec4<bool>(all(vec4<bool>(true, false, true, true)), false, false, any(vec2<bool>(false, true))), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false)), select(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true)), !vec4<bool>(true, any(vec3<bool>(true, false, false)), false, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, any(vec4<bool>(true, false, false, true)), true), false)), _wgslsmith_dot_vec4_i32(arg_0, arg_0), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(1461u, 8u)]), -55076i);
    return var_2;
}

fn func_1() -> f32 {
    var var_0 = func_2(vec4<i32>(-u_input.b, u_input.e, _wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, firstTrailingBit(u_input.e)), -2147483647i), u_input.e));
    var var_1 = -1053f;
    var_1 = 1159f;
    global1 = array<vec2<f32>, 8>();
    global1 = array<vec2<f32>, 8>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1834f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 2183f)))) + 788f);
}

fn func_3() -> vec4<bool> {
    let var_0 = func_2(vec4<i32>(u_input.b, u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(48500i, u_input.d, u_input.d) ^ vec3<i32>(2147483647i, u_input.e, u_input.d), -vec3<i32>(u_input.e, 0i, u_input.e)), u_input.b) >> (max(~vec4<u32>(1u, 1u, u_input.c, 0u), vec4<u32>(_wgslsmith_sub_u32(u_input.c, 1u), 35964u ^ u_input.c, ~u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(0u, 41954u, 31813u)))) % vec4<u32>(32u)));
    let var_1 = Struct_5(Struct_4(select(vec4<bool>(4294967295u != u_input.a.x, true, u_input.b >= u_input.e, true), func_2(vec4<i32>(-2147483647i, u_input.d, 1620i, u_input.b)).a, vec4<bool>(true, true, true, any(vec4<bool>(false, var_0.b.x, var_0.a.x, true)))), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.e, -7827i), ~vec3<i32>(u_input.e, var_0.e, u_input.b)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(1677i, 58031i, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, var_0.c, u_input.b), vec3<i32>(u_input.b, 61670i, 17009i), vec3<i32>(-2147483647i, u_input.b, -2147483647i)), ~vec3<i32>(u_input.e, var_0.c, -2147483647i))), Struct_1(func_2(-vec4<i32>(u_input.d, u_input.d, -8378i, u_input.d)).a, !var_0.b, u_input.e, vec2<f32>(1626f, var_0.d.x), -2147483647i), ~min(abs(vec3<u32>(1u, 27085u, 1u)), vec3<u32>(0u, u_input.a.x, 41638u) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), Struct_2(var_0, vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 5u)] - -516f), global0[_wgslsmith_index_u32(select(u_input.c, 31492u, false), 5u)]), u_input.a.x, var_0.d.x)), -345f);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.a.d.x, 39469u), 5u)], var_0.d.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.a.d.x, 5u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, var_1.a.d.zz), 5u)]) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-901f, -834f, 775f, -954f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-func_2(abs(vec4<i32>(var_0.e, -2147483647i, -2335i, 0i))).d.x), _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(-func_2(vec4<i32>(4171i, -8128i, u_input.b, u_input.b)).d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(2472f)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-1433f, var_0.d.x, 992f, global0[_wgslsmith_index_u32(12769u, 5u)]), vec4<f32>(var_0.d.x, var_2.x, var_2.x, global0[_wgslsmith_index_u32(1u, 5u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, var_2.x, 396f, -929f) * vec4<f32>(-1034f, var_1.a.c.d.x, var_2.x, 1119f)))))));
    global1 = array<vec2<f32>, 8>();
    return select(vec4<bool>(var_1.a.a.x, false, true || var_0.b.x, any(var_1.a.c.b.xx) & true), var_0.a, func_2(~abs(vec4<i32>(2147483647i, 2147483647i, -44053i, u_input.b))).a);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = reverseBits(firstLeadingBit(~abs(~vec3<i32>(-2147483647i, u_input.d, -2147483647i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1731f, global0[_wgslsmith_index_u32(u_input.c, 5u)])), select(vec2<bool>(false, arg_0.b.x), select(arg_0.b.xw, arg_0.a.xy, vec2<bool>(arg_0.b.x, false)), vec2<bool>(arg_0.b.x, true)))) - vec2<f32>(_wgslsmith_f_op_f32(step(-776f, _wgslsmith_f_op_f32(207f * arg_0.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-392f * global0[_wgslsmith_index_u32(0u, 5u)]), arg_0.d.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(101f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(27843u, 5u)] + global0[_wgslsmith_index_u32(63501u, 5u)]))) * global1[_wgslsmith_index_u32(68421u << (1u % 32u), 8u)]));
    var var_2 = abs(_wgslsmith_sub_vec3_u32(vec3<u32>(reverseBits(abs(u_input.c)), 52522u, 68674u), abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 2645u, u_input.c), firstTrailingBit(vec3<u32>(u_input.c, u_input.c, 49998u)), min(vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(13672u, 1u, 2910u))))));
    var var_3 = arg_0.b.ywx;
    var_2 = _wgslsmith_mult_vec3_u32(~vec3<u32>(~(var_2.x >> (72834u % 32u)), var_2.x, var_2.x & select(var_2.x, 1u, var_3.x)), firstTrailingBit(~(vec3<u32>(u_input.a.x, u_input.a.x, u_input.c) | vec3<u32>(0u, 0u, 29469u))));
    return _wgslsmith_mult_u32(u_input.c, _wgslsmith_mod_u32(1u, firstLeadingBit(u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(855f - -1000f)), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(~102644u, 5u)])), global0[_wgslsmith_index_u32(abs(29435u), 5u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1()))))));
    global1 = array<vec2<f32>, 8>();
    global1 = array<vec2<f32>, 8>();
    var var_1 = select(vec4<bool>(!(u_input.c == ~29804u), func_2(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e, -79792i, -25644i, -2147483647i), vec4<i32>(54414i, u_input.b, u_input.b, u_input.d)), vec4<i32>(16901i, u_input.b, u_input.d, -10522i) & vec4<i32>(0i, 6885i, u_input.e, u_input.b))).a.x, false, u_input.d <= u_input.d), vec4<bool>(u_input.d < firstTrailingBit(u_input.e), false, !(true & all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -655f), _wgslsmith_div_f32(var_0.x, var_0.x), all(vec4<bool>(true, true, false, true)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -1000f)), select(~_wgslsmith_sub_u32(u_input.a.x, 14840u), 1u, false) > ~0u);
    var var_2 = vec3<f32>(_wgslsmith_div_f32(-496f, 711f), global0[_wgslsmith_index_u32(func_4(Struct_1(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), true), func_3(), -24851i, func_2(vec4<i32>(-1i, 0i, u_input.d, u_input.e)).d, -_wgslsmith_mod_i32(-76185i, -1i)), abs(max(i32(-1i) * -27892i, u_input.d))), 5u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -536f) * -109f)), -341f));
    var var_3 = _wgslsmith_mult_u32(1u >> (~min(0u, u_input.c) % 32u), ~countOneBits(0u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, max(vec4<u32>(1u, 36325u, countOneBits(~26769u), _wgslsmith_add_u32(~124666u, u_input.c)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a.x, 101761u, u_input.a.x, u_input.a.x) << (vec4<u32>(39442u, 90914u, u_input.a.x, 15708u) % vec4<u32>(32u))), vec4<u32>(7331u, ~1u, ~u_input.c, 1u))), u_input.c, 51956u, func_4(func_2(-(vec4<i32>(u_input.d, u_input.b, u_input.d, u_input.e) >> (vec4<u32>(u_input.a.x, u_input.c, 41170u, u_input.c) % vec4<u32>(32u)))), u_input.e));
}

