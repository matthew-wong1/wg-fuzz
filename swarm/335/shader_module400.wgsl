struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, false);

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(Struct_2(Struct_1(vec2<f32>(738f, 337f), -1765f), 1212f, Struct_1(vec2<f32>(495f, 105f), -869f), vec2<bool>(false, false), Struct_1(vec2<f32>(-1223f, 299f), -1022f)), true), Struct_3(Struct_2(Struct_1(vec2<f32>(-444f, 359f), 1000f), 1777f, Struct_1(vec2<f32>(351f, 393f), -264f), vec2<bool>(true, false), Struct_1(vec2<f32>(-1459f, -823f), -1000f)), true), Struct_3(Struct_2(Struct_1(vec2<f32>(-305f, -423f), -202f), 1082f, Struct_1(vec2<f32>(466f, 423f), 580f), vec2<bool>(false, true), Struct_1(vec2<f32>(-191f, 1000f), -1856f)), false), Struct_3(Struct_2(Struct_1(vec2<f32>(466f, 1000f), 1109f), -719f, Struct_1(vec2<f32>(-1452f, -715f), 1667f), vec2<bool>(false, true), Struct_1(vec2<f32>(1209f, -288f), 752f)), false), Struct_3(Struct_2(Struct_1(vec2<f32>(-1464f, -364f), -455f), 221f, Struct_1(vec2<f32>(-1000f, 1219f), -2707f), vec2<bool>(true, true), Struct_1(vec2<f32>(291f, 1000f), 152f)), false), Struct_3(Struct_2(Struct_1(vec2<f32>(-251f, -889f), 184f), 633f, Struct_1(vec2<f32>(-377f, 2244f), 1628f), vec2<bool>(false, false), Struct_1(vec2<f32>(-656f, -846f), 751f)), true), Struct_3(Struct_2(Struct_1(vec2<f32>(979f, 638f), -334f), 1266f, Struct_1(vec2<f32>(1704f, -714f), -291f), vec2<bool>(true, true), Struct_1(vec2<f32>(159f, -1582f), -177f)), false), Struct_3(Struct_2(Struct_1(vec2<f32>(-747f, -762f), -1154f), -1872f, Struct_1(vec2<f32>(-143f, 1374f), 123f), vec2<bool>(true, true), Struct_1(vec2<f32>(720f, 203f), -330f)), true), Struct_3(Struct_2(Struct_1(vec2<f32>(-726f, 1648f), 792f), 294f, Struct_1(vec2<f32>(879f, -1000f), -1505f), vec2<bool>(false, false), Struct_1(vec2<f32>(316f, 1064f), 1113f)), false), Struct_3(Struct_2(Struct_1(vec2<f32>(-380f, -102f), -1000f), 302f, Struct_1(vec2<f32>(742f, 2046f), -441f), vec2<bool>(false, false), Struct_1(vec2<f32>(-518f, -1000f), -560f)), false), Struct_3(Struct_2(Struct_1(vec2<f32>(2200f, 1000f), 651f), -876f, Struct_1(vec2<f32>(-1682f, 135f), -727f), vec2<bool>(false, false), Struct_1(vec2<f32>(1099f, -292f), 182f)), false), Struct_3(Struct_2(Struct_1(vec2<f32>(-715f, -1754f), 1263f), 243f, Struct_1(vec2<f32>(-563f, 335f), 102f), vec2<bool>(true, false), Struct_1(vec2<f32>(746f, -468f), 857f)), false), Struct_3(Struct_2(Struct_1(vec2<f32>(285f, 793f), 763f), 584f, Struct_1(vec2<f32>(383f, 586f), -1539f), vec2<bool>(true, false), Struct_1(vec2<f32>(1136f, -1512f), -498f)), true), Struct_3(Struct_2(Struct_1(vec2<f32>(-379f, 1037f), -497f), -689f, Struct_1(vec2<f32>(-1083f, -721f), -1046f), vec2<bool>(true, true), Struct_1(vec2<f32>(-474f, 1000f), -1113f)), true), Struct_3(Struct_2(Struct_1(vec2<f32>(706f, -1005f), 1023f), -401f, Struct_1(vec2<f32>(1364f, 866f), -143f), vec2<bool>(true, false), Struct_1(vec2<f32>(-550f, -457f), -1000f)), false), Struct_3(Struct_2(Struct_1(vec2<f32>(-1573f, 187f), -1215f), -890f, Struct_1(vec2<f32>(365f, 2138f), 1432f), vec2<bool>(true, true), Struct_1(vec2<f32>(136f, 806f), -991f)), true), Struct_3(Struct_2(Struct_1(vec2<f32>(1388f, 805f), 1120f), 428f, Struct_1(vec2<f32>(-488f, 876f), 458f), vec2<bool>(false, false), Struct_1(vec2<f32>(2148f, -344f), 775f)), false), Struct_3(Struct_2(Struct_1(vec2<f32>(-544f, 1320f), 1046f), -428f, Struct_1(vec2<f32>(421f, -625f), 471f), vec2<bool>(true, true), Struct_1(vec2<f32>(-1534f, -567f), -315f)), true), Struct_3(Struct_2(Struct_1(vec2<f32>(899f, -725f), 169f), 542f, Struct_1(vec2<f32>(-1000f, 246f), 431f), vec2<bool>(false, false), Struct_1(vec2<f32>(267f, -1292f), -1047f)), false), Struct_3(Struct_2(Struct_1(vec2<f32>(-659f, -487f), -577f), 1000f, Struct_1(vec2<f32>(1263f, -558f), 1000f), vec2<bool>(false, false), Struct_1(vec2<f32>(-1571f, -1290f), 1147f)), true), Struct_3(Struct_2(Struct_1(vec2<f32>(1164f, -1106f), -1029f), -551f, Struct_1(vec2<f32>(1276f, -1000f), 856f), vec2<bool>(false, true), Struct_1(vec2<f32>(1000f, -1000f), 421f)), true), Struct_3(Struct_2(Struct_1(vec2<f32>(-316f, 1425f), -1014f), -224f, Struct_1(vec2<f32>(-469f, 513f), 135f), vec2<bool>(true, true), Struct_1(vec2<f32>(1221f, 1000f), -976f)), true), Struct_3(Struct_2(Struct_1(vec2<f32>(403f, 470f), -213f), 1503f, Struct_1(vec2<f32>(2185f, -1580f), -888f), vec2<bool>(false, true), Struct_1(vec2<f32>(666f, -1196f), -836f)), false), Struct_3(Struct_2(Struct_1(vec2<f32>(-148f, 738f), -879f), 986f, Struct_1(vec2<f32>(-1530f, 1000f), -910f), vec2<bool>(false, true), Struct_1(vec2<f32>(221f, -1758f), 1000f)), false), Struct_3(Struct_2(Struct_1(vec2<f32>(-1000f, 426f), 366f), 831f, Struct_1(vec2<f32>(-458f, -1108f), -128f), vec2<bool>(false, true), Struct_1(vec2<f32>(-624f, -180f), -277f)), false), Struct_3(Struct_2(Struct_1(vec2<f32>(1802f, 318f), -165f), 480f, Struct_1(vec2<f32>(-196f, 957f), -1278f), vec2<bool>(false, true), Struct_1(vec2<f32>(-779f, -1000f), 614f)), true), Struct_3(Struct_2(Struct_1(vec2<f32>(448f, 495f), 503f), 1315f, Struct_1(vec2<f32>(-233f, 2675f), -1000f), vec2<bool>(true, false), Struct_1(vec2<f32>(1208f, 306f), -456f)), true), Struct_3(Struct_2(Struct_1(vec2<f32>(-513f, 1118f), -519f), 1288f, Struct_1(vec2<f32>(-122f, -1809f), 1608f), vec2<bool>(true, true), Struct_1(vec2<f32>(-622f, -1323f), -1000f)), false), Struct_3(Struct_2(Struct_1(vec2<f32>(-987f, 1000f), -2622f), 358f, Struct_1(vec2<f32>(-1000f, -666f), -302f), vec2<bool>(true, false), Struct_1(vec2<f32>(1059f, 989f), -1544f)), false));

