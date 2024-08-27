struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, true);

var<private> global1: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global2: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(-2197f, 1251f, -1252f, -1362f), vec4<f32>(-670f, -247f, 421f, 607f), vec4<f32>(133f, -1008f, -1143f, -746f), vec4<f32>(-1475f, 182f, 919f, 733f), vec4<f32>(-1490f, -896f, -575f, 1245f), vec4<f32>(-2575f, -538f, -276f, -249f), vec4<f32>(-1055f, 982f, -1000f, -458f), vec4<f32>(-1548f, 1000f, -1097f, -1412f), vec4<f32>(1000f, -976f, 1083f, -1000f), vec4<f32>(1929f, 950f, -583f, 763f), vec4<f32>(-292f, -628f, -1625f, 1440f), vec4<f32>(658f, -1453f, 284f, 749f), vec4<f32>(1196f, 718f, -454f, -1398f), vec4<f32>(1421f, 1547f, 947f, -712f), vec4<f32>(1573f, 184f, 2305f, 1128f), vec4<f32>(-763f, -837f, 577f, 162f), vec4<f32>(1000f, 761f, -1432f, -349f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<bool>) -> vec2<bool> {
    var var_0 = !arg_2.c;
    var var_1 = Struct_5(Struct_4(global1.x < arg_1.b, arg_1.a.xx, false), -29941i & u_input.b, global1.x, firstTrailingBit(firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(u_input.b, u_input.a.x), 2147483647i))), arg_1);
    let var_2 = u_input.b | _wgslsmith_sub_i32(7620i, -_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a.x, -1i), i32(-1i) * -31239i, 69183i));
    global2 = array<vec4<f32>, 17>();
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-249f + _wgslsmith_f_op_f32(select(arg_1.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-350f, arg_1.a.x))), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(602f))) - _wgslsmith_f_op_f32(-599f * arg_1.a.x)), _wgslsmith_f_op_f32(-arg_2.b.x));
    return arg_3;
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(select(17636i, firstLeadingBit(_wgslsmith_mod_i32(arg_0, 1i)), func_2(true, Struct_1(vec3<f32>(arg_1.x, 1000f, arg_1.x), global1.x), Struct_2(arg_1.x, vec3<f32>(1261f, arg_1.x, -1033f), vec4<bool>(true, global0[_wgslsmith_index_u32(global1.x, 2u)], false, false)), !vec2<bool>(false, global0[_wgslsmith_index_u32(31442u, 2u)])).x), u_input.a.x), u_input.a.yy);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.xxx), firstLeadingBit(global1.x));
    global1 = reverseBits(firstTrailingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, var_1.b), vec2<u32>(51342u, 12738u)) >> (reverseBits(vec2<u32>(4294967295u, 30144u)) % vec2<u32>(32u))));
    global1 = ~vec2<u32>(~firstLeadingBit(min(var_1.b, 18268u)), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(var_1.b, global1.x), firstTrailingBit(~0u)));
    var var_2 = select(!vec3<bool>(false, !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(26586u, global1.x), 2u)], any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], false, false))), vec3<bool>(true, false, arg_1.x != 1509f), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 40981u, var_1.b), min(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(0u, global1.x, global1.x)), global0[_wgslsmith_index_u32(var_1.b, 2u)]), _wgslsmith_add_vec3_u32(~vec3<u32>(var_1.b, var_1.b, 0u), firstTrailingBit(vec3<u32>(global1.x, global1.x, global1.x)))), 2u)]);
    return ~0u;
}

