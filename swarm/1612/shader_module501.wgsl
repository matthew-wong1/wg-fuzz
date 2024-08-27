struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<i32>(i32(-2147483648), 19919i, -13129i), vec4<f32>(1176f, -1000f, 775f, 831f), i32(-2147483648), vec4<bool>(true, false, false, true)), Struct_1(vec3<i32>(2147483647i, 1i, -8278i), vec4<f32>(-1408f, -1000f, -865f, -1149f), 1i, vec4<bool>(false, false, false, true)), Struct_1(vec3<i32>(1i, 0i, 0i), vec4<f32>(-1748f, -394f, -157f, -317f), -1i, vec4<bool>(false, false, false, false)), Struct_1(vec3<i32>(15947i, 1i, 37782i), vec4<f32>(101f, -167f, 970f, -1000f), -1i, vec4<bool>(true, false, false, true)), Struct_1(vec3<i32>(6262i, 18064i, 70222i), vec4<f32>(639f, 448f, -822f, 1930f), 1i, vec4<bool>(false, false, true, true)), Struct_1(vec3<i32>(0i, -1i, i32(-2147483648)), vec4<f32>(469f, 766f, -1039f, -103f), 2147483647i, vec4<bool>(true, false, false, true)), Struct_1(vec3<i32>(1i, -13730i, 1i), vec4<f32>(-334f, -195f, 219f, -561f), 35568i, vec4<bool>(true, true, true, false)), Struct_1(vec3<i32>(2147483647i, -1i, -81700i), vec4<f32>(220f, 1000f, -533f, 144f), i32(-2147483648), vec4<bool>(false, false, false, true)), Struct_1(vec3<i32>(20906i, -23842i, -139i), vec4<f32>(1922f, -652f, -1554f, 292f), 20645i, vec4<bool>(true, false, false, false)), Struct_1(vec3<i32>(2147483647i, 56220i, -11166i), vec4<f32>(-229f, -505f, -1017f, -603f), 11256i, vec4<bool>(true, true, false, true)), Struct_1(vec3<i32>(0i, 2147483647i, 2147483647i), vec4<f32>(-750f, -962f, 179f, -206f), -56554i, vec4<bool>(false, true, false, true)), Struct_1(vec3<i32>(1027i, 8609i, -37145i), vec4<f32>(142f, 265f, -583f, 2068f), 0i, vec4<bool>(false, false, false, false)), Struct_1(vec3<i32>(-9440i, 39763i, -13955i), vec4<f32>(-187f, 1102f, -189f, 1298f), 2147483647i, vec4<bool>(true, false, false, true)), Struct_1(vec3<i32>(1i, 9074i, 7501i), vec4<f32>(-1000f, -2349f, 615f, 681f), 22957i, vec4<bool>(true, false, false, false)), Struct_1(vec3<i32>(-5934i, 1i, -23053i), vec4<f32>(-1273f, 1084f, -1000f, -1816f), 26542i, vec4<bool>(false, true, false, false)), Struct_1(vec3<i32>(-16430i, 1i, -40104i), vec4<f32>(-1063f, -946f, -467f, 718f), 2147483647i, vec4<bool>(false, false, false, true)));

var<private> global2: array<i32, 18>;

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_3(abs(select(~(~vec4<i32>(52273i, u_input.b.x, -28227i, global2[_wgslsmith_index_u32(arg_1, 18u)])), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(0i, 2147483647i, 3562i, -27574i)), firstTrailingBit(vec4<i32>(-1i, 19833i, -6490i, 26881i))), arg_2.a.d)), ~(~u_input.a));
    let var_1 = _wgslsmith_div_u32(~105248u >> (~var_0.b.x % 32u), var_0.b.x | max(~var_0.b.x, _wgslsmith_sub_u32(arg_1, var_0.b.x & arg_1)));
    global3 = arg_2.a.d;
    global0 = array<f32, 27>();
    let var_2 = ~vec4<i32>(22975i, i32(-1i) * -arg_2.a.a.x, _wgslsmith_div_i32(var_0.a.x ^ global2[_wgslsmith_index_u32(0u, 18u)], 1i) & -max(25513i, 1i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 0i, 1i), arg_2.a.a, arg_2.a.a), select(arg_2.a.a, arg_0, global3.x)), global2[_wgslsmith_index_u32(0u, 18u)]));
    return _wgslsmith_f_op_f32(max(arg_2.a.b.x, _wgslsmith_f_op_f32(-864f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -630f), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(-1103f)))))));
}