var<private> global3: array<vec2<bool>, 21>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: u32) -> f32 {
    var var_0 = global1.e;
    let var_1 = ~arg_2;
    global1 = Struct_2(global1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-572f, arg_0), vec2<f32>(global1.c.b, 1532f)))), _wgslsmith_f_op_f32(-global1.c.b)), !(!global1.d), global1.c);
    global0 = array<bool, 2>();
    var_0 = global1.e;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(777f + global1.e.b)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-1000f - global1.b)))))));
}

fn func_2(arg_0: i32, arg_1: f32) -> vec4<u32> {
    global1 = Struct_2(global1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(144f, arg_1)))), Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a.a), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1803f * global1.b) * global1.e.a.x), -abs(vec2<i32>(arg_0, 0i)), min(abs(0u), _wgslsmith_sub_u32(1u, 1u))))), vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(global1.a.a, global1.a.a)))))), arg_1));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, 1000f, -222f, -599f), vec4<f32>(arg_1, -164f, 1924f, -1603f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, global1.a.b, global1.c.a.x, 2510f))) * vec4<f32>(1206f, global1.c.a.x, 227f, -299f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1273f, arg_1, 1202f, 1491f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.c.a.x, 1194f, global1.e.a.x, arg_1), vec4<f32>(arg_1, arg_1, arg_1, global1.e.a.x), global1.d.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.e.b, arg_1, -443f, arg_1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2387f, global1.a.a.x, global1.c.b, 1961f) + vec4<f32>(global1.e.a.x, -1534f, arg_1, arg_1)), true))))));
    let var_1 = Struct_2(global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(select(arg_1, -1340f, global0[_wgslsmith_index_u32(33611u, 2u)]))))), global1.a, global3[_wgslsmith_index_u32(abs(select(abs(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), u_input.a.x, true)), 21u)], global1.a);
    var var_2 = 28830i;
    global0 = array<bool, 2>();
    return select(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 83649u, 23087u, 58408u), ~vec4<u32>(4294967295u, 36987u, u_input.a.x, 46002u)), vec4<u32>(1u, ~4421u, 1u, 1u), countOneBits(abs(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 109303u)))) << (~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), reverseBits(vec4<u32>(u_input.a.x, 8359u, u_input.a.x, 1u))) % vec4<u32>(32u)), ~reverseBits(~vec4<u32>(u_input.a.x, 32650u, 75751u, 17858u)), select(vec4<bool>(all(vec3<bool>(global1.d.x, false, global0[_wgslsmith_index_u32(u_input.a.x, 2u)])), select(!global1.d.x, any(global3[_wgslsmith_index_u32(89800u, 21u)]), global0[_wgslsmith_index_u32(max(1u, 57171u), 2u)]), all(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global1.d.x)), false), !select(select(vec4<bool>(global1.d.x, global1.d.x, false, false), vec4<bool>(true, var_1.d.x, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], true), false), !vec4<bool>(global0[_wgslsmith_index_u32(62133u, 2u)], true, global0[_wgslsmith_index_u32(42417u, 2u)], true), global1.d.x), false));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec4<u32>, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~33329u, select(1u, ~(u_input.a.x >> (7301u % 32u)), global0[_wgslsmith_index_u32(abs(select(0u, 34616u, true)), 2u)]), arg_0), ~_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(38455u, 16779u), u_input.a.xx), arg_2.xx));
    let var_1 = _wgslsmith_div_i32(~countOneBits(1i), firstLeadingBit(firstLeadingBit(~(u_input.b >> (1u % 32u)))));
    let var_2 = global1.d.x;
    var var_3 = Struct_3(Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(-379f)), -1308f), 2310f), global1.a.b, global1.c, select(select(vec2<bool>(true, true), global3[_wgslsmith_index_u32(9353u << (u_input.a.x % 32u), 21u)], vec2<bool>(arg_1, false)), select(vec2<bool>(true, true), select(global3[_wgslsmith_index_u32(arg_3, 21u)], global3[_wgslsmith_index_u32(u_input.a.x, 21u)], false), arg_1), !vec2<bool>(global1.d.x, false)), Struct_1(global1.e.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.b, global1.e.b)) + -604f))), global1.d.x);
    var_3 = Struct_3(var_3.a, var_3.a.d.x);
    return Struct_1(vec2<f32>(var_3.a.b, 648f), 1000f);
}

