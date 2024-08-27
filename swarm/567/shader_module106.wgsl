struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(vec4<f32>(438f, 207f, -1204f, 670f), 1i, Struct_2(22163i, Struct_1(365f), 0u, -397f, Struct_1(1196f)), Struct_1(-738f), vec2<f32>(1939f, 685f)), Struct_3(vec4<f32>(-549f, 439f, 757f, 1632f), 0i, Struct_2(1i, Struct_1(-599f), 4294967295u, 1685f, Struct_1(-956f)), Struct_1(1083f), vec2<f32>(703f, 608f)), Struct_3(vec4<f32>(2190f, 1722f, -367f, -121f), 2147483647i, Struct_2(i32(-2147483648), Struct_1(660f), 33552u, 1782f, Struct_1(-1460f)), Struct_1(-509f), vec2<f32>(-878f, 1000f)));

var<private> global1: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(1195f, -1000f), vec2<f32>(556f, -1598f), vec2<f32>(-300f, 287f), vec2<f32>(1000f, -380f), vec2<f32>(-427f, -2094f), vec2<f32>(975f, -2095f), vec2<f32>(1000f, 304f), vec2<f32>(-1645f, -358f), vec2<f32>(-1687f, 1373f), vec2<f32>(1271f, 258f), vec2<f32>(-624f, -919f), vec2<f32>(569f, 1515f), vec2<f32>(-1236f, 1000f), vec2<f32>(804f, -639f), vec2<f32>(919f, 1158f), vec2<f32>(1849f, 777f), vec2<f32>(269f, 490f), vec2<f32>(140f, 1000f), vec2<f32>(-981f, -1474f), vec2<f32>(1766f, 1841f), vec2<f32>(1596f, -1566f), vec2<f32>(1000f, 510f), vec2<f32>(387f, 437f), vec2<f32>(-867f, -376f), vec2<f32>(1142f, 870f), vec2<f32>(-1000f, 379f));

var<private> global2: array<f32, 17> = array<f32, 17>(158f, 594f, -364f, 641f, -203f, 1501f, -326f, 1000f, -1495f, 1822f, -1249f, 954f, -916f, -1000f, -720f, 796f, 391f);

var<private> global3: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(2147483647i, 0i, 0i), vec3<i32>(122i, -1i, -1i), vec3<i32>(-62599i, 2147483647i, 2344i), vec3<i32>(1398i, 0i, 29413i), vec3<i32>(2147483647i, -11459i, 0i), vec3<i32>(2147483647i, -2015i, 20771i), vec3<i32>(-30548i, i32(-2147483648), -1i), vec3<i32>(24559i, 1i, -62523i), vec3<i32>(-19193i, 1i, 0i));

var<private> global4: array<bool, 6> = array<bool, 6>(true, true, false, false, true, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: vec4<f32>) -> vec4<bool> {
    global0 = array<Struct_3, 3>();
    global0 = array<Struct_3, 3>();
    var var_0 = global0[_wgslsmith_index_u32(arg_0, 3u)];
    global4 = array<bool, 6>();
    global3 = array<vec3<i32>, 9>();
    return vec4<bool>(true, !global4[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(min(vec2<u32>(arg_0, 4294967295u), vec2<u32>(0u, u_input.a)), firstLeadingBit(vec2<u32>(u_input.a, 4294967295u))), 61227u), 6u)], !(!global4[_wgslsmith_index_u32(19628u, 6u)] & false), !global4[_wgslsmith_index_u32(4294967295u, 6u)]);
}