fn func_4(arg_0: bool) -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(select(select(vec3<i32>(54379i, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(867u, 18u)]), vec3<i32>(u_input.b.x, 0i, -1i), global3.yyy), vec3<i32>(-19899i, u_input.b.x, global2[_wgslsmith_index_u32(0u, 18u)]), arg_0) | (-vec3<i32>(49851i, 2147483647i, -24330i) >> ((vec3<u32>(4294967295u, u_input.a.x, 0u) | u_input.a.zxx) % vec3<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<i32>(1i, 1i, global2[_wgslsmith_index_u32(4294967295u, 18u)]), u_input.a.x, Struct_2(Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(74816u, 18u)], -2147483647i, u_input.b.x), vec4<f32>(-483f, 1444f, -697f, 1055f), u_input.b.x, vec4<bool>(global3.x, false, global3.x, false))))) * -216f), -173f, global0[_wgslsmith_index_u32(59046u, 27u)], -309f), ~(_wgslsmith_mod_i32(u_input.b.x, global2[_wgslsmith_index_u32(u_input.a.x, 18u)]) | 1i), select(vec4<bool>(true, true, u_input.b.x >= global2[_wgslsmith_index_u32(46319u, 18u)], arg_0), vec4<bool>(any(vec4<bool>(arg_0, false, global3.x, true)), arg_0, true, arg_0), select(vec4<bool>(arg_0, global3.x, arg_0, global3.x), vec4<bool>(arg_0, arg_0, false, false), u_input.b.x < global2[_wgslsmith_index_u32(26387u, 18u)]))));
    var var_1 = ~(~select(-select(var_0.a.c, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], false), 2147483647i, !global3.x));
    return vec3<u32>(64305u, _wgslsmith_dot_vec3_u32(u_input.a.zzy, _wgslsmith_mult_vec3_u32(firstTrailingBit(u_input.a.yzw), vec3<u32>(reverseBits(u_input.a.x), reverseBits(u_input.a.x), u_input.a.x))), 1u);
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_4(_wgslsmith_f_op_f32(func_3(vec3<i32>(global2[_wgslsmith_index_u32(28967u, 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)], -2147483647i), u_input.a.x, Struct_2(Struct_1(vec3<i32>(1i, 28477i, 2147483647i), vec4<f32>(134f, arg_0.b.x, global0[_wgslsmith_index_u32(1u, 27u)], arg_0.b.x), -67133i, vec4<bool>(arg_0.d.x, global3.x, false, arg_0.d.x))))) >= global0[_wgslsmith_index_u32(~0u, 27u)]), ~(vec3<u32>(0u, u_input.a.x, 52441u) & vec3<u32>(4294967295u, 1u, 28850u))), 16u)]);
    let var_1 = _wgslsmith_f_op_f32(var_0.a.b.x + 1717f);
    global2 = array<i32, 18>();
    var var_2 = vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.xw, vec2<u32>(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(51845u, u_input.a.x, 0u), min(vec3<u32>(u_input.a.x, 11935u, u_input.a.x), vec3<u32>(u_input.a.x, 0u, u_input.a.x))))), ~80472u, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a.x, u_input.a.x, 0u)) << (vec3<u32>(u_input.a.x, 0u, u_input.a.x) % vec3<u32>(32u)), max(vec3<u32>(u_input.a.x, u_input.a.x, 49133u), firstTrailingBit(u_input.a.www)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b.x) + -325f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1373f, var_1) * vec2<f32>(-615f, global0[_wgslsmith_index_u32(u_input.a.x, 27u)])))) + vec2<f32>(var_0.a.b.x, arg_0.b.x)))));
    return var_2.yw;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32) -> vec3<i32> {
    var var_0 = _wgslsmith_sub_vec2_i32(-vec2<i32>(_wgslsmith_clamp_i32(-9596i, u_input.b.x, -1i), global2[_wgslsmith_index_u32(arg_1.b.x, 18u)] | 2147483647i) | vec2<i32>(-12369i, _wgslsmith_div_i32(-34963i, i32(-1i) * -2147483647i)), u_input.b);
    var var_1 = arg_1.a;
    let var_2 = vec4<u32>(4294967295u << (u_input.a.x % 32u), _wgslsmith_sub_u32(~(~102398u), arg_1.b.x) << (~(~min(arg_1.b.x, 0u)) % 32u), ~(~_wgslsmith_dot_vec2_u32(func_2(arg_0), _wgslsmith_add_vec2_u32(vec2<u32>(23707u, u_input.a.x), vec2<u32>(u_input.a.x, 35168u)))), _wgslsmith_mod_u32(~(~0u), u_input.a.x) & 45528u);
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_add_u32(2025u, abs(u_input.a.x))), 16u)];
    let var_4 = -arg_1.a;
    return -var_4.xzy << (var_2.yzy % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 16>();
    global1 = array<Struct_1, 16>();
    global2 = array<i32, 18>();
    let var_0 = -reverseBits(~func_1(global1[_wgslsmith_index_u32(62312u, 16u)], Struct_3(vec4<i32>(u_input.b.x, -10771i, -1i, global2[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 13097u)), -171f) << (~countOneBits(u_input.a.ywx) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 27u)])) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(864f, global0[_wgslsmith_index_u32(21452u, 27u)])))) - global0[_wgslsmith_index_u32(firstLeadingBit(reverseBits(u_input.a.x)), 27u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-234f, 1000f, -781f, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]) * vec4<f32>(global0[_wgslsmith_index_u32(40926u, 27u)], -1000f, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(0u, 27u)])))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2915f, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(26495u, 27u)])), -1032f, _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a.x, 27u)])))))), 0i | (0i << (~(~u_input.a.x) % 32u)));
}

