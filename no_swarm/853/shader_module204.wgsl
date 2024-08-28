struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: f32;

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec3<f32>(541f, -1000f, 860f), 533f), Struct_2(vec3<f32>(1244f, -1404f, -833f), -884f), Struct_2(vec3<f32>(929f, -377f, 327f), 1425f), Struct_2(vec3<f32>(-718f, 758f, 1000f), -761f), Struct_2(vec3<f32>(771f, -311f, -1336f), -741f), Struct_2(vec3<f32>(1002f, -1000f, -656f), -1635f), Struct_2(vec3<f32>(523f, -305f, 717f), 194f), Struct_2(vec3<f32>(112f, 128f, 1730f), 1558f), Struct_2(vec3<f32>(1095f, -844f, -650f), -539f), Struct_2(vec3<f32>(-1269f, 1297f, 156f), -1114f), Struct_2(vec3<f32>(-504f, -481f, 131f), -1148f), Struct_2(vec3<f32>(-1169f, 870f, 1321f), -1264f), Struct_2(vec3<f32>(-727f, -115f, -645f), 994f), Struct_2(vec3<f32>(454f, 236f, 1113f), -1768f), Struct_2(vec3<f32>(-818f, 1567f, -662f), 1632f), Struct_2(vec3<f32>(-1800f, 673f, 1348f), -522f), Struct_2(vec3<f32>(2817f, -382f, 456f), -2075f), Struct_2(vec3<f32>(1168f, 753f, -1057f), 406f), Struct_2(vec3<f32>(1469f, -1496f, -865f), 1641f), Struct_2(vec3<f32>(1000f, -501f, 591f), -491f), Struct_2(vec3<f32>(-1169f, -864f, -1318f), 102f), Struct_2(vec3<f32>(-272f, 2026f, -1679f), -1363f), Struct_2(vec3<f32>(1455f, -1944f, 736f), -1405f), Struct_2(vec3<f32>(356f, -886f, 900f), 527f), Struct_2(vec3<f32>(-605f, -227f, 709f), 595f), Struct_2(vec3<f32>(1788f, 1253f, -1189f), -1196f));

var<private> global3: f32;

var<private> global4: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec3<f32>(-1702f, -671f, 1079f), 690f), Struct_2(vec3<f32>(-969f, -1597f, 190f), 1759f), Struct_2(vec3<f32>(-1669f, 351f, 929f), -467f), Struct_2(vec3<f32>(1231f, 2015f, 1229f), 1000f), Struct_2(vec3<f32>(1545f, -378f, 111f), -1419f), Struct_2(vec3<f32>(454f, -605f, 1478f), 332f), Struct_2(vec3<f32>(-1767f, 925f, -1662f), 823f), Struct_2(vec3<f32>(-1000f, 1003f, -181f), -189f), Struct_2(vec3<f32>(-491f, 244f, -1624f), 970f), Struct_2(vec3<f32>(-191f, 1000f, -410f), -1000f), Struct_2(vec3<f32>(1289f, -286f, -1807f), -1000f), Struct_2(vec3<f32>(1697f, -1895f, 897f), 598f), Struct_2(vec3<f32>(-1500f, 1039f, 1079f), 683f), Struct_2(vec3<f32>(1047f, 752f, -1170f), -630f), Struct_2(vec3<f32>(-1803f, -1360f, -910f), -863f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = global4[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 15u)];
    let var_1 = ~(~(~(~vec4<u32>(49264u, u_input.b, u_input.c.x, u_input.c.x))));
    var var_2 = u_input.b;
    global4 = array<Struct_2, 15>();
    return global2[_wgslsmith_index_u32(1u, 26u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> vec3<u32> {
    let var_0 = arg_0;
    var var_1 = 1u;
    global3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(785f * _wgslsmith_f_op_f32(-arg_0.a.x))))));
    var var_2 = all(!(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true))));
    var_2 = 30193u < ~arg_1.x;
    return ~reverseBits(arg_1);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32, arg_3: bool) -> f32 {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, -1000f)) * -764f)));
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~arg_1.x) >> (countOneBits(~arg_1.x) % 32u), 4294967295u) >> (1u % 32u), 15u)];
    var var_1 = global0[_wgslsmith_index_u32(~(~(u_input.b >> (96694u % 32u))), 4u)];
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.a))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(-1000f, 366f, arg_0.a.x)))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a), vec3<f32>(arg_0.a.x, var_0.a.x, var_0.b)), _wgslsmith_f_op_vec3_f32(ceil(var_0.a)), select(vec3<bool>(false, arg_3, arg_3), select(vec3<bool>(false, arg_3, false), vec3<bool>(arg_3, true, arg_3), vec3<bool>(true, arg_3, arg_3)), select(vec3<bool>(false, arg_3, arg_3), vec3<bool>(true, false, false), false))))), -1608f);
    global1 = arg_0.b;
    return _wgslsmith_div_f32(var_2.b, 2095f);
}

fn func_1() -> vec4<f32> {
    global1 = _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + -1249f), _wgslsmith_f_op_f32(f32(-1f) * -206f)), global0[_wgslsmith_index_u32(~(1u ^ u_input.c.x), 4u)]), ~_wgslsmith_add_vec3_u32(firstLeadingBit(func_3(global0[_wgslsmith_index_u32(u_input.b, 4u)], vec3<u32>(0u, 14979u, u_input.b))), ~(~vec3<u32>(u_input.b, u_input.c.x, u_input.c.x))), -_wgslsmith_mult_i32(~reverseBits(40018i), u_input.a), false));
    global2 = array<Struct_2, 26>();
    global3 = _wgslsmith_f_op_f32(-402f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2284f + _wgslsmith_f_op_f32(118f * -106f)))))));
    let var_0 = all(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-348f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(391f, 427f))) - -680f));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-865f, -562f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], vec3<u32>(u_input.c.x, 1u, 1u), u_input.a, var_0))), 567f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-3108f, _wgslsmith_f_op_vec4_f32(func_1()).x, var_0.x)), var_0.x);
    let var_2 = any(select(vec2<bool>(true, true), vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), ~u_input.c.x >= func_3(Struct_1(vec2<f32>(var_0.x, var_0.x)), vec3<u32>(u_input.b, u_input.b, u_input.b)).x), select(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(true, true)), true), -643f <= var_1.a.x)));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, u_input.b), 4u)];
    global2 = array<Struct_2, 26>();
    var var_4 = var_2;
    let var_5 = ~_wgslsmith_add_u32(max(1u, 1u), _wgslsmith_mod_u32(0u, u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(~((vec3<u32>(4294967295u, var_5, 40547u) & vec3<u32>(36160u, 17679u, 36702u)) >> (countOneBits(vec3<u32>(u_input.b, 9423u, 0u)) % vec3<u32>(32u))), min(~countOneBits(vec3<u32>(12621u, 1u, u_input.b)), countOneBits(vec3<u32>(1u, u_input.c.x, u_input.b))), !vec3<bool>(2147483647i >= u_input.a, var_2, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1000f, 1514f, 518f) + vec4<f32>(var_1.b, 538f, -476f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.b, var_1.a.x, -1552f) + vec4<f32>(657f, -308f, var_3.a.x, var_3.a.x))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, -1543f, 2456f, 1000f) + vec4<f32>(var_3.a.x, -1000f, var_1.a.x, var_1.a.x)))))), u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) - vec4<f32>(_wgslsmith_f_op_f32(sign(-1213f)), 1120f, _wgslsmith_f_op_vec4_f32(func_1()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)))));
}