fn func_2() -> Struct_3 {
    var var_0 = select(select(select(select(select(vec4<bool>(false, true, global4[_wgslsmith_index_u32(u_input.a, 6u)], true), vec4<bool>(false, false, true, global4[_wgslsmith_index_u32(16978u, 6u)]), vec4<bool>(global4[_wgslsmith_index_u32(66107u, 6u)], global4[_wgslsmith_index_u32(u_input.a, 6u)], global4[_wgslsmith_index_u32(u_input.a, 6u)], global4[_wgslsmith_index_u32(u_input.a, 6u)])), select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 6u)], true, false, false), vec4<bool>(true, true, false, global4[_wgslsmith_index_u32(4294967295u, 6u)]), global4[_wgslsmith_index_u32(32652u, 6u)]), !vec4<bool>(global4[_wgslsmith_index_u32(80886u, 6u)], global4[_wgslsmith_index_u32(1u, 6u)], true, global4[_wgslsmith_index_u32(u_input.a, 6u)])), vec4<bool>(!global4[_wgslsmith_index_u32(u_input.a, 6u)], global4[_wgslsmith_index_u32(4294967295u, 6u)], false, true), !(!vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.a, 6u)], global4[_wgslsmith_index_u32(u_input.a, 6u)], global4[_wgslsmith_index_u32(1u, 6u)]))), vec4<bool>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(16876u, 3136u), vec2<u32>(0u, 1u)) << ((4294967295u << (u_input.a % 32u)) % 32u), 6u)], global4[_wgslsmith_index_u32(u_input.a, 6u)], true, !(!global4[_wgslsmith_index_u32(u_input.a, 6u)])), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 28273u) ^ vec4<u32>(20887u, 1u, 15810u, u_input.a), max(vec4<u32>(15231u, 7966u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 40485u, u_input.a, u_input.a))) ^ u_input.a, 6u)]), !select(select(func_3(0u, 188f, 0i, vec4<f32>(-1122f, -1539f, global2[_wgslsmith_index_u32(62643u, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)])), select(vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.a, 6u)], true, true), vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 6u)], global4[_wgslsmith_index_u32(u_input.a, 6u)], false, global4[_wgslsmith_index_u32(u_input.a, 6u)]), false), true), select(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 6u)], global4[_wgslsmith_index_u32(u_input.a, 6u)], false, global4[_wgslsmith_index_u32(30365u, 6u)]), func_3(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 17u)], -22598i, vec4<f32>(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)], 446f, -1143f)), !vec4<bool>(false, false, global4[_wgslsmith_index_u32(35233u, 6u)], global4[_wgslsmith_index_u32(1u, 6u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 17u)] - 205f) != global2[_wgslsmith_index_u32(1794u, 17u)]), vec4<bool>(all(func_3(_wgslsmith_clamp_u32(29987u, u_input.a, 0u), -2135f, -2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1071f, -1162f, global2[_wgslsmith_index_u32(u_input.a, 17u)], -1603f) * vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 17u)], -659f, -404f, global2[_wgslsmith_index_u32(u_input.a, 17u)]))).yz), true, global4[_wgslsmith_index_u32(1u, 6u)] && false, all(vec3<bool>(any(vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 6u)], true, true)), select(global4[_wgslsmith_index_u32(u_input.a, 6u)], false, global4[_wgslsmith_index_u32(1u, 6u)]), false))));
    var var_1 = var_0.x;
    let var_2 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], 1897f, -131f, global2[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<f32>(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(70216u, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(33348u, 17u)])))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2[_wgslsmith_index_u32(0u, 17u)], 1330f, -1000f, 216f))), _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(33253u, 17u)], global2[_wgslsmith_index_u32(29693u, 17u)]), vec4<f32>(740f, global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)])), vec4<bool>(global4[_wgslsmith_index_u32(1121u, 6u)], global4[_wgslsmith_index_u32(u_input.a, 6u)], global4[_wgslsmith_index_u32(u_input.a, 6u)], var_0.x)))))), 1i, Struct_2(-(~(-2147483647i)), Struct_1(_wgslsmith_f_op_f32(966f * -1446f)), 4294967295u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 17u)] * 1000f)))), Struct_1(global2[_wgslsmith_index_u32(reverseBits(u_input.a << (u_input.a % 32u)), 17u)])), Struct_1(-908f), global1[_wgslsmith_index_u32(2098u, 26u)]);
    global2 = array<f32, 17>();
    let var_3 = ~select(_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, u_input.b) & vec2<i32>(u_input.b, 11445i)), vec2<i32>(_wgslsmith_div_i32(-1i, var_2.b), min(var_2.b, var_2.b))), reverseBits(abs(vec2<i32>(45740i, var_2.b))) | ~(~vec2<i32>(u_input.b, u_input.b)), vec2<bool>(all(vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 6u)], true, var_0.x)), func_3(_wgslsmith_mod_u32(1u, 3918u), _wgslsmith_f_op_f32(floor(var_2.d.a)), 18698i, _wgslsmith_f_op_vec4_f32(-var_2.a)).x));
    return var_2;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    return arg_2.c.e;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -291f, arg_2.a, arg_2.a))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-895f, global2[_wgslsmith_index_u32(arg_1.c, 17u)], -2131f, arg_1.e.a), vec4<f32>(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(arg_1.c, 17u)], 173f, -241f), vec4<bool>(true, false, global4[_wgslsmith_index_u32(arg_0.x, 6u)], true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(91649u, 17u)], arg_2.a, global2[_wgslsmith_index_u32(4294967295u, 17u)], arg_1.d) + vec4<f32>(346f, global2[_wgslsmith_index_u32(8837u, 17u)], 2330f, arg_1.b.a)))))), ~u_input.b, arg_1, Struct_1(arg_1.b.a), global1[_wgslsmith_index_u32(u_input.a, 26u)]);
    return global3[_wgslsmith_index_u32(arg_1.c, 9u)];
}

