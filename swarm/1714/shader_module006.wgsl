struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 78358u);

var<private> global1: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec4<i32>(1i, 1i, -1i, 0i), Struct_1(-1000f, vec2<f32>(1688f, 849f), vec2<u32>(0u, 4294967295u)), -1i, 1u, Struct_2(4294967295u)), Struct_3(vec4<i32>(1i, 0i, -4166i, 2147483647i), Struct_1(924f, vec2<f32>(1722f, 544f), vec2<u32>(4294967295u, 74739u)), -28289i, 26491u, Struct_2(1u)), Struct_3(vec4<i32>(-1i, 24001i, 6336i, 39124i), Struct_1(-1983f, vec2<f32>(-205f, 157f), vec2<u32>(0u, 4294967295u)), -15346i, 12625u, Struct_2(4294967295u)), Struct_3(vec4<i32>(12530i, -47847i, 1i, 1i), Struct_1(-1057f, vec2<f32>(729f, 1136f), vec2<u32>(0u, 0u)), 0i, 1u, Struct_2(3851u)), Struct_3(vec4<i32>(2147483647i, i32(-2147483648), 2738i, i32(-2147483648)), Struct_1(-270f, vec2<f32>(1117f, 2253f), vec2<u32>(61960u, 48345u)), -1i, 38561u, Struct_2(27295u)), Struct_3(vec4<i32>(-1i, 10544i, -14535i, i32(-2147483648)), Struct_1(573f, vec2<f32>(-1000f, -109f), vec2<u32>(4294967295u, 38999u)), -23814i, 26702u, Struct_2(4294967295u)), Struct_3(vec4<i32>(i32(-2147483648), -13511i, -29700i, 17922i), Struct_1(279f, vec2<f32>(-887f, -2369f), vec2<u32>(4294967295u, 79696u)), -20859i, 4294967295u, Struct_2(39944u)), Struct_3(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 2147483647i), Struct_1(1794f, vec2<f32>(822f, -1125f), vec2<u32>(0u, 16540u)), 1i, 1u, Struct_2(1u)), Struct_3(vec4<i32>(1i, 1i, -1i, 34589i), Struct_1(-807f, vec2<f32>(1000f, -1501f), vec2<u32>(77549u, 38767u)), -1i, 19465u, Struct_2(4294967295u)), Struct_3(vec4<i32>(-1i, 0i, -65486i, -3327i), Struct_1(-504f, vec2<f32>(741f, -1171f), vec2<u32>(4294967295u, 7103u)), -16728i, 1u, Struct_2(0u)), Struct_3(vec4<i32>(59118i, -1i, 53810i, 15326i), Struct_1(1000f, vec2<f32>(1234f, 739f), vec2<u32>(76880u, 4294967295u)), 0i, 53677u, Struct_2(1u)), Struct_3(vec4<i32>(-22505i, 41188i, 53454i, i32(-2147483648)), Struct_1(-2463f, vec2<f32>(-813f, 1239f), vec2<u32>(0u, 1u)), -35819i, 1u, Struct_2(4294967295u)), Struct_3(vec4<i32>(-1i, 1i, -35422i, 17596i), Struct_1(-931f, vec2<f32>(-1627f, -525f), vec2<u32>(43517u, 3448u)), 2147483647i, 10687u, Struct_2(1u)), Struct_3(vec4<i32>(-1i, i32(-2147483648), -7469i, 2147483647i), Struct_1(-1379f, vec2<f32>(650f, 1012f), vec2<u32>(26539u, 22988u)), 10190i, 23815u, Struct_2(4294967295u)), Struct_3(vec4<i32>(28246i, 8271i, i32(-2147483648), 2147483647i), Struct_1(-707f, vec2<f32>(533f, -1215f), vec2<u32>(8055u, 39298u)), -31965i, 52598u, Struct_2(24739u)), Struct_3(vec4<i32>(-25857i, 16715i, i32(-2147483648), 14017i), Struct_1(-121f, vec2<f32>(-2341f, 1473f), vec2<u32>(34108u, 4294967295u)), -20387i, 4294967295u, Struct_2(1861u)), Struct_3(vec4<i32>(-28093i, 24331i, 23422i, i32(-2147483648)), Struct_1(1000f, vec2<f32>(1198f, -227f), vec2<u32>(1u, 0u)), 1i, 25881u, Struct_2(65016u)), Struct_3(vec4<i32>(14169i, 70890i, 42975i, 16001i), Struct_1(-1031f, vec2<f32>(-270f, -163f), vec2<u32>(10356u, 21384u)), 38614i, 4294967295u, Struct_2(13688u)), Struct_3(vec4<i32>(-88800i, 2147483647i, 23406i, -19022i), Struct_1(-700f, vec2<f32>(522f, 1000f), vec2<u32>(42849u, 0u)), 0i, 76483u, Struct_2(3447u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(global0.x, 19u)];
    global0 = var_0.b.c;
    var var_1 = _wgslsmith_mod_i32(-(~(-1i)), -16796i);
    let var_2 = vec2<bool>(false, true);
    var var_3 = var_0.b;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -642f), _wgslsmith_f_op_f32(1298f * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.b.a, arg_0))))) - var_3.a);
}