fn func_1() -> vec4<i32> {
    global2 = array<vec4<f32>, 17>();
    var var_0 = select(-(u_input.a.zy << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 2918u, 1u, 16358u), vec4<u32>(83915u, 25808u, 42186u, 1u)), global1.x) % vec2<u32>(32u))), reverseBits(u_input.a.zz), !select(select(func_2(global0[_wgslsmith_index_u32(global1.x, 2u)], Struct_1(vec3<f32>(643f, 2067f, -958f), 1u), Struct_2(370f, vec3<f32>(-1525f, 2752f, 2476f), vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 2u)], true, global0[_wgslsmith_index_u32(global1.x, 2u)], true)), vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 2u)], global0[_wgslsmith_index_u32(0u, 2u)])), select(vec2<bool>(false, true), vec2<bool>(false, false), true), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 2u)], false)), vec2<bool>(global0[_wgslsmith_index_u32(9610u, 2u)] | false, true), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(global1.x, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(1u, global1.x, 4294967295u))), 2u)]));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1675f + 252f), _wgslsmith_f_op_f32(-841f + -460f), -1000f))), 32236u);
    var var_2 = func_3(-(~(~u_input.b)), global2[_wgslsmith_index_u32(global1.x, 17u)]);
    global1 = min(vec2<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 4294967295u, global1.x, global1.x), vec4<u32>(global1.x, 17182u, global1.x, global1.x)), var_1.b, false), var_1.b) >> (max(vec2<u32>(global1.x, ~global1.x), ~firstLeadingBit(vec2<u32>(16939u, 15552u))) % vec2<u32>(32u)), ~vec2<u32>(1u, abs(84276u)));
    return firstLeadingBit(_wgslsmith_clamp_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, 2147483647i, 52511i, var_0.x) & vec4<i32>(var_0.x, var_0.x, -1i, -1i), abs(vec4<i32>(var_0.x, 1i, 32152i, var_0.x))), -firstLeadingBit(vec4<i32>(var_0.x, 65826i, u_input.b, u_input.b) ^ vec4<i32>(-1i, u_input.a.x, 1i, var_0.x)), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, var_0.x, 1i, 2147483647i)) << (vec4<u32>(4294967295u, 27328u, 24769u, global1.x) % vec4<u32>(32u)), select(abs(vec4<i32>(1i, 13748i, 27236i, var_0.x)), max(vec4<i32>(u_input.a.x, 1589i, -1i, 42014i), vec4<i32>(0i, -1i, var_0.x, -1i)), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(70199u, 2u)], global0[_wgslsmith_index_u32(global1.x, 2u)], false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(68288u, _wgslsmith_clamp_vec4_i32(-vec4<i32>(i32(-1i) * -6228i, u_input.a.x << (global1.x % 32u), u_input.a.x, u_input.a.x), func_1(), vec4<i32>(u_input.a.x, u_input.a.x, ~u_input.a.x, u_input.a.x) >> (vec4<u32>(global1.x, global1.x, global1.x, 26026u) % vec4<u32>(32u))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-902f, 1119f)), _wgslsmith_f_op_f32(ceil(-179f))) + _wgslsmith_f_op_f32(f32(-1f) * -1102f)), _wgslsmith_div_vec3_f32(vec3<f32>(-475f, -361f, 1f), _wgslsmith_div_vec3_f32(vec3<f32>(-874f, -652f, 908f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(918f, 935f, 515f)))), select(select(vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 2u)], true, global0[_wgslsmith_index_u32(global1.x, 2u)], global0[_wgslsmith_index_u32(global1.x, 2u)]), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], false, true, global0[_wgslsmith_index_u32(699u, 2u)]), vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 2u)], true, true, true)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(global1.x, 2u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 2u)], false, global0[_wgslsmith_index_u32(0u, 2u)]), vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 2u)], false, false, global0[_wgslsmith_index_u32(global1.x, 2u)])), select(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(global1.x, 2u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], false), global0[_wgslsmith_index_u32(global1.x, 2u)]), !global0[_wgslsmith_index_u32(global1.x, 2u)]), vec4<bool>(all(vec2<bool>(false, false)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.x), vec2<u32>(global1.x, global1.x)), 2u)], global0[_wgslsmith_index_u32(14511u, 2u)] || false, true))));
    var_0 = Struct_3(abs(~112607u), vec4<i32>(~var_0.b.x, func_1().x ^ ((66468i ^ u_input.a.x) << (_wgslsmith_sub_u32(46753u, 2086u) % 32u)), ~var_0.b.x, 126i), var_0.c);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(var_0.c.b)), vec3<f32>(1028f, 1250f, var_0.c.b.x), var_0.c.c.wxy)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1272f, 2562f), vec3<f32>(-1215f, 1477f, 137f))))), global1.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-var_0.c.b);
    global1 = _wgslsmith_add_vec2_u32(select(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a, 0u), vec2<u32>(global1.x, 0u), vec2<u32>(4294967295u, 0u)) << (~vec2<u32>(13523u, 0u) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.b, global1.x), vec3<u32>(60844u, var_1.b, global1.x)), 70794u), !(var_0.c.c.x && var_0.c.c.x)), vec2<u32>(var_0.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a, var_1.b), _wgslsmith_add_vec2_u32(vec2<u32>(global1.x, 1u), vec2<u32>(4294967295u, 27547u)))), select(func_2(all(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(var_0.a, 2u)], true)), var_1, Struct_2(var_0.c.b.x, vec3<f32>(var_0.c.a, -1068f, var_1.a.x), var_0.c.c), vec2<bool>(false, true)), var_0.c.c.yz, global0[_wgslsmith_index_u32(countOneBits(4294967295u >> (global1.x % 32u)), 2u)])), (_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b, var_1.b), max(vec2<u32>(48268u, 0u), vec2<u32>(var_1.b, 18606u))) | select(abs(vec2<u32>(var_0.a, 8463u)), ~vec2<u32>(20452u, 74012u), !vec2<bool>(global0[_wgslsmith_index_u32(var_0.a, 2u)], true))) ^ ~(~vec2<u32>(var_0.a, 257u)));
    let var_3 = _wgslsmith_f_op_f32(-866f - _wgslsmith_div_f32(-1459f, var_0.c.a));
    let var_4 = global0[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(~var_0.a, countOneBits(select(4294967295u, 46213u, !var_0.c.c.x)))), 2u)];
    let var_5 = 1u;
    let var_6 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_0.a | 4294967295u, var_1.b >> (32663u % 32u), 4294967295u, global1.x)), _wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(4294967295u, 0u, 4294967295u, 3217u))), select(abs(vec4<u32>(var_0.a, 0u, var_0.a, 35008u)) >> (~vec4<u32>(1u, var_1.b, 1u, var_5) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, global1.x, 10355u, var_5), vec4<u32>(45988u, var_0.a, global1.x, 8911u), vec4<u32>(4294967295u, var_0.a, 11217u, 1u)), any(!var_0.c.c.zyw))), ~reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, var_1.b, var_5, var_5), vec4<u32>(var_0.a, var_0.a, var_0.a, var_5)) >> (vec4<u32>(var_0.a, 22862u, var_5, 22094u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-300f, 700f)))), 2147483647i, var_0.b.x & (i32(-1i) * -34837i), _wgslsmith_add_u32(var_1.b, max(86748u, var_5 >> (~var_0.a % 32u))));
}

