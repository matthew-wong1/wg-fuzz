struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: array<bool, 3>;

var<private> global2: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(53156u, 72846u, 2349u, 16032u), vec4<u32>(1u, 41301u, 0u, 56107u), vec4<u32>(0u, 0u, 9816u, 4294967295u), vec4<u32>(4124u, 18706u, 41154u, 1u), vec4<u32>(0u, 0u, 38216u, 0u), vec4<u32>(1u, 39096u, 25453u, 0u), vec4<u32>(1127u, 21383u, 20093u, 25082u), vec4<u32>(71553u, 14499u, 0u, 0u), vec4<u32>(6073u, 1u, 0u, 5000u), vec4<u32>(32630u, 0u, 18168u, 46540u), vec4<u32>(1u, 1u, 16564u, 4294967295u), vec4<u32>(37684u, 0u, 40356u, 4294967295u), vec4<u32>(538u, 29424u, 0u, 9081u), vec4<u32>(56410u, 75210u, 0u, 95217u), vec4<u32>(4294967295u, 40101u, 53453u, 1u), vec4<u32>(0u, 1u, 0u, 35672u), vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(51474u, 66690u, 0u, 1u), vec4<u32>(16481u, 65351u, 1u, 0u), vec4<u32>(4294967295u, 17162u, 1u, 49557u), vec4<u32>(0u, 6766u, 42525u, 1u), vec4<u32>(13692u, 12779u, 38401u, 0u));

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(346f, vec3<u32>(4872u, 2931u, 1u), vec3<f32>(-941f, 359f, -1000f), vec3<f32>(-914f, -627f, 2164f)), Struct_1(812f, vec3<u32>(1357u, 63381u, 64681u), vec3<f32>(-219f, -159f, -111f), vec3<f32>(952f, -451f, -237f)), Struct_1(-1664f, vec3<u32>(4294967295u, 4294967295u, 0u), vec3<f32>(-587f, 1000f, 264f), vec3<f32>(1520f, 1365f, -1000f)), Struct_1(927f, vec3<u32>(50226u, 4834u, 77984u), vec3<f32>(830f, 459f, -1311f), vec3<f32>(1156f, -497f, 1044f)), Struct_1(-606f, vec3<u32>(90770u, 4294967295u, 83890u), vec3<f32>(540f, -169f, 2184f), vec3<f32>(526f, -145f, 301f)), Struct_1(-142f, vec3<u32>(0u, 63998u, 4294967295u), vec3<f32>(-390f, -160f, -992f), vec3<f32>(2276f, -711f, 313f)), Struct_1(-1111f, vec3<u32>(4294967295u, 24217u, 4294967295u), vec3<f32>(-964f, 1000f, -775f), vec3<f32>(-1000f, 1053f, 1000f)), Struct_1(-1757f, vec3<u32>(35067u, 35309u, 4220u), vec3<f32>(1076f, 1190f, -990f), vec3<f32>(-961f, 1000f, -553f)), Struct_1(153f, vec3<u32>(4294967295u, 84704u, 18994u), vec3<f32>(-857f, -581f, 1394f), vec3<f32>(201f, -396f, -1555f)), Struct_1(-421f, vec3<u32>(6744u, 1u, 1u), vec3<f32>(-968f, 1339f, -688f), vec3<f32>(-566f, -363f, 1520f)), Struct_1(597f, vec3<u32>(40347u, 2739u, 17355u), vec3<f32>(692f, 1868f, 421f), vec3<f32>(435f, 312f, -158f)), Struct_1(1000f, vec3<u32>(0u, 1u, 1u), vec3<f32>(-1000f, 1307f, 2718f), vec3<f32>(2676f, -125f, 342f)), Struct_1(779f, vec3<u32>(0u, 45690u, 0u), vec3<f32>(380f, -318f, 1450f), vec3<f32>(-2961f, -2079f, 1000f)), Struct_1(202f, vec3<u32>(19556u, 4294967295u, 20443u), vec3<f32>(-710f, -678f, 1200f), vec3<f32>(1340f, -652f, -1517f)), Struct_1(-1000f, vec3<u32>(37244u, 4294967295u, 1071u), vec3<f32>(-486f, -650f, -364f), vec3<f32>(-581f, -695f, -1000f)), Struct_1(-1061f, vec3<u32>(0u, 23239u, 0u), vec3<f32>(948f, 1313f, -782f), vec3<f32>(-683f, -1720f, -140f)), Struct_1(-970f, vec3<u32>(0u, 25529u, 37589u), vec3<f32>(880f, 336f, 1000f), vec3<f32>(888f, -584f, -167f)), Struct_1(905f, vec3<u32>(64133u, 19340u, 98818u), vec3<f32>(1476f, -2074f, 187f), vec3<f32>(-822f, -1942f, -607f)), Struct_1(-977f, vec3<u32>(0u, 61206u, 4294967295u), vec3<f32>(1229f, 449f, 2286f), vec3<f32>(421f, -215f, -611f)), Struct_1(-842f, vec3<u32>(27201u, 15709u, 0u), vec3<f32>(-439f, -1344f, -1595f), vec3<f32>(2514f, 472f, -1253f)), Struct_1(1061f, vec3<u32>(1u, 8845u, 1u), vec3<f32>(650f, 314f, -1927f), vec3<f32>(-1000f, 286f, -331f)), Struct_1(-307f, vec3<u32>(0u, 62013u, 0u), vec3<f32>(1000f, 1504f, -244f), vec3<f32>(1015f, -1000f, 1475f)), Struct_1(-468f, vec3<u32>(4294967295u, 1u, 22414u), vec3<f32>(673f, -1008f, 1284f), vec3<f32>(1113f, -1368f, -160f)), Struct_1(2354f, vec3<u32>(4294967295u, 0u, 68033u), vec3<f32>(306f, -578f, -1823f), vec3<f32>(-394f, -1402f, 161f)), Struct_1(-444f, vec3<u32>(11027u, 37511u, 54579u), vec3<f32>(-655f, 1983f, -726f), vec3<f32>(1000f, -1198f, -1149f)), Struct_1(-426f, vec3<u32>(23100u, 0u, 0u), vec3<f32>(346f, 153f, 646f), vec3<f32>(-264f, -1095f, 1939f)), Struct_1(-328f, vec3<u32>(4294967295u, 1735u, 15441u), vec3<f32>(-624f, -1368f, 341f), vec3<f32>(-1177f, 656f, -783f)));

