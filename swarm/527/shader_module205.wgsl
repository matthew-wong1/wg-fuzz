struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<i32, 22>;

var<private> global2: Struct_1;

var<private> global3: array<bool, 28>;

var<private> global4: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec4<f32>(-955f, -954f, -748f, 2551f)), vec4<f32>(985f, -2014f, -189f, -1000f), -5244i, vec4<u32>(4294967295u, 0u, 47193u, 1u), 519f), Struct_2(Struct_1(vec4<f32>(-625f, 335f, -1155f, 838f)), vec4<f32>(1062f, -226f, -642f, 1147f), -1i, vec4<u32>(4787u, 1u, 1u, 1u), -1318f), Struct_2(Struct_1(vec4<f32>(553f, -520f, -1006f, 500f)), vec4<f32>(864f, -1693f, -1543f, -1541f), 36490i, vec4<u32>(4294967295u, 1u, 0u, 1u), -2432f), Struct_2(Struct_1(vec4<f32>(-1000f, 395f, 1000f, -1030f)), vec4<f32>(1202f, -1177f, 318f, 1078f), 1i, vec4<u32>(39804u, 43103u, 4294967295u, 48861u), 1000f), Struct_2(Struct_1(vec4<f32>(399f, -552f, 1099f, -377f)), vec4<f32>(-542f, 1378f, 987f, -512f), i32(-2147483648), vec4<u32>(3559u, 1u, 9432u, 82307u), -645f), Struct_2(Struct_1(vec4<f32>(1000f, -1308f, 522f, -673f)), vec4<f32>(294f, 401f, 318f, -734f), 2831i, vec4<u32>(1u, 4294967295u, 1u, 1u), 690f), Struct_2(Struct_1(vec4<f32>(-291f, -1833f, -414f, 1000f)), vec4<f32>(-494f, 2886f, -1000f, 743f), i32(-2147483648), vec4<u32>(59678u, 1u, 4294967295u, 6954u), 2049f), Struct_2(Struct_1(vec4<f32>(1253f, -131f, 342f, 1754f)), vec4<f32>(622f, 1372f, 310f, 225f), -1i, vec4<u32>(71282u, 4294967295u, 113106u, 44163u), 1388f), Struct_2(Struct_1(vec4<f32>(-269f, -188f, 1000f, 111f)), vec4<f32>(1058f, -783f, 1142f, -747f), -1i, vec4<u32>(1670u, 1u, 1u, 1u), 1909f), Struct_2(Struct_1(vec4<f32>(-408f, -1191f, 437f, 590f)), vec4<f32>(-218f, -1189f, -1665f, -222f), 0i, vec4<u32>(8109u, 10769u, 55980u, 1u), 1000f), Struct_2(Struct_1(vec4<f32>(1132f, 1181f, -961f, -577f)), vec4<f32>(-1190f, -1642f, 1943f, 1170f), 2147483647i, vec4<u32>(1u, 88673u, 4294967295u, 48394u), 1300f), Struct_2(Struct_1(vec4<f32>(1000f, 161f, -682f, -853f)), vec4<f32>(-391f, -962f, -1000f, 1404f), -1i, vec4<u32>(0u, 35191u, 1u, 15522u), 1043f), Struct_2(Struct_1(vec4<f32>(-936f, -764f, 1000f, 126f)), vec4<f32>(-1369f, 801f, -596f, -1315f), 53555i, vec4<u32>(1u, 83684u, 0u, 4179u), 314f), Struct_2(Struct_1(vec4<f32>(-331f, 1340f, 803f, 1212f)), vec4<f32>(469f, -1538f, 1715f, 506f), 21260i, vec4<u32>(4294967295u, 33624u, 9179u, 86u), 287f), Struct_2(Struct_1(vec4<f32>(-1920f, 1130f, -1400f, -1089f)), vec4<f32>(1438f, 1870f, 733f, -1021f), 44244i, vec4<u32>(1u, 1u, 0u, 4294967295u), -1605f), Struct_2(Struct_1(vec4<f32>(-1605f, 670f, -643f, -563f)), vec4<f32>(-1000f, -355f, -666f, 1241f), -3788i, vec4<u32>(4294967295u, 4026u, 4294967295u, 83179u), -377f), Struct_2(Struct_1(vec4<f32>(-1281f, 506f, -712f, 134f)), vec4<f32>(1630f, 1128f, -1692f, 532f), -1i, vec4<u32>(0u, 10668u, 48171u, 1u), 1281f), Struct_2(Struct_1(vec4<f32>(3070f, -241f, -1103f, 1261f)), vec4<f32>(-1503f, -191f, -524f, 747f), 2147483647i, vec4<u32>(4551u, 27991u, 4294967295u, 1u), -1550f), Struct_2(Struct_1(vec4<f32>(-1913f, -1075f, 1657f, 632f)), vec4<f32>(1604f, 1101f, -1254f, -804f), 1i, vec4<u32>(46093u, 1u, 39420u, 1u), -1204f), Struct_2(Struct_1(vec4<f32>(471f, 902f, -2041f, 462f)), vec4<f32>(-372f, 1000f, 1000f, 1000f), -26926i, vec4<u32>(4294967295u, 11237u, 1u, 43555u), -1281f), Struct_2(Struct_1(vec4<f32>(363f, -1000f, -1443f, -1864f)), vec4<f32>(-457f, 1009f, -2037f, 873f), -1i, vec4<u32>(40024u, 35628u, 42461u, 0u), -623f), Struct_2(Struct_1(vec4<f32>(-785f, -1139f, -1043f, 145f)), vec4<f32>(922f, 1345f, -2666f, -817f), 2147483647i, vec4<u32>(23602u, 83120u, 52281u, 1u), -388f), Struct_2(Struct_1(vec4<f32>(-790f, 1445f, -1000f, 1263f)), vec4<f32>(-1000f, -2266f, 1064f, -1142f), -7951i, vec4<u32>(0u, 4294967295u, 57733u, 1u), -1399f), Struct_2(Struct_1(vec4<f32>(-1611f, 571f, 1344f, 561f)), vec4<f32>(-191f, -692f, 162f, 753f), 0i, vec4<u32>(92674u, 7214u, 36028u, 1u), -419f), Struct_2(Struct_1(vec4<f32>(785f, 235f, 760f, 510f)), vec4<f32>(205f, -128f, 546f, 352f), 0i, vec4<u32>(62257u, 54091u, 9195u, 1u), 546f), Struct_2(Struct_1(vec4<f32>(1669f, -2157f, 580f, 1554f)), vec4<f32>(1249f, 166f, 2630f, -2153f), 6190i, vec4<u32>(13720u, 4522u, 17130u, 1u), 989f), Struct_2(Struct_1(vec4<f32>(246f, 741f, 1593f, 469f)), vec4<f32>(-1087f, 1779f, 900f, 1078f), 2147483647i, vec4<u32>(47723u, 58315u, 66806u, 81089u), 1409f), Struct_2(Struct_1(vec4<f32>(1000f, 2201f, 186f, 1187f)), vec4<f32>(771f, 1546f, 557f, -529f), 2147483647i, vec4<u32>(0u, 4294967295u, 4899u, 23070u), -473f), Struct_2(Struct_1(vec4<f32>(-239f, -1000f, -844f, 968f)), vec4<f32>(-566f, 926f, 1356f, 1000f), 2147483647i, vec4<u32>(4294967295u, 0u, 5148u, 1u), 1207f), Struct_2(Struct_1(vec4<f32>(360f, 1166f, -1037f, -772f)), vec4<f32>(510f, 1497f, 1000f, 574f), 1i, vec4<u32>(0u, 24274u, 32056u, 48152u), 1236f), Struct_2(Struct_1(vec4<f32>(284f, -993f, -619f, 772f)), vec4<f32>(-1247f, 1000f, -253f, -1011f), 7637i, vec4<u32>(12970u, 32795u, 4294967295u, 34797u), 1775f), Struct_2(Struct_1(vec4<f32>(-1036f, 1000f, 2361f, 1148f)), vec4<f32>(426f, 569f, 867f, -2159f), 0i, vec4<u32>(19923u, 4294967295u, 86886u, 32896u), -170f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    let var_0 = global4[_wgslsmith_index_u32(u_input.e, 32u)];
    return _wgslsmith_f_op_f32(ceil(var_0.e));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(global2.a.x, _wgslsmith_f_op_f32(func_3()))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2204f * -1257f), _wgslsmith_f_op_f32(round(global2.a.x))), global2.a.x), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(trunc(global2.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -540f)));
    var var_1 = u_input.c;
    var var_2 = any(select(vec2<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(global3[_wgslsmith_index_u32(46462u, 28u)], false), vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.e, 28u)])))), select(select(!vec2<bool>(global3[_wgslsmith_index_u32(0u, 28u)], global3[_wgslsmith_index_u32(0u, 28u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 28u)], true), vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.e, 28u)]), global3[_wgslsmith_index_u32(4294967295u, 28u)]), vec2<bool>(global3[_wgslsmith_index_u32(1u, 28u)], false)), vec2<bool>(true, all(vec4<bool>(false, global3[_wgslsmith_index_u32(17393u, 28u)], global3[_wgslsmith_index_u32(u_input.e, 28u)], false))), true), vec2<bool>(true, _wgslsmith_add_i32(2147483647i, arg_0.x) >= ~2147483647i)));
    var var_3 = Struct_1(vec4<f32>(var_0.a.x, -1569f, 1889f, global2.a.x));
    let var_4 = global4[_wgslsmith_index_u32(67568u, 32u)];
    return var_4.a;
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e, ~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.x, u_input.a), vec3<u32>(arg_0.x, arg_0.x, 16357u)), 1u))), 22u)];
    var var_1 = 11361i;
    global4 = array<Struct_2, 32>();
    let var_2 = firstLeadingBit(0u);
    var var_3 = func_2(~u_input.d.zxw);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-445f * func_2(-vec3<i32>(u_input.b, u_input.b, 1i)).a.x), _wgslsmith_f_op_f32(-var_3.a.x), !any(select(select(vec2<bool>(true, false), vec2<bool>(global3[_wgslsmith_index_u32(30848u, 28u)], global3[_wgslsmith_index_u32(var_2, 28u)]), true), vec2<bool>(global3[_wgslsmith_index_u32(arg_0.x, 28u)], global3[_wgslsmith_index_u32(arg_0.x, 28u)]), !vec2<bool>(global3[_wgslsmith_index_u32(10622u, 28u)], false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(vec4<u32>(~u_input.a, ~0u, u_input.e & 6490u, u_input.a))), 1288f)));
    global4 = array<Struct_2, 32>();
    var var_1 = 8497u;
    var var_2 = u_input.d.wy | ~u_input.d.xz;
    var_1 = 748u;
    let var_3 = !(!vec2<bool>(true, any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.e, 28u)], false, true))));
    let var_4 = reverseBits(abs(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(u_input.a, u_input.e)), abs(vec2<u32>(75553u, u_input.a)))) ^ (vec2<u32>(u_input.a, u_input.e) ^ _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, u_input.e), ~vec2<u32>(u_input.a, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, global2.a.x, 405f))))));
}

