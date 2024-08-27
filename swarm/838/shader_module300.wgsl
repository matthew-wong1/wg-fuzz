struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec3<u32>(15829u, 28798u, 0u), vec2<u32>(1u, 1u), 49623u, vec2<f32>(-817f, -505f)), Struct_1(vec3<u32>(60736u, 1u, 59949u), vec2<u32>(1u, 5395u), 1u, vec2<f32>(-1189f, -1000f)), Struct_1(vec3<u32>(46452u, 36445u, 4294967295u), vec2<u32>(8921u, 1u), 1u, vec2<f32>(-1180f, 1095f))), Struct_2(Struct_1(vec3<u32>(1u, 14937u, 4294967295u), vec2<u32>(1u, 12791u), 44143u, vec2<f32>(2101f, -1147f)), Struct_1(vec3<u32>(0u, 1u, 1u), vec2<u32>(69248u, 1u), 4294967295u, vec2<f32>(401f, -712f)), Struct_1(vec3<u32>(4294967295u, 0u, 0u), vec2<u32>(39866u, 17921u), 4294967295u, vec2<f32>(907f, 411f))), Struct_2(Struct_1(vec3<u32>(4294967295u, 103597u, 4294967295u), vec2<u32>(16025u, 0u), 11381u, vec2<f32>(-1242f, 245f)), Struct_1(vec3<u32>(4294967295u, 0u, 18431u), vec2<u32>(0u, 61579u), 4294967295u, vec2<f32>(-591f, 1000f)), Struct_1(vec3<u32>(92814u, 4675u, 794u), vec2<u32>(1u, 1141u), 82704u, vec2<f32>(483f, 151f))), Struct_2(Struct_1(vec3<u32>(1u, 43406u, 58291u), vec2<u32>(1u, 8496u), 1u, vec2<f32>(785f, -577f)), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), vec2<u32>(1u, 28624u), 82085u, vec2<f32>(-483f, 360f)), Struct_1(vec3<u32>(52140u, 0u, 1u), vec2<u32>(19028u, 0u), 17922u, vec2<f32>(782f, -185f))), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 83389u), vec2<u32>(3720u, 64978u), 5746u, vec2<f32>(-732f, 729f)), Struct_1(vec3<u32>(7569u, 18274u, 4294967295u), vec2<u32>(0u, 4294967295u), 4294967295u, vec2<f32>(-779f, 1000f)), Struct_1(vec3<u32>(0u, 4294967295u, 44083u), vec2<u32>(72659u, 98265u), 11319u, vec2<f32>(1000f, 863f))), Struct_2(Struct_1(vec3<u32>(34414u, 34130u, 4294967295u), vec2<u32>(1u, 12696u), 87370u, vec2<f32>(436f, 1588f)), Struct_1(vec3<u32>(0u, 75076u, 46179u), vec2<u32>(10956u, 1u), 4294967295u, vec2<f32>(1080f, -1000f)), Struct_1(vec3<u32>(41874u, 4294967295u, 4294967295u), vec2<u32>(11190u, 4294967295u), 1u, vec2<f32>(775f, 331f))), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 16156u), vec2<u32>(14339u, 85309u), 11748u, vec2<f32>(-1925f, 1011f)), Struct_1(vec3<u32>(1u, 4294967295u, 28591u), vec2<u32>(4294967295u, 1u), 6400u, vec2<f32>(-625f, -440f)), Struct_1(vec3<u32>(0u, 0u, 17079u), vec2<u32>(1u, 0u), 34904u, vec2<f32>(-875f, 1206f))), Struct_2(Struct_1(vec3<u32>(1u, 36739u, 39923u), vec2<u32>(81282u, 26966u), 0u, vec2<f32>(248f, 1880f)), Struct_1(vec3<u32>(3873u, 34003u, 4294967295u), vec2<u32>(0u, 73463u), 26571u, vec2<f32>(1054f, -181f)), Struct_1(vec3<u32>(0u, 1u, 55356u), vec2<u32>(67864u, 48171u), 15266u, vec2<f32>(-397f, 1131f))), Struct_2(Struct_1(vec3<u32>(0u, 35987u, 29406u), vec2<u32>(1u, 4294967295u), 101769u, vec2<f32>(738f, 315f)), Struct_1(vec3<u32>(1u, 1u, 1u), vec2<u32>(4294967295u, 25892u), 4294967295u, vec2<f32>(1518f, -1928f)), Struct_1(vec3<u32>(61969u, 12323u, 45117u), vec2<u32>(26456u, 25770u), 0u, vec2<f32>(-675f, 436f))), Struct_2(Struct_1(vec3<u32>(38033u, 5325u, 18662u), vec2<u32>(1u, 7790u), 56203u, vec2<f32>(623f, 1544f)), Struct_1(vec3<u32>(4294967295u, 9438u, 14806u), vec2<u32>(0u, 4294967295u), 18314u, vec2<f32>(-1000f, -426f)), Struct_1(vec3<u32>(4294967295u, 31092u, 4294967295u), vec2<u32>(1u, 31022u), 1u, vec2<f32>(-1999f, 2144f))), Struct_2(Struct_1(vec3<u32>(0u, 113415u, 20492u), vec2<u32>(52846u, 4294967295u), 25698u, vec2<f32>(-204f, -124f)), Struct_1(vec3<u32>(1u, 29317u, 0u), vec2<u32>(45156u, 38039u), 1u, vec2<f32>(1000f, -1832f)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec2<u32>(1u, 2130u), 16652u, vec2<f32>(-996f, -1000f))), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 0u), vec2<u32>(33748u, 16411u), 17662u, vec2<f32>(-1722f, -1497f)), Struct_1(vec3<u32>(6327u, 1u, 33234u), vec2<u32>(53901u, 4294967295u), 0u, vec2<f32>(194f, 934f)), Struct_1(vec3<u32>(4294967295u, 1u, 0u), vec2<u32>(4294967295u, 0u), 4294967295u, vec2<f32>(1000f, -1396f))), Struct_2(Struct_1(vec3<u32>(10595u, 0u, 1u), vec2<u32>(0u, 34200u), 53828u, vec2<f32>(-1849f, 515f)), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), vec2<u32>(0u, 4294967295u), 7210u, vec2<f32>(3541f, -1195f)), Struct_1(vec3<u32>(51668u, 52051u, 0u), vec2<u32>(78668u, 0u), 45207u, vec2<f32>(181f, -419f))), Struct_2(Struct_1(vec3<u32>(7841u, 44019u, 0u), vec2<u32>(0u, 1u), 22643u, vec2<f32>(-1050f, 670f)), Struct_1(vec3<u32>(108353u, 61806u, 54026u), vec2<u32>(0u, 1u), 0u, vec2<f32>(-1579f, -946f)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec2<u32>(23511u, 0u), 0u, vec2<f32>(515f, -873f))), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 31512u), vec2<u32>(4294967295u, 47322u), 4294967295u, vec2<f32>(-113f, -2856f)), Struct_1(vec3<u32>(92632u, 4294967295u, 1551u), vec2<u32>(4294967295u, 5889u), 4294967295u, vec2<f32>(1101f, 1000f)), Struct_1(vec3<u32>(4294967295u, 29942u, 0u), vec2<u32>(4294967295u, 7411u), 4294967295u, vec2<f32>(-876f, -181f))), Struct_2(Struct_1(vec3<u32>(25027u, 19050u, 1u), vec2<u32>(4294967295u, 32383u), 65199u, vec2<f32>(626f, -108f)), Struct_1(vec3<u32>(0u, 32608u, 6399u), vec2<u32>(8699u, 0u), 1u, vec2<f32>(981f, -529f)), Struct_1(vec3<u32>(26918u, 20878u, 1u), vec2<u32>(0u, 4294967295u), 4294967295u, vec2<f32>(1232f, 1114f))), Struct_2(Struct_1(vec3<u32>(67u, 24488u, 0u), vec2<u32>(0u, 21325u), 32692u, vec2<f32>(1596f, -1205f)), Struct_1(vec3<u32>(24865u, 33964u, 0u), vec2<u32>(4294967295u, 52101u), 0u, vec2<f32>(801f, -507f)), Struct_1(vec3<u32>(0u, 1u, 36246u), vec2<u32>(36087u, 1u), 9765u, vec2<f32>(-1050f, -544f))), Struct_2(Struct_1(vec3<u32>(72683u, 60629u, 92607u), vec2<u32>(4294967295u, 1u), 50325u, vec2<f32>(-1624f, 583f)), Struct_1(vec3<u32>(4294967295u, 1u, 46277u), vec2<u32>(4294967295u, 0u), 1u, vec2<f32>(809f, -144f)), Struct_1(vec3<u32>(18617u, 53840u, 0u), vec2<u32>(47393u, 1u), 0u, vec2<f32>(587f, 994f))), Struct_2(Struct_1(vec3<u32>(59711u, 29245u, 1u), vec2<u32>(52032u, 4294967295u), 1u, vec2<f32>(1000f, -989f)), Struct_1(vec3<u32>(54310u, 4294967295u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), 1u, vec2<f32>(-1965f, -1432f)), Struct_1(vec3<u32>(1u, 0u, 4294967295u), vec2<u32>(32850u, 33989u), 4294967295u, vec2<f32>(1000f, 802f))), Struct_2(Struct_1(vec3<u32>(0u, 0u, 1u), vec2<u32>(64185u, 4294967295u), 84568u, vec2<f32>(-704f, 705f)), Struct_1(vec3<u32>(11369u, 0u, 0u), vec2<u32>(55028u, 2526u), 15112u, vec2<f32>(1738f, -1000f)), Struct_1(vec3<u32>(1u, 0u, 0u), vec2<u32>(0u, 45114u), 39337u, vec2<f32>(422f, -922f))));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<u32>(4294967295u, 63125u, 4294967295u), vec2<u32>(25089u, 1u), 1u, vec2<f32>(1114f, -985f)), Struct_1(vec3<u32>(53648u, 4294967295u, 4294967295u), vec2<u32>(4294967295u, 14553u), 1u, vec2<f32>(-1332f, 120f)), Struct_1(vec3<u32>(28910u, 0u, 18543u), vec2<u32>(66483u, 20667u), 4294967295u, vec2<f32>(1147f, -1098f)));