var<private> global4: array<Struct_1, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    let var_0 = select(select(select(vec3<bool>(select(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false, false), !global1[_wgslsmith_index_u32(u_input.b.x, 3u)], true), select(vec3<bool>(global1[_wgslsmith_index_u32(12464u, 3u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true, global1[_wgslsmith_index_u32(0u, 3u)]), false), true), !vec3<bool>(any(vec4<bool>(true, global0[_wgslsmith_index_u32(15973u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(80689u, 3u)])), all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 32u)])), global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x >> (u_input.b.x % 32u)), 32u)]), vec3<bool>(false, false, all(select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 3u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(2354u, 3u)], global1[_wgslsmith_index_u32(u_input.b.x, 3u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 3u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(8151u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], true, global1[_wgslsmith_index_u32(50439u, 3u)], true))))), select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true, true), select(vec3<bool>(true, false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 3u)], true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], false)), all(vec3<bool>(global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]))), !vec3<bool>(false, global1[_wgslsmith_index_u32(16231u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]), true), !vec3<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)])), global0[_wgslsmith_index_u32(~u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), select(select(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], false, false), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 3u)]), global0[_wgslsmith_index_u32(8265u, 32u)]), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true, true), true), select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false, global1[_wgslsmith_index_u32(68545u, 3u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false, global1[_wgslsmith_index_u32(46236u, 3u)]), !global1[_wgslsmith_index_u32(4294967295u, 3u)]), vec3<bool>(true, true, true))));
    global0 = array<bool, 32>();
    return _wgslsmith_f_op_f32(1048f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(819f))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> vec3<u32> {
    let var_0 = _wgslsmith_clamp_u32(~arg_1.b.x, firstTrailingBit(abs(_wgslsmith_sub_u32(arg_0.b.x, _wgslsmith_add_u32(1u, arg_0.b.x)))), 7296u);
    var var_1 = !(!(!select(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 32u)], true, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(67832u, 32u)], true), global1[_wgslsmith_index_u32(u_input.b.x, 3u)]), select(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(arg_1.b.x, 32u)]), vec3<bool>(global1[_wgslsmith_index_u32(arg_1.b.x, 3u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], false, true)), vec3<bool>(global1[_wgslsmith_index_u32(arg_0.b.x, 3u)], true, global1[_wgslsmith_index_u32(1u, 3u)]))));
    let var_2 = global3[_wgslsmith_index_u32(abs(~abs(~61331u)), 27u)];
    let var_3 = arg_0.a;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), vec3<u32>(u_input.b.x, ~u_input.b.x, ~(~_wgslsmith_add_u32(u_input.b.x, 5955u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-905f - arg_0.d.x), _wgslsmith_f_op_f32(select(-681f, -225f, var_1.x)), _wgslsmith_f_op_f32(-1307f * 524f))) + var_2.c), _wgslsmith_f_op_vec3_f32(-var_2.c));
    return min(vec3<u32>(var_4.b.x, firstTrailingBit(~countOneBits(63264u)), ~(4294967295u ^ arg_0.b.x)), abs(vec3<u32>(~5334u, arg_1.b.x, 0u)));
}

