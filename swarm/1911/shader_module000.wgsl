struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<f32>(-2216f, -1686f, -968f), -1326f, false, 1u, vec3<bool>(false, true, true)), Struct_1(vec3<f32>(2483f, -175f, 211f), 944f, true, 4282u, vec3<bool>(false, false, true)), Struct_1(vec3<f32>(216f, 833f, 848f), 724f, false, 78214u, vec3<bool>(true, false, false)), Struct_1(vec3<f32>(-519f, -690f, 230f), 127f, false, 76378u, vec3<bool>(true, false, false)), Struct_1(vec3<f32>(287f, 2031f, 371f), -2378f, true, 25738u, vec3<bool>(true, true, true)), Struct_1(vec3<f32>(1331f, 1997f, -533f), 231f, true, 0u, vec3<bool>(true, false, true)), Struct_1(vec3<f32>(1954f, -1115f, 1434f), -242f, true, 1u, vec3<bool>(false, true, true)), Struct_1(vec3<f32>(-1551f, -678f, -545f), 146f, false, 28821u, vec3<bool>(false, true, false)), Struct_1(vec3<f32>(-1181f, 1000f, -213f), -947f, false, 18114u, vec3<bool>(false, true, true)), Struct_1(vec3<f32>(509f, -170f, -192f), -453f, true, 0u, vec3<bool>(true, true, false)), Struct_1(vec3<f32>(811f, 150f, 1301f), 719f, true, 37892u, vec3<bool>(false, false, true)), Struct_1(vec3<f32>(-664f, -235f, 295f), -613f, false, 0u, vec3<bool>(true, false, false)), Struct_1(vec3<f32>(1502f, 1397f, -1889f), 335f, false, 1u, vec3<bool>(false, false, false)), Struct_1(vec3<f32>(487f, -710f, 309f), 222f, true, 1u, vec3<bool>(false, true, true)), Struct_1(vec3<f32>(-290f, 795f, 517f), -561f, false, 18775u, vec3<bool>(true, false, false)), Struct_1(vec3<f32>(308f, 372f, 1420f), -356f, true, 28863u, vec3<bool>(true, true, true)), Struct_1(vec3<f32>(-1311f, 555f, 843f), 1405f, false, 27870u, vec3<bool>(true, true, true)), Struct_1(vec3<f32>(1319f, -1329f, 289f), -1126f, true, 55805u, vec3<bool>(false, false, true)), Struct_1(vec3<f32>(-2179f, -1000f, -882f), 110f, true, 2062u, vec3<bool>(true, false, false)), Struct_1(vec3<f32>(633f, 1264f, 1613f), -1635f, true, 0u, vec3<bool>(false, false, false)), Struct_1(vec3<f32>(-1604f, -1000f, 355f), 1214f, true, 0u, vec3<bool>(true, false, true)), Struct_1(vec3<f32>(-470f, -518f, 1000f), 2350f, false, 12959u, vec3<bool>(true, false, true)), Struct_1(vec3<f32>(-2091f, 839f, 629f), 402f, true, 31748u, vec3<bool>(false, false, true)), Struct_1(vec3<f32>(121f, -1027f, -1623f), 1466f, false, 65676u, vec3<bool>(true, true, false)));