var<private> global2: array<bool, 11> = array<bool, 11>(false, true, false, true, false, true, true, true, true, true, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = all(!(!(!select(vec2<bool>(true, global2[_wgslsmith_index_u32(29671u, 11u)]), vec2<bool>(global2[_wgslsmith_index_u32(global1.b.c, 11u)], false), global2[_wgslsmith_index_u32(55595u, 11u)]))));
    let var_1 = global0[_wgslsmith_index_u32(global1.b.b.x, 20u)];
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.d.x * 1000f) * var_1.c.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.d.x, global1.c.d.x))))), var_1.c.d.x);
    let var_3 = vec2<u32>(12483u, 4294967295u);
    var var_4 = vec4<f32>(global1.b.d.x, _wgslsmith_f_op_f32(var_1.b.d.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -573f), var_1.a.d.x)), var_1.a.d.x, _wgslsmith_f_op_f32(floor(171f)));
    return var_0;
}

fn func_2() -> f32 {
    var var_0 = 355f;
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -872f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -618f)))));
    let var_1 = global1.c;
    let var_2 = global0[_wgslsmith_index_u32(global1.b.a.x, 20u)];
    var var_3 = vec2<bool>(all(!vec2<bool>(func_3(), global2[_wgslsmith_index_u32(1u, 11u)] & false)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~(4993u << (var_1.a.x % 32u)), ~var_2.b.a.x), vec2<u32>(firstLeadingBit(~36296u), _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(global1.a.b.x, global1.c.b.x), ~u_input.c.x))), 11u)]);
    return 311f;
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_1 {
    let var_0 = vec3<bool>(!(all(!vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 11u)], global2[_wgslsmith_index_u32(20517u, 11u)], global2[_wgslsmith_index_u32(arg_1, 11u)])) & (_wgslsmith_f_op_f32(func_2()) == _wgslsmith_f_op_f32(select(-206f, -1381f, false)))), !(!(_wgslsmith_f_op_f32(round(global1.b.d.x)) != -540f)), global2[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.c.xy), _wgslsmith_mult_u32(arg_1, 0u)) >> (0u % 32u)), 11u)]);
    let var_1 = global1.a.d.x;
    let var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(firstTrailingBit(_wgslsmith_add_vec3_u32(global1.a.a, global1.a.a))), _wgslsmith_div_vec3_u32(u_input.c, ~(vec3<u32>(u_input.d, arg_1, global1.c.b.x) & global1.b.a))), global1.b.b.x);
    let var_3 = arg_1;
    var var_4 = global1.c;
    return Struct_1(vec3<u32>(countOneBits(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_4.b.x), vec3<u32>(94462u, var_2.x, 1u)))), _wgslsmith_sub_u32(~25381u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.b.x, 28099u, 31525u), vec3<u32>(var_4.b.x, global1.c.c, arg_1)), var_3), 0u), vec2<u32>(max(var_2.x, _wgslsmith_add_u32(var_4.c, global1.a.a.x)), _wgslsmith_add_u32(var_3 ^ global1.c.b.x, 4294967295u) | 66466u), ~(var_3 << ((arg_1 & 18173u) % 32u)) ^ _wgslsmith_sub_u32(~var_3 >> (_wgslsmith_mod_u32(var_3, global1.a.a.x) % 32u), ~var_4.a.x), global1.a.d);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_2 {
    global1 = global0[_wgslsmith_index_u32(func_1(select(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), select(u_input.a.x, u_input.a.x, false)) >> (_wgslsmith_dot_vec3_u32(global1.a.a, ~vec3<u32>(35430u, 1u, 4294967295u)) % 32u), 1i, true), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(2904u, u_input.b, global1.a.c) ^ ~vec3<u32>(global1.a.b.x, 5288u, u_input.d), global1.c.a))).b.x, 20u)];
    global2 = array<bool, 11>();
    let var_0 = arg_0.c.d.x;
    var var_1 = Struct_1(vec3<u32>(1127u, min(countOneBits(1u), arg_0.c.b.x >> (min(0u, 1u) % 32u)), countOneBits(abs(~global1.b.b.x))), func_1(_wgslsmith_div_i32(firstLeadingBit(37086i), -u_input.a.x), 7152u).a.yx | u_input.c.zz, _wgslsmith_clamp_u32(u_input.c.x, firstLeadingBit(func_1(-11077i, ~arg_0.b.c).b.x), firstLeadingBit(arg_0.b.a.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.d.x) - func_1(u_input.a.x, u_input.d).d.x) - _wgslsmith_f_op_f32(-arg_0.c.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -493f)));
    let var_2 = u_input.a.x;
    return Struct_2(Struct_1(func_1(u_input.a.x, 0u).a, vec2<u32>(var_1.b.x, global1.b.a.x), u_input.c.x, vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-473f, arg_0.a.d.x, false)), var_1.d.x))), arg_0.b, global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(Struct_2(func_1(max(~(-12370i), select(u_input.a.x, -2147483647i, true)), firstLeadingBit(~u_input.d)), Struct_1(global1.c.a, u_input.c.yz ^ (vec2<u32>(4294967295u, u_input.b) ^ u_input.c.xz), 5307u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(455f, global1.c.d.x) * global1.c.d) + global1.b.d)), func_1(-u_input.a.x, _wgslsmith_add_u32(reverseBits(global1.a.c), ~global1.b.b.x))), !select(vec2<bool>(global1.b.d.x >= global1.b.d.x, any(vec4<bool>(global2[_wgslsmith_index_u32(global1.c.c, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)], false, true))), !vec2<bool>(global2[_wgslsmith_index_u32(12002u, 11u)], true), !(!vec2<bool>(true, global2[_wgslsmith_index_u32(global1.a.a.x, 11u)]))));
    global1 = Struct_2(func_4(func_4(Struct_2(Struct_1(vec3<u32>(4294967295u, global1.b.b.x, global1.a.a.x), global1.b.a.zy, global1.a.c, global1.b.d), func_4(global0[_wgslsmith_index_u32(global1.b.c, 20u)], vec2<bool>(global2[_wgslsmith_index_u32(global1.b.a.x, 11u)], true)).c, Struct_1(vec3<u32>(3124u, u_input.b, 24321u), u_input.c.xx, 4294967295u, global1.c.d)), !select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.d, 11u)]), vec2<bool>(true, false), global2[_wgslsmith_index_u32(2803u, 11u)])), select(!select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(global1.b.b.x, 11u)], true), vec2<bool>(global2[_wgslsmith_index_u32(global1.b.b.x, 11u)], global2[_wgslsmith_index_u32(global1.c.a.x, 11u)])), vec2<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 11u)], global2[_wgslsmith_index_u32(0u, 11u)])), true), select(!vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 11u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 11u)]), all(vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(3208u, 11u)]))))).a, func_1(-2147483647i, firstTrailingBit(~global1.b.c)), Struct_1(~(~vec3<u32>(global1.c.c, 0u, 3657u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, _wgslsmith_add_u32(u_input.c.x, u_input.d)), max(u_input.c.xx, u_input.c.zx)), func_4(Struct_2(func_1(u_input.a.x, u_input.d), global1.c, Struct_1(u_input.c, u_input.c.xy, 1u, vec2<f32>(-1048f, global1.c.d.x))), select(!vec2<bool>(global2[_wgslsmith_index_u32(84800u, 11u)], global2[_wgslsmith_index_u32(u_input.b, 11u)]), !vec2<bool>(global2[_wgslsmith_index_u32(global1.a.c, 11u)], global2[_wgslsmith_index_u32(u_input.d, 11u)]), select(vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(0u, 11u)], false), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 11u)], true)))).a.a.x, global1.a.d));
    global0 = array<Struct_2, 20>();
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(~(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x) << (~global1.a.a.x % 32u)), u_input.a.x >> (func_4(func_4(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], vec2<bool>(global2[_wgslsmith_index_u32(76335u, 11u)], true)), !vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 11u)])).c.b.x % 32u)), _wgslsmith_mod_i32(-_wgslsmith_add_i32(u_input.a.x, u_input.a.x ^ -27812i), ~(-2147483647i)));
    global1 = func_4(func_4(func_4(func_4(func_4(global0[_wgslsmith_index_u32(35260u, 20u)], vec2<bool>(true, true)), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 11u)], true)), vec2<bool>(true, func_3())), vec2<bool>(false, global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 43823u, 47369u), vec3<u32>(35004u, 1u, 8324u))), 11u)])), vec2<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.d), 11u)] & true));
    global0 = array<Struct_2, 20>();
    let var_1 = func_4(Struct_2(Struct_1(vec3<u32>(1u, 31721u, 1u) >> (global1.c.a % vec3<u32>(32u)), vec2<u32>(~u_input.d, firstLeadingBit(u_input.c.x)), abs(global1.a.c), func_1(min(var_0.x, -7845i), 60963u & u_input.d).d), Struct_1(u_input.c, ~select(u_input.c.xx, global1.a.a.yy, vec2<bool>(true, false)), ~reverseBits(0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a.d + vec2<f32>(global1.c.d.x, global1.c.d.x)))), func_4(func_4(global0[_wgslsmith_index_u32(69029u, 20u)], select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 11u)], global2[_wgslsmith_index_u32(global1.c.a.x, 11u)]), vec2<bool>(global2[_wgslsmith_index_u32(global1.a.c, 11u)], global2[_wgslsmith_index_u32(u_input.d, 11u)]), false)), !(!vec2<bool>(global2[_wgslsmith_index_u32(45216u, 11u)], true))).c), !select(!(!vec2<bool>(false, global2[_wgslsmith_index_u32(global1.c.a.x, 11u)])), vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 48145u, 4294967295u), vec3<u32>(u_input.d, global1.b.c, 100755u)), 11u)], any(vec2<bool>(true, false))), all(select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(1005u, 11u)], false), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)], false), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.d, 11u)], global2[_wgslsmith_index_u32(global1.c.b.x, 11u)])))));
    var var_2 = func_4(Struct_2(global1.c, func_4(var_1, vec2<bool>(global2[_wgslsmith_index_u32(9667u, 11u)] & true, !global2[_wgslsmith_index_u32(1u, 11u)])).c, func_4(Struct_2(Struct_1(vec3<u32>(u_input.c.x, 24416u, 19057u), u_input.c.zx, 31483u, vec2<f32>(global1.a.d.x, var_1.b.d.x)), func_1(u_input.a.x, 4294967295u), Struct_1(vec3<u32>(10478u, u_input.c.x, u_input.c.x), u_input.c.yy, var_1.b.c, var_1.a.d)), !vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 11u)])).a), vec2<bool>(((global1.a.c << (u_input.d % 32u)) << (0u % 32u)) <= var_1.c.b.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(min(32187u, global1.b.b.x), u_input.c.x, 0u), ~vec3<u32>(var_1.a.a.x, 1821u, var_1.a.b.x)), 11u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.d);
}

