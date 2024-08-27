struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5>;

var<private> global1: Struct_2;

var<private> global2: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(-1152f, 422f, -1000f, 895f), vec4<f32>(-1580f, 102f, -1277f, -545f), vec4<f32>(-886f, -754f, 295f, 1898f), vec4<f32>(494f, -273f, 596f, -1383f), vec4<f32>(1121f, -123f, -1796f, 1040f), vec4<f32>(-1147f, 931f, -681f, 855f), vec4<f32>(-520f, -961f, -1000f, -2333f), vec4<f32>(444f, 202f, 1459f, -1314f), vec4<f32>(1000f, 672f, -1605f, 706f), vec4<f32>(570f, -1121f, -869f, -1581f), vec4<f32>(616f, -927f, 607f, 569f), vec4<f32>(-636f, -1000f, -1128f, 686f), vec4<f32>(1212f, 439f, 401f, 1093f), vec4<f32>(1347f, 1162f, 1103f, -700f), vec4<f32>(593f, -2405f, -1371f, -1905f), vec4<f32>(332f, 1096f, -1023f, 1061f), vec4<f32>(403f, 2299f, -364f, -226f), vec4<f32>(796f, -647f, 1209f, -551f), vec4<f32>(1286f, 1958f, 1547f, -928f), vec4<f32>(1129f, -487f, 1000f, -702f), vec4<f32>(-2125f, 1503f, -1336f, -164f), vec4<f32>(1231f, 445f, 927f, -1281f), vec4<f32>(-482f, 404f, 353f, -1470f), vec4<f32>(746f, -1787f, -197f, 1209f), vec4<f32>(-386f, -480f, -916f, -913f), vec4<f32>(-813f, -834f, 1626f, 1000f), vec4<f32>(748f, 175f, -404f, -1527f), vec4<f32>(1446f, -1647f, 406f, 2347f), vec4<f32>(1400f, -1494f, 1074f, 1459f), vec4<f32>(1000f, -607f, -1579f, -1376f), vec4<f32>(-115f, -589f, -2505f, -106f), vec4<f32>(954f, -526f, -365f, 544f));

var<private> global3: Struct_3 = Struct_3(33370u, vec2<i32>(i32(-2147483648), 0i), 0i);

var<private> global4: array<u32, 7>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = global1.a;
    let var_1 = _wgslsmith_dot_vec3_i32(global1.b.ywx, vec3<i32>(u_input.e, countOneBits(global3.c), ~arg_0.x));
    global0 = array<vec4<bool>, 5>();
    global1 = Struct_2(global1.a, -min(vec4<i32>(reverseBits(-2147483647i), global1.b.x, 1919i << (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(19605u, 7u)], 7u)] % 32u), u_input.a), -global1.b), arg_2);
    let var_2 = arg_1;
    return 601u;
}