var<private> global1: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(Struct_1(vec3<f32>(-1379f, 492f, 1226f), -1929f, false, 45851u, vec3<bool>(false, true, false)), true, Struct_3(vec3<bool>(false, false, true), true, vec2<f32>(-587f, -625f)), Struct_3(vec3<bool>(false, true, false), true, vec2<f32>(-1000f, -1187f))), Struct_4(Struct_1(vec3<f32>(704f, -1611f, -2048f), -315f, false, 24154u, vec3<bool>(true, true, false)), true, Struct_3(vec3<bool>(false, false, false), true, vec2<f32>(-1840f, 505f)), Struct_3(vec3<bool>(false, false, true), true, vec2<f32>(1447f, 527f))), Struct_4(Struct_1(vec3<f32>(-115f, 141f, 279f), 518f, false, 57773u, vec3<bool>(true, true, true)), true, Struct_3(vec3<bool>(true, false, true), true, vec2<f32>(1023f, -1505f)), Struct_3(vec3<bool>(false, false, true), false, vec2<f32>(473f, -1000f))), Struct_4(Struct_1(vec3<f32>(-1246f, -188f, -1149f), -1136f, true, 64442u, vec3<bool>(true, false, true)), false, Struct_3(vec3<bool>(true, true, false), true, vec2<f32>(-488f, 639f)), Struct_3(vec3<bool>(false, true, false), true, vec2<f32>(106f, 1000f))), Struct_4(Struct_1(vec3<f32>(-427f, 948f, 267f), 1836f, false, 4294967295u, vec3<bool>(false, true, true)), true, Struct_3(vec3<bool>(false, false, true), false, vec2<f32>(831f, -567f)), Struct_3(vec3<bool>(false, true, false), false, vec2<f32>(-1207f, -1257f))), Struct_4(Struct_1(vec3<f32>(-1750f, 138f, -1440f), 1080f, true, 4294967295u, vec3<bool>(true, false, false)), true, Struct_3(vec3<bool>(false, true, false), true, vec2<f32>(1000f, -1000f)), Struct_3(vec3<bool>(false, true, false), true, vec2<f32>(224f, 259f))), Struct_4(Struct_1(vec3<f32>(-1056f, 1338f, 1000f), 1037f, false, 0u, vec3<bool>(true, false, true)), false, Struct_3(vec3<bool>(false, true, false), false, vec2<f32>(-1000f, -763f)), Struct_3(vec3<bool>(true, false, false), false, vec2<f32>(-416f, 430f))), Struct_4(Struct_1(vec3<f32>(406f, -2076f, 1000f), -757f, false, 0u, vec3<bool>(false, true, true)), true, Struct_3(vec3<bool>(false, false, false), false, vec2<f32>(-150f, -1294f)), Struct_3(vec3<bool>(true, false, false), true, vec2<f32>(825f, 1941f))), Struct_4(Struct_1(vec3<f32>(964f, 902f, -625f), 1441f, true, 4294967295u, vec3<bool>(false, false, true)), true, Struct_3(vec3<bool>(true, true, false), false, vec2<f32>(314f, -1309f)), Struct_3(vec3<bool>(false, false, true), false, vec2<f32>(1112f, 350f))), Struct_4(Struct_1(vec3<f32>(278f, 2868f, -296f), 1276f, false, 4294967295u, vec3<bool>(false, false, false)), true, Struct_3(vec3<bool>(false, false, false), true, vec2<f32>(-2399f, 196f)), Struct_3(vec3<bool>(true, true, true), true, vec2<f32>(-806f, -559f))), Struct_4(Struct_1(vec3<f32>(1000f, 1173f, -150f), -633f, true, 11485u, vec3<bool>(true, true, false)), true, Struct_3(vec3<bool>(false, false, true), false, vec2<f32>(-1999f, -799f)), Struct_3(vec3<bool>(false, true, false), false, vec2<f32>(961f, -1569f))), Struct_4(Struct_1(vec3<f32>(-565f, 611f, 1080f), 564f, false, 0u, vec3<bool>(false, true, true)), false, Struct_3(vec3<bool>(true, true, false), true, vec2<f32>(-1045f, -640f)), Struct_3(vec3<bool>(false, false, false), false, vec2<f32>(-868f, -427f))), Struct_4(Struct_1(vec3<f32>(-402f, -703f, 769f), 799f, false, 0u, vec3<bool>(false, true, true)), true, Struct_3(vec3<bool>(true, true, true), true, vec2<f32>(-853f, -194f)), Struct_3(vec3<bool>(false, false, false), false, vec2<f32>(-1000f, -2519f))), Struct_4(Struct_1(vec3<f32>(473f, -1038f, 524f), -826f, true, 59513u, vec3<bool>(false, true, false)), false, Struct_3(vec3<bool>(false, false, false), true, vec2<f32>(-117f, -869f)), Struct_3(vec3<bool>(true, true, false), false, vec2<f32>(-1533f, -265f))), Struct_4(Struct_1(vec3<f32>(-468f, 292f, -839f), 1670f, true, 13356u, vec3<bool>(false, false, false)), true, Struct_3(vec3<bool>(true, false, true), false, vec2<f32>(1000f, -343f)), Struct_3(vec3<bool>(true, true, true), true, vec2<f32>(1040f, 2045f))), Struct_4(Struct_1(vec3<f32>(1000f, 1002f, -1372f), 1000f, true, 0u, vec3<bool>(true, true, true)), false, Struct_3(vec3<bool>(false, false, true), true, vec2<f32>(-1000f, 206f)), Struct_3(vec3<bool>(true, true, true), true, vec2<f32>(-829f, 630f))), Struct_4(Struct_1(vec3<f32>(-1559f, 744f, 908f), -960f, true, 0u, vec3<bool>(true, false, false)), false, Struct_3(vec3<bool>(true, false, true), false, vec2<f32>(1000f, 713f)), Struct_3(vec3<bool>(true, true, false), true, vec2<f32>(-388f, 1542f))), Struct_4(Struct_1(vec3<f32>(-1166f, 2054f, 626f), -453f, false, 1u, vec3<bool>(true, false, false)), false, Struct_3(vec3<bool>(false, false, true), false, vec2<f32>(523f, 1165f)), Struct_3(vec3<bool>(false, false, false), true, vec2<f32>(1326f, 219f))), Struct_4(Struct_1(vec3<f32>(1121f, 1442f, -422f), 396f, false, 4294967295u, vec3<bool>(true, true, true)), false, Struct_3(vec3<bool>(false, true, false), true, vec2<f32>(1291f, -1562f)), Struct_3(vec3<bool>(false, true, false), false, vec2<f32>(546f, -1272f))), Struct_4(Struct_1(vec3<f32>(-1501f, -128f, 115f), 1234f, false, 53767u, vec3<bool>(false, false, true)), false, Struct_3(vec3<bool>(false, false, false), true, vec2<f32>(150f, 313f)), Struct_3(vec3<bool>(false, false, false), true, vec2<f32>(-274f, 2424f))), Struct_4(Struct_1(vec3<f32>(-197f, -362f, 1000f), 1246f, true, 4294967295u, vec3<bool>(false, true, true)), true, Struct_3(vec3<bool>(true, true, true), false, vec2<f32>(1038f, -2500f)), Struct_3(vec3<bool>(true, true, false), false, vec2<f32>(1108f, 1320f))), Struct_4(Struct_1(vec3<f32>(779f, -1216f, -426f), -1213f, true, 34959u, vec3<bool>(false, false, true)), false, Struct_3(vec3<bool>(false, false, true), true, vec2<f32>(1071f, -1320f)), Struct_3(vec3<bool>(false, false, true), false, vec2<f32>(667f, 462f))));