fn func_1() -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(69710u, ~0u, reverseBits(reverseBits(u_input.a.x)) | ~1u), reverseBits(u_input.a.x)), 2u)];
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-610f, global1.c.a.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, 1062f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(673f)) - _wgslsmith_f_op_f32(global1.b * global1.c.a.x)))), -1000f, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1036f, -151f) * global1.e.a) - _wgslsmith_f_op_vec2_f32(-global1.e.a)), _wgslsmith_f_op_vec2_f32(global1.e.a - vec2<f32>(global1.a.a.x, 1000f)), global0[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(u_input.a.x)), 2u)])), global1.a.a.x), global3[_wgslsmith_index_u32(77137u, 21u)], func_4(39594u, u_input.a.x > 12120u, _wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.a.x, 4294967295u, 7531u, u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 29213u)), func_2(u_input.b | -1i, -249f)), ~50134u));
    var var_1 = Struct_2(global1.e, _wgslsmith_f_op_f32(-global1.a.b), func_4(~(~(u_input.a.x >> (u_input.a.x % 32u))), ~10685u < u_input.a.x, select(firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u)) & vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, _wgslsmith_sub_u32(44253u, 38287u), 130581u), -294f <= _wgslsmith_div_f32(307f, global1.c.a.x)), u_input.a.x), vec2<bool>(!global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, u_input.a.x, 0u), 2u)], _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, 1u, 28393u), reverseBits(u_input.a.x)) != (~u_input.a.x << (_wgslsmith_div_u32(u_input.a.x, 1u) % 32u))), global1.a);
    var var_2 = var_1.b;
    global3 = array<vec2<bool>, 21>();
    return Struct_2(var_1.a, global1.e.b, var_1.e, !var_1.d, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.a.x, -987f)) + _wgslsmith_f_op_vec2_f32(-global1.c.a))), _wgslsmith_f_op_f32(548f - -1026f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, abs(-u_input.b), u_input.b, -2147483647i), abs(-firstLeadingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)))), ~(~(vec4<i32>(u_input.b, u_input.b, -1i, u_input.b) << ((vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x) | vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 4294967295u)) % vec4<u32>(32u)))), ~vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, 62539i), -vec2<i32>(u_input.b, -1i)), reverseBits(u_input.b), _wgslsmith_sub_i32(u_input.b, ~(-1i)), -_wgslsmith_add_i32(0i, u_input.b)));
    var var_1 = var_0.yy;
    var var_2 = global2[_wgslsmith_index_u32(u_input.a.x, 29u)];
    let var_3 = 25432i;
    var_2 = global2[_wgslsmith_index_u32(4294967295u, 29u)];
    var var_4 = vec3<bool>(global1.d.x == true, false, false || any(global3[_wgslsmith_index_u32(~reverseBits(8462u), 21u)]));
    var var_5 = ~_wgslsmith_mod_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(u_input.a, ~min(vec3<u32>(40374u, u_input.a.x, 1u), vec3<u32>(4294967295u, 0u, 84874u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(443f + -1000f)), var_2.a.e.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(u_input.a.x, true, vec4<u32>(43205u, u_input.a.x, u_input.a.x, u_input.a.x), 6598u).b * var_2.a.c.a.x))), global1.b), ~var_5.x, _wgslsmith_mod_vec3_u32(u_input.a, (u_input.a | vec3<u32>(29893u, 105730u, u_input.a.x)) & ~(~vec3<u32>(394u, 47666u, u_input.a.x))));
}