fn func_3(arg_0: u32, arg_1: f32) -> f32 {
    global0 = array<vec4<bool>, 5>();
    global1 = Struct_2(Struct_1(false), global1.b ^ abs(min(global1.b, global1.b)), _wgslsmith_div_f32(global1.c, global1.c));
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(-1027f, -1682f), arg_1)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -1014f)))), global1.a.a));
    var var_1 = firstLeadingBit(~(max(1u, 2704u ^ global4[_wgslsmith_index_u32(38473u, 7u)]) << (u_input.c % 32u)));
    global2 = array<vec4<f32>, 32>();
    return _wgslsmith_f_op_f32(floor(-1027f));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: bool) -> Struct_2 {
    var var_0 = -global1.b;
    global4 = array<u32, 7>();
    var var_1 = select(!vec3<bool>(arg_2, true, all(vec4<bool>(false, global1.a.a, global1.a.a, arg_2))), vec3<bool>(true, global3.b.x > _wgslsmith_dot_vec3_i32(abs(var_0.zyy), global1.b.zyz), all(select(vec2<bool>(arg_2, true), !vec2<bool>(true, global1.a.a), global1.a.a))), global1.a.a);
    let var_2 = select(_wgslsmith_mod_u32(min(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(global4[_wgslsmith_index_u32(u_input.b.x, 7u)], 1u)), func_2(vec2<i32>(u_input.d, var_0.x), 0u, global1.c, 1584f)), global4[_wgslsmith_index_u32(4294967295u, 7u)]), global4[_wgslsmith_index_u32(1u, 7u)]), 4922u, global1.a.a);
    global3 = Struct_3(1u, vec2<i32>(-3277i, ~(-4632i >> (~var_2 % 32u))), ~1i);
    return Struct_2(Struct_1(~(~4294967295u) == var_2), firstLeadingBit(-global1.b), _wgslsmith_f_op_f32(func_3(var_2, global1.c)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> u32 {
    global3 = Struct_3(arg_0.a, global1.b.yw, -(0i | (abs(u_input.e) ^ 1i)));
    let var_0 = ~arg_0.a;
    let var_1 = ~global3.b.x;
    var var_2 = vec3<bool>(global1.a.a, all(select(!vec3<bool>(arg_1.a.a, true, true), select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(true, arg_2, global1.a.a), vec3<bool>(global1.a.a, false, arg_1.a.a)), arg_2)) && all(vec4<bool>(false, false, arg_2 | true, all(vec4<bool>(false, arg_1.a.a, arg_1.a.a, arg_2)))), arg_2);
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(332f, -339f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c * arg_1.c), _wgslsmith_f_op_f32(func_3(12193u, 1086f))), 518f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 885f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.c, 1949f), vec2<f32>(global1.c, arg_1.c), var_2.zz)), vec2<f32>(arg_1.c, -987f), var_2.x)), false))), global1.a.a));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global3.a, 7u)], 4294967295u, global3.a), vec3<u32>(92193u, global3.a, 0u)), ~vec3<u32>(u_input.c, global3.a, 91238u)), ~abs(vec3<u32>(16680u, 9686u, global4[_wgslsmith_index_u32(global3.a, 7u)]))) | reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(58991u, 15322u, global3.a) | vec3<u32>(global3.a, global3.a, 12307u), vec3<u32>(37428u, arg_0.a, 0u), min(vec3<u32>(29300u, 1u, 4294967295u), vec3<u32>(global3.a, 67949u, 1u)))), ~countOneBits(vec3<u32>(78585u, reverseBits(var_0), _wgslsmith_add_u32(global4[_wgslsmith_index_u32(u_input.b.x, 7u)], 55361u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = vec3<u32>(1u, u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(func_4(Struct_3(global4[_wgslsmith_index_u32(0u, 7u)], vec2<i32>(global3.b.x, global1.b.x), u_input.e), func_1(global1.b.yx, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(10931u, 7u)], 7u)], 7u)], global1.a.a), true), _wgslsmith_dot_vec3_u32(vec3<u32>(65796u, 37899u, global4[_wgslsmith_index_u32(12513u, 7u)]) << (vec3<u32>(u_input.b.x, 86817u, 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(48095u, 0u, 68038u)), abs(~global3.a), 29266u), vec4<u32>(1u, ~select(4294967295u, 41746u, global1.a.a), reverseBits(~0u), ~u_input.b.x ^ u_input.b.x)));
    var var_2 = !vec3<bool>(!all(!vec2<bool>(global1.a.a, global1.a.a)), false, !global1.a.a);
    let var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(~(~20591u), 45160u) << (_wgslsmith_sub_vec2_u32(abs(u_input.b), firstTrailingBit(min(vec2<u32>(global3.a, var_1.x), u_input.b))) % vec2<u32>(32u)), max(vec2<u32>(max(55663u, firstTrailingBit(0u)), ~firstTrailingBit(0u)), ~_wgslsmith_div_vec2_u32(select(u_input.b, vec2<u32>(global3.a, var_1.x), var_2.xy), vec2<u32>(var_1.x, global3.a))));
    var var_4 = Struct_3(_wgslsmith_mult_u32(1u, var_1.x), global1.b.xw, -global3.b.x);
    let var_5 = vec3<f32>(-999f, -1117f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-135f, -670f))))));
    let var_6 = vec3<i32>(u_input.d, global1.b.x, max(firstLeadingBit(global1.b.x), func_1(var_4.b, ~global4[_wgslsmith_index_u32(0u, 7u)], !all(vec3<bool>(false, false, global1.a.a))).b.x));
    let var_7 = func_1(~global3.b, 59218u, !(!all(vec2<bool>(false, false))) && any(select(select(vec3<bool>(global1.a.a, false, true), vec3<bool>(var_2.x, global1.a.a, var_2.x), false), vec3<bool>(true, true, true), select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(var_2.x, false, true), vec3<bool>(true, var_2.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(max(~var_4.b.x, ~var_7.b.x), -2147483647i), select(~(~vec4<u32>(var_1.x, var_1.x, var_4.a, var_4.a)), vec4<u32>(0u, 37472u, 21534u, u_input.c) << (_wgslsmith_div_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(var_1.x, 7u)], 17912u, var_1.x, 0u), vec4<u32>(var_3.x, 35844u, 60307u, 1u)) % vec4<u32>(32u)), any(!global0[_wgslsmith_index_u32(var_4.a, 5u)])) >> (~vec4<u32>(127340u, _wgslsmith_div_u32(var_3.x, 53454u), firstTrailingBit(660u), ~var_1.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(abs(global2[_wgslsmith_index_u32(var_4.a, 32u)])));
}