var<private> global2: array<vec4<u32>, 18>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = array<Struct_4, 22>();
    global1 = array<Struct_4, 22>();
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.d, _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(arg_0.d, 18u)], ~global2[_wgslsmith_index_u32(46755u, 18u)])), 1u), 22u)];
    var_0 = global1[_wgslsmith_index_u32(~0u, 22u)];
    global1 = array<Struct_4, 22>();
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec3<i32>) -> f32 {
    global1 = array<Struct_4, 22>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, 362f, -243f)))), arg_1.c.x, true, abs(1u), !(!arg_1.a));
    var var_1 = Struct_2(vec4<bool>(arg_1.a.x, func_3(global0[_wgslsmith_index_u32(var_0.d, 24u)]), all(var_0.e.xz), 1022f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1021f)))), var_0);
    var var_2 = global1[_wgslsmith_index_u32(var_0.d, 22u)];
    var var_3 = var_0.e.x;
    return _wgslsmith_f_op_f32(abs(2441f));
}

fn func_4(arg_0: bool, arg_1: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), 455f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -806f))))) - vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-923f, arg_1, true))), arg_1, all(vec4<bool>(false, true, arg_0, true)) != false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1499f * -831f) + arg_1), -459f, arg_1));
    var_0 = vec4<f32>(-1251f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1)) * _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(-var_0.x), var_0.x);
    global1 = array<Struct_4, 22>();
    global1 = array<Struct_4, 22>();
    global1 = array<Struct_4, 22>();
    return select(!(!select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(false, true, arg_0))), !select(!vec3<bool>(true, arg_0, false), vec3<bool>(true, arg_0, true), false), vec3<bool>(true, arg_0, all(select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0), true), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true)))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec3<f32>, arg_3: vec3<u32>) -> vec3<bool> {
    return select(func_4(2831f != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.a, u_input.a, 0i, 0i), Struct_3(vec3<bool>(false, true, arg_0), arg_0, vec2<f32>(arg_1, arg_1)), vec3<i32>(-36395i, -13393i, -2147483647i))))), _wgslsmith_f_op_f32(ceil(-708f))), vec3<bool>(true, true, !select(arg_0, true, any(vec3<bool>(arg_0, arg_0, true)))), !select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false), !vec3<bool>(arg_0, arg_0, false)), select(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, true, true), arg_0), select(vec3<bool>(true, false, false), vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, arg_0, true)), arg_0), select(!vec3<bool>(true, arg_0, true), !vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    let var_1 = !vec3<bool>(!(var_0.x || !var_0.x), (var_0.x | false) && (u_input.a >= ~6899i), true);
    let var_2 = Struct_3(!select(select(var_1, func_1(var_1.x, -481f, vec3<f32>(-698f, -365f, -1000f), vec3<u32>(77417u, 1u, 20355u)), true), !var_1, vec3<bool>(!var_1.x, true, var_0.x)), var_1.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-845f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-447f))))));
    var var_3 = ~reverseBits(-1i | _wgslsmith_div_i32(u_input.a | u_input.a, _wgslsmith_mod_i32(41279i, -1i)));
    let var_4 = !(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, var_2.a.x, true), select(vec4<bool>(false, false, var_2.a.x, false), vec4<bool>(var_2.a.x, true, var_1.x, false), var_0.x && true)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u));
}