fn func_2(arg_0: u32) -> vec4<f32> {
    let var_0 = Struct_2(abs(arg_0));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1990f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -218f) + -702f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -758f) * _wgslsmith_f_op_f32(f32(-1f) * -308f))), _wgslsmith_f_op_f32(func_3(489f))), ~select(max(~vec2<u32>(6122u, arg_0), abs(vec2<u32>(4294967295u, var_0.a))), _wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_0), firstTrailingBit(vec2<u32>(var_0.a, arg_0))), true));
    var var_2 = Struct_3(vec4<i32>(_wgslsmith_clamp_i32(-62873i, -firstLeadingBit(-1i), -u_input.c.x), select(0i, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, -18413i, -1i)), ~arg_0 == ~var_0.a), i32(-1i) * -1i, -abs(min(2147483647i, u_input.c.x))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(-262f)))))), var_1.b, var_1.c), -11678i, _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 6405u), vec2<u32>(0u, 1u))), ~_wgslsmith_mod_u32(global0.x, 0u)), 64508u), Struct_2(reverseBits(15417u) >> (1u % 32u)));
    global1 = array<Struct_3, 19>();
    global1 = array<Struct_3, 19>();
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.b.x), var_1.a, var_2.b.a, _wgslsmith_f_op_f32(var_2.b.b.x * var_2.b.b.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.a - -2307f) * var_2.b.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -358f), 934f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2.b.a, -1846f, false)), -1000f), var_2.b.b.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(705f + 738f), _wgslsmith_f_op_f32(-731f - -870f), _wgslsmith_f_op_f32(var_1.a * var_2.b.b.x), _wgslsmith_f_op_f32(var_1.a * var_1.a)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(533f, 135f, var_1.b.x, var_1.a), vec4<f32>(var_1.a, -1114f, -2142f, var_2.b.a), true)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b.b.x, var_1.a, var_1.b.x, -211f), vec4<f32>(var_1.a, var_2.b.a, var_2.b.b.x, var_2.b.b.x), true)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32, arg_3: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_sub_vec4_i32(~vec4<i32>(select(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, 31881i), u_input.a), false), _wgslsmith_clamp_i32(-2147483647i, min(u_input.c.x, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(-34416i, u_input.c.x, -493i), u_input.b.wwz)), _wgslsmith_div_i32(u_input.c.x | u_input.c.x, u_input.a.x >> (32539u % 32u)), u_input.b.x & u_input.c.x), -(~(-vec4<i32>(-34063i, -4473i, u_input.c.x, u_input.c.x))));
    var_0 = vec4<i32>(-(~(~u_input.a.x)), ~(~(-6634i)), i32(-1i) * -38846i, 1i);
    var_0 = vec4<i32>(-u_input.b.x, countOneBits(_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(var_0.x, u_input.d), var_0.x | var_0.x), ~var_0.x)), _wgslsmith_clamp_i32(u_input.a.x, -225i, ~(-_wgslsmith_add_i32(30086i, var_0.x))), u_input.b.x);
    global0 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(max(vec2<u32>(1u, ~arg_0.c.x), ~(~vec2<u32>(107544u, global0.x))), min(arg_0.c, select(arg_0.c, vec2<u32>(1u, 1u), true))), vec2<u32>(global0.x, arg_0.c.x) >> (vec2<u32>(_wgslsmith_sub_u32(~4294967295u, global0.x), abs(global0.x) << (arg_0.c.x % 32u)) % vec2<u32>(32u)));
    var_0 = min(reverseBits(u_input.b), vec4<i32>(_wgslsmith_div_i32(-_wgslsmith_add_i32(-26812i, -24502i), firstLeadingBit(1i << (arg_0.c.x % 32u))), abs(var_0.x), _wgslsmith_clamp_i32(~1i, 2147483647i, abs(u_input.c.x >> (global0.x % 32u))), 0i));
    return arg_1.x;
}

fn func_1() -> bool {
    let var_0 = !(!(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false), vec4<bool>(false, true, false, true), true)));
    var var_1 = !var_0.x != (var_0.x | false);
    global1 = array<Struct_3, 19>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(trunc(-115f)), vec2<f32>(-1288f, -1583f), max(vec2<u32>(29525u, global0.x), vec2<u32>(4033u, 0u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(global0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1340f, -848f, -349f, 438f) * vec4<f32>(-1274f, 1347f, 521f, -1000f))), -484f, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 1622f, -1279f, 1016f), vec4<f32>(-1071f, 878f, -1674f, -1733f), var_0.x)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-900f * 253f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -467f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2267f, -554f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-928f, 1441f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1089f, -794f) + vec2<f32>(-1101f, 273f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(191f, 1169f) - vec2<f32>(-1635f, 436f))))))), ~countOneBits(~max(vec2<u32>(global0.x, 21713u), vec2<u32>(global0.x, global0.x))));
    let var_3 = vec3<bool>(!select(all(select(vec2<bool>(false, var_0.x), var_0.wx, var_0.yy)), true, any(vec4<bool>(var_0.x, true, var_0.x, false))), _wgslsmith_f_op_f32(-var_2.a) < -711f, var_0.x);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~reverseBits(global0.x));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(730f, _wgslsmith_f_op_f32(f32(-1f) * -740f), func_1())))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(-432f, -398f)), -196f) - _wgslsmith_f_op_f32(f32(-1f) * -527f)));
    global0 = vec2<u32>(global0.x, ~min(reverseBits(var_0.a), 29943u));
    global0 = reverseBits(vec2<u32>(global0.x, ~(global0.x | ~4294967295u)));
    var var_2 = !(true && any(vec2<bool>(true, global0.x == global0.x)));
    var var_3 = Struct_2(abs(global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1126f, var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-805f, -2335f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -1164f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 1207f, -328f) * vec3<f32>(-1021f, var_1, var_1)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 891f, 146f) * vec3<f32>(-490f, var_1, var_1))))));
}