fn func_1() -> u32 {
    global0 = array<bool, 32>();
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32((func_2(Struct_1(821f, vec3<u32>(1u, 1u, u_input.b.x), vec3<f32>(372f, 728f, 823f), vec3<f32>(-1369f, 1266f, -2105f)), Struct_1(1235f, vec3<u32>(u_input.b.x, u_input.b.x, 12462u), vec3<f32>(282f, -750f, 930f), vec3<f32>(-2480f, -558f, 603f)), vec3<i32>(u_input.a, -8393i, -78687i)) & vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)) >> (~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), vec3<u32>(~min(42708u, u_input.b.x), ~1u, u_input.b.x)), ~vec3<u32>(~11219u, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b.x, 51752u), max(u_input.b.x, u_input.b.x)), _wgslsmith_mult_u32(~u_input.b.x, 42497u)));
    let var_1 = Struct_1(-243f, (vec3<u32>(var_0, _wgslsmith_sub_u32(u_input.b.x, 0u), ~1u) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(41640u, u_input.b.x, 19255u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), max(vec3<u32>(u_input.b.x, 117593u, 12343u), vec3<u32>(4294967295u, 4294967295u, 43979u))) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_u32(vec3<u32>(17056u, ~u_input.b.x, firstLeadingBit(5878u)), _wgslsmith_add_vec3_u32(~vec3<u32>(39160u, 41025u, u_input.b.x), ~vec3<u32>(var_0, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1066f, 794f, -1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-206f, -1155f, -503f)))))) + vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -601f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1226f - -1212f) * _wgslsmith_f_op_f32(ceil(1222f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-215f - 730f) * _wgslsmith_f_op_f32(ceil(-604f))))));
    var var_2 = false;
    var var_3 = abs(~vec4<i32>(1i, _wgslsmith_clamp_i32(u_input.a, firstLeadingBit(u_input.a), -u_input.a), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(9483i, u_input.a), vec2<i32>(-30105i, u_input.a))), u_input.a));
    return ~(~select(~4294967295u, u_input.b.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 10>();
    let var_0 = global3[_wgslsmith_index_u32(~1u, 27u)];
    let var_1 = ~u_input.b.x;
    var var_2 = ~1u;
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, func_1()), 10u)];
    let var_4 = var_0.c.x;
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a);
}