fn func_1() -> Struct_3 {
    var var_0 = (0u >= u_input.a) & ((~u_input.a ^ 86899u) == _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 8849u, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))));
    let var_1 = global3[_wgslsmith_index_u32(11659u, 9u)];
    var var_2 = _wgslsmith_mod_u32(0u, 4218u) == u_input.a;
    var_0 = global4[_wgslsmith_index_u32(~(~21322u), 6u)];
    var var_3 = _wgslsmith_clamp_vec3_i32(func_5(~max(vec3<u32>(u_input.a, 4294967295u, 18210u), vec3<u32>(16366u, u_input.a, u_input.a) & vec3<u32>(1u, u_input.a, 23503u)), Struct_2(var_1.x, func_4(_wgslsmith_sub_i32(u_input.b, u_input.b), Struct_2(u_input.b, Struct_1(global2[_wgslsmith_index_u32(30887u, 17u)]), u_input.a, -1500f, Struct_1(global2[_wgslsmith_index_u32(u_input.a, 17u)])), func_2(), u_input.b), u_input.a ^ ~0u, _wgslsmith_f_op_f32(floor(-887f)), func_4(u_input.b, func_2().c, Struct_3(vec4<f32>(-360f, global2[_wgslsmith_index_u32(u_input.a, 17u)], 595f, global2[_wgslsmith_index_u32(u_input.a, 17u)]), var_1.x, Struct_2(33231i, Struct_1(global2[_wgslsmith_index_u32(67436u, 17u)]), 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 17u)], Struct_1(-1036f)), Struct_1(global2[_wgslsmith_index_u32(13267u, 17u)]), vec2<f32>(-1115f, 719f)), -2147483647i)), func_4(u_input.b, Struct_2(-2147483647i, Struct_1(1000f), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 44723u)), _wgslsmith_f_op_f32(trunc(-1000f)), func_4(-3167i, Struct_2(-41742i, Struct_1(864f), 69985u, global2[_wgslsmith_index_u32(u_input.a, 17u)], Struct_1(662f)), global0[_wgslsmith_index_u32(u_input.a, 3u)], u_input.b)), Struct_3(vec4<f32>(410f, global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(62561u, 17u)]), firstTrailingBit(u_input.b), Struct_2(-22005i, Struct_1(global2[_wgslsmith_index_u32(u_input.a, 17u)]), u_input.a, global2[_wgslsmith_index_u32(u_input.a, 17u)], Struct_1(847f)), func_2().d, vec2<f32>(-144f, global2[_wgslsmith_index_u32(3820u, 17u)])), ~(2147483647i ^ var_1.x))), global3[_wgslsmith_index_u32(~firstTrailingBit(~4294967295u), 9u)], abs(_wgslsmith_mult_vec3_i32(-vec3<i32>(var_1.x, var_1.x, var_1.x) >> (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(firstTrailingBit(global3[_wgslsmith_index_u32(u_input.a, 9u)]), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(29360u, u_input.a), 9u)]))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<Struct_3, 3>();
    let var_1 = !global4[_wgslsmith_index_u32(~30121u, 6u)];
    let var_2 = func_2().d;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~firstLeadingBit(~abs(vec3<u32>(u_input.a, 0u, 48348u))), _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, var_0.c.a), vec2<i32>(15452i, 49435i)), _wgslsmith_div_i32(u_input.b, -1i)), (55112i >> (var_0.c.c % 32u)) & countOneBits(u_input.b)), 0i));
}

