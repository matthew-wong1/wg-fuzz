struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(-1792i, -19596i, 40054i, 1i), vec4<i32>(i32(-2147483648), 1i, -1678i, i32(-2147483648)), vec4<i32>(17027i, 20705i, i32(-2147483648), -9868i), vec4<i32>(0i, -1i, 2797i, 2147483647i), vec4<i32>(1i, -6917i, -37681i, -1382i), vec4<i32>(-63363i, -2555i, -12957i, 0i), vec4<i32>(-1i, 37107i, -196i, -5764i), vec4<i32>(-20845i, 2430i, 2147483647i, 9714i), vec4<i32>(-15451i, 9414i, -17376i, 28137i), vec4<i32>(0i, 26111i, -15111i, -82413i), vec4<i32>(2147483647i, 2147483647i, 1i, -39540i), vec4<i32>(2147483647i, 0i, 2330i, 25490i), vec4<i32>(2147483647i, 2147483647i, 0i, 1i), vec4<i32>(0i, 59655i, 0i, 28544i), vec4<i32>(-1i, 0i, 1i, -1i), vec4<i32>(-21349i, -10674i, -5091i, 2147483647i), vec4<i32>(i32(-2147483648), 40881i, -1522i, 5638i), vec4<i32>(72266i, -18925i, 1i, -1i), vec4<i32>(41159i, i32(-2147483648), 31807i, 0i), vec4<i32>(1i, 0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(22106i, -21061i, 2147483647i, -22619i), vec4<i32>(55725i, 15621i, 21020i, i32(-2147483648)), vec4<i32>(1i, 2147483647i, 56251i, 162i), vec4<i32>(6111i, 8725i, -15294i, i32(-2147483648)), vec4<i32>(-1i, 38672i, 0i, 17216i), vec4<i32>(0i, -1i, 60103i, 35638i), vec4<i32>(-1i, 500i, 16729i, -1i), vec4<i32>(-1i, 2147483647i, 1i, i32(-2147483648)), vec4<i32>(-11104i, -48915i, 363i, -26102i), vec4<i32>(i32(-2147483648), 2147483647i, 43057i, -24114i));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: i32, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(_wgslsmith_mult_u32(0u, ~6962u), _wgslsmith_mult_u32(1u, 0u) << (1u % 32u), ~(~6636u))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1461f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, arg_0.x, arg_0.x) - vec3<f32>(arg_1, -660f, 1000f)), vec3<f32>(arg_0.x, -1041f, arg_0.x), vec3<bool>(true, false, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1054f, -1225f, 1097f)))))));
    let var_3 = Struct_1(max(countOneBits(vec4<u32>(var_0.x, 4294967295u, ~var_0.x, _wgslsmith_dot_vec2_u32(var_0.yy, var_0.zy))), ~(vec4<u32>(63149u, 0u, 121305u, 12815u) & vec4<u32>(var_0.x, var_0.x, 65055u, var_0.x)) << ((vec4<u32>(var_0.x, var_0.x, 62857u, var_0.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(57495u, 4294967295u, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 66353u), vec4<u32>(5555u, 37955u, 1u, 70800u)) % vec4<u32>(32u))) % vec4<u32>(32u))), var_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-127f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-313f)))), arg_1, var_1) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1044f, -319f, var_1, 1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -1000f, 707f, 1630f) + vec4<f32>(-907f, var_1, arg_1, 1076f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -957f, var_2.x, -1886f)), global0[_wgslsmith_index_u32(4294967295u, 30u)]);
    var var_4 = true;
    return _wgslsmith_f_op_f32(-798f + _wgslsmith_f_op_f32(1008f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = true;
    let var_1 = u_input.b.x;
    global0 = array<vec4<i32>, 30>();
    let var_2 = arg_1;
    global0 = array<vec4<i32>, 30>();
    return select(vec2<bool>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_2.e.x, -2147483647i), arg_1.e.x, _wgslsmith_add_i32(2147483647i, arg_1.e.x)) <= ~firstTrailingBit(arg_1.e.x), !(!(false || var_0))), vec2<bool>(any(!vec2<bool>(var_0, true)), false), var_0);
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    var var_0 = vec4<bool>(any(select(func_4(_wgslsmith_f_op_f32(func_3(vec2<f32>(1580f, 540f), -768f, u_input.b.x, 11210i)), Struct_1(vec4<u32>(1u, 42577u, 0u, 21325u), 4294967295u, vec4<f32>(-1756f, -582f, -661f, 185f), vec4<f32>(695f, -649f, 754f, -282f), vec4<i32>(u_input.b.x, u_input.d, u_input.d, u_input.b.x)), Struct_1(vec4<u32>(1u, 4294967295u, 61033u, 21716u), 13807u, vec4<f32>(390f, -1000f, 638f, -334f), vec4<f32>(-2267f, 1691f, -2240f, 632f), u_input.b)), arg_0.zz, !arg_0.x)), true, arg_0.x, true);
    var_0 = select(select(vec4<bool>(any(vec2<bool>(true, true)), !func_4(-501f, Struct_1(vec4<u32>(4309u, 1u, 1u, 1u), 4294967295u, vec4<f32>(-1411f, -1171f, -341f, -1231f), vec4<f32>(2043f, -418f, 782f, 764f), vec4<i32>(-1725i, u_input.b.x, -11891i, u_input.d)), Struct_1(vec4<u32>(4294967295u, 1u, 6169u, 0u), 64526u, vec4<f32>(1560f, -347f, -537f, 719f), vec4<f32>(-1000f, 1422f, 106f, 1553f), vec4<i32>(u_input.c.x, u_input.a.x, u_input.d, u_input.a.x))).x, false, var_0.x), !(!(!vec4<bool>(false, var_0.x, false, arg_0.x))), arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, select(!func_4(-623f, Struct_1(vec4<u32>(0u, 0u, 76319u, 10216u), 1u, vec4<f32>(-1939f, -317f, 2258f, -215f), vec4<f32>(-1167f, -1691f, -650f, -111f), global0[_wgslsmith_index_u32(1u, 30u)]), Struct_1(vec4<u32>(0u, 0u, 44623u, 1u), 37095u, vec4<f32>(147f, -277f, 1000f, 1248f), vec4<f32>(771f, -1071f, -866f, -1043f), global0[_wgslsmith_index_u32(80380u, 30u)])).x, var_0.x, true)), 0u == _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 1u), vec2<u32>(firstTrailingBit(61410u), 18584u)));
    var var_1 = ~_wgslsmith_mult_i32(u_input.c.x, ~(abs(-1i) & (u_input.b.x >> (61441u % 32u))));
    var_0 = !(!vec4<bool>(arg_0.x, var_0.x, all(!vec3<bool>(var_0.x, arg_0.x, false)), arg_0.x));
    let var_2 = -1100f;
    return 4294967295u;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = func_2(vec3<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)), true, true));
    var var_1 = Struct_1(vec4<u32>(1u & arg_2, 11660u, 6561u, _wgslsmith_add_u32(4294967295u ^ arg_2, firstTrailingBit(_wgslsmith_add_u32(23840u, arg_1.b)))), ~(~1u) ^ arg_1.a.x, arg_1.c, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) + arg_1.c.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -421f))), _wgslsmith_f_op_f32(arg_1.d.x - _wgslsmith_f_op_f32(min(arg_1.c.x, -1349f))), _wgslsmith_f_op_f32(arg_1.d.x - arg_1.c.x)))), firstLeadingBit(~(~arg_1.e)));
    var var_2 = -1256f;
    var var_3 = ~vec3<u32>(arg_2, 35065u, arg_1.b);
    let var_4 = (-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, var_1.e.x, 49692i, 3816i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.e.x, u_input.b.x, -8495i, arg_1.e.x), arg_1.e)) | vec4<i32>(~_wgslsmith_mult_i32(var_1.e.x, -2147483647i), _wgslsmith_mod_i32(~20227i, arg_0), _wgslsmith_sub_i32(var_1.e.x >> (0u % 32u), var_1.e.x | -1i), _wgslsmith_mod_i32(var_1.e.x, _wgslsmith_mod_i32(3038i, u_input.d)))) >> (~(~arg_1.a) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_1.d.x, 1000f)), var_1.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-302f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 296f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(-2147483647i, Struct_1(vec4<u32>(0u, 4294967295u, 29396u, 63944u), 1u, vec4<f32>(726f, -1139f, -874f, 458f), vec4<f32>(-1183f, -409f, 212f, -334f), global0[_wgslsmith_index_u32(4294967295u, 30u)]), 1u)), _wgslsmith_f_op_f32(-1030f - -682f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(195f, 1298f)))));
    var var_1 = !(_wgslsmith_add_i32(u_input.c.x | -u_input.b.x, reverseBits(u_input.d)) >= u_input.b.x);
    let var_2 = select(vec4<i32>(-35688i, -2147483647i, u_input.b.x, -8407i), vec4<i32>(u_input.b.x, u_input.a.x, ~(-38886i), ~u_input.b.x) | ~u_input.a, !select(2147483647i > u_input.b.x, false, true) & select(all(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(func_1(u_input.d, Struct_1(vec4<u32>(4294967295u, 1u, 1u, 33202u), 51213u, vec4<f32>(-479f, 2095f, var_0.x, var_0.x), vec4<f32>(428f, 150f, var_0.x, var_0.x), u_input.a), 1u)) >= 205f, true));
    var var_3 = Struct_1(vec4<u32>(0u, 1u, _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 4294967295u), 109652u), 1u), 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-301f, 1444f, -1298f, 1000f), vec4<f32>(-1207f, 333f, -115f, var_0.x)), vec4<f32>(var_0.x, var_0.x, 220f, var_0.x), vec4<bool>(true, true, true, true))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_0.x, var_0.x, 371f), vec4<f32>(var_0.x, 1000f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, var_0.x, var_0.x, var_0.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, var_0.x, -247f)))))), vec4<i32>(1i, -2147483647i, _wgslsmith_dot_vec2_i32(max(var_2.xz, u_input.a.yy), u_input.a.wy) << (~_wgslsmith_mod_u32(5331u, 4294967295u) % 32u), firstLeadingBit(-1i)));
    var var_4 = firstTrailingBit(vec4<i32>(countOneBits(abs(var_2.x)), -((u_input.d & var_3.e.x) ^ 17376i), abs(_wgslsmith_add_i32(2147483647i, -42478i)), _wgslsmith_sub_i32(~(~456i), _wgslsmith_div_i32(_wgslsmith_add_i32(var_2.x, -8083i), _wgslsmith_mult_i32(77204i, var_3.e.x)))));
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.x + -676f)), _wgslsmith_f_op_f32(-var_0.x)))), -420f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1569f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(var_3.a.xzz, abs(~var_3.a.ywy ^ (vec3<u32>(var_3.b, var_3.a.x, 0u) ^ vec3<u32>(var_3.b, var_3.b, var_3.a.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-628f * var_0.x), -433f))), var_5.zy, select(true, func_4(1497f, Struct_1(var_3.a, var_3.b, var_3.d, var_3.c, vec4<i32>(-2147483647i, u_input.a.x, 37282i, -2147483647i)), Struct_1(vec4<u32>(0u, 13342u, var_3.b, 1u), var_3.b, vec4<f32>(280f, var_5.x, var_3.d.x, var_3.c.x), var_3.c, vec4<i32>(2147483647i, var_4.x, u_input.a.x, var_4.x))).x, (u_input.c.x <= var_4.x) | true))), countOneBits(var_3.e.ywz));
}

