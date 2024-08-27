struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: bool;

var<private> global1: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(31754u), Struct_4(21925u), Struct_4(1u), Struct_4(44058u), Struct_4(1u), Struct_4(0u), Struct_4(8475u), Struct_4(54632u), Struct_4(1u), Struct_4(61933u), Struct_4(4294967295u), Struct_4(134056u), Struct_4(80137u), Struct_4(58605u), Struct_4(46280u), Struct_4(51799u), Struct_4(0u), Struct_4(53592u), Struct_4(31403u), Struct_4(55955u), Struct_4(19665u), Struct_4(1u), Struct_4(2449u), Struct_4(41027u), Struct_4(20790u), Struct_4(1982u), Struct_4(49958u), Struct_4(13932u), Struct_4(0u));

var<private> global2: vec4<f32> = vec4<f32>(476f, -1743f, -385f, 1966f);

var<private> global3: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(Struct_1(vec2<f32>(-485f, 1055f), 0u, true, vec3<f32>(449f, -745f, -192f)), Struct_1(vec2<f32>(-697f, 667f), 1u, true, vec3<f32>(-301f, 520f, -1000f)), Struct_1(vec2<f32>(-1951f, -848f), 23768u, false, vec3<f32>(-193f, -373f, 395f))), Struct_3(Struct_1(vec2<f32>(608f, 808f), 71795u, true, vec3<f32>(-367f, 695f, -1099f)), Struct_1(vec2<f32>(174f, -473f), 24099u, false, vec3<f32>(-731f, -1000f, -787f)), Struct_1(vec2<f32>(1654f, -1016f), 4294967295u, false, vec3<f32>(-964f, -168f, -1000f))), Struct_3(Struct_1(vec2<f32>(-370f, 861f), 4294967295u, false, vec3<f32>(-914f, -823f, -1304f)), Struct_1(vec2<f32>(-183f, -563f), 4294967295u, false, vec3<f32>(-204f, 913f, 1801f)), Struct_1(vec2<f32>(1005f, 318f), 22410u, false, vec3<f32>(-1000f, -852f, 1673f))), Struct_3(Struct_1(vec2<f32>(-389f, -115f), 82882u, true, vec3<f32>(916f, -2097f, 1955f)), Struct_1(vec2<f32>(-290f, 1000f), 57404u, true, vec3<f32>(1350f, 561f, 904f)), Struct_1(vec2<f32>(760f, 449f), 81546u, true, vec3<f32>(882f, 486f, -1228f))), Struct_3(Struct_1(vec2<f32>(1000f, 1037f), 11475u, false, vec3<f32>(1691f, 1543f, 411f)), Struct_1(vec2<f32>(-513f, 775f), 0u, false, vec3<f32>(-930f, 1476f, -397f)), Struct_1(vec2<f32>(280f, -1446f), 6575u, false, vec3<f32>(646f, -292f, 1856f))), Struct_3(Struct_1(vec2<f32>(512f, -297f), 54314u, true, vec3<f32>(398f, 468f, 1000f)), Struct_1(vec2<f32>(-1584f, 216f), 4294967295u, true, vec3<f32>(908f, 371f, 928f)), Struct_1(vec2<f32>(-524f, -1692f), 1u, true, vec3<f32>(210f, -1118f, -512f))), Struct_3(Struct_1(vec2<f32>(1000f, 519f), 86999u, true, vec3<f32>(763f, 1135f, 754f)), Struct_1(vec2<f32>(-634f, 2283f), 28371u, true, vec3<f32>(1512f, 217f, 1000f)), Struct_1(vec2<f32>(-1785f, -255f), 40206u, false, vec3<f32>(1000f, -1418f, 2148f))), Struct_3(Struct_1(vec2<f32>(-1683f, 426f), 0u, false, vec3<f32>(-1768f, 110f, -2240f)), Struct_1(vec2<f32>(672f, 199f), 1u, true, vec3<f32>(-689f, -632f, -759f)), Struct_1(vec2<f32>(-997f, -1851f), 30671u, true, vec3<f32>(-579f, -200f, 1347f))), Struct_3(Struct_1(vec2<f32>(779f, 665f), 12199u, false, vec3<f32>(788f, 1177f, -692f)), Struct_1(vec2<f32>(1000f, 2144f), 28584u, true, vec3<f32>(-345f, 955f, 1000f)), Struct_1(vec2<f32>(-437f, 1112f), 0u, false, vec3<f32>(1465f, -443f, 268f))), Struct_3(Struct_1(vec2<f32>(669f, 1401f), 53912u, false, vec3<f32>(-1000f, -1959f, -234f)), Struct_1(vec2<f32>(-247f, 1751f), 945u, false, vec3<f32>(-1000f, -458f, -901f)), Struct_1(vec2<f32>(402f, -395f), 5736u, true, vec3<f32>(-938f, 749f, -1000f))), Struct_3(Struct_1(vec2<f32>(446f, -828f), 7886u, false, vec3<f32>(-1357f, -761f, -434f)), Struct_1(vec2<f32>(-1000f, 1384f), 115385u, true, vec3<f32>(994f, -576f, 1374f)), Struct_1(vec2<f32>(-879f, -275f), 35488u, false, vec3<f32>(553f, -644f, -413f))), Struct_3(Struct_1(vec2<f32>(1487f, -610f), 4294967295u, true, vec3<f32>(-1887f, -169f, -1369f)), Struct_1(vec2<f32>(1525f, 2164f), 47042u, true, vec3<f32>(485f, 127f, -1975f)), Struct_1(vec2<f32>(-2006f, -889f), 13037u, true, vec3<f32>(-1646f, 1209f, -1347f))), Struct_3(Struct_1(vec2<f32>(-113f, -1576f), 35681u, true, vec3<f32>(1151f, 481f, -1000f)), Struct_1(vec2<f32>(1110f, -1000f), 1u, false, vec3<f32>(308f, 143f, 1184f)), Struct_1(vec2<f32>(-217f, 778f), 4711u, false, vec3<f32>(594f, 628f, -1742f))), Struct_3(Struct_1(vec2<f32>(-1125f, 209f), 9443u, false, vec3<f32>(1163f, 127f, 379f)), Struct_1(vec2<f32>(-201f, 323f), 0u, false, vec3<f32>(197f, -1000f, -1625f)), Struct_1(vec2<f32>(129f, -578f), 78029u, true, vec3<f32>(-367f, 676f, 1288f))), Struct_3(Struct_1(vec2<f32>(497f, 103f), 0u, false, vec3<f32>(-1329f, 203f, -1178f)), Struct_1(vec2<f32>(558f, -2086f), 4294967295u, true, vec3<f32>(-1000f, -170f, -1039f)), Struct_1(vec2<f32>(-552f, 103f), 1u, false, vec3<f32>(-2291f, 1528f, 760f))), Struct_3(Struct_1(vec2<f32>(-999f, -398f), 98917u, true, vec3<f32>(1709f, -995f, -104f)), Struct_1(vec2<f32>(439f, -1511f), 0u, true, vec3<f32>(2261f, -563f, -601f)), Struct_1(vec2<f32>(689f, -723f), 88600u, true, vec3<f32>(576f, -1000f, -396f))), Struct_3(Struct_1(vec2<f32>(-707f, 827f), 32413u, true, vec3<f32>(-1000f, 1583f, -1721f)), Struct_1(vec2<f32>(-1459f, 520f), 1u, false, vec3<f32>(-1578f, -1154f, 100f)), Struct_1(vec2<f32>(1210f, 1000f), 0u, false, vec3<f32>(104f, -294f, 323f))));

var<private> global4: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<f32>(1967f, 1000f), 4294967295u, false, vec3<f32>(1156f, 211f, 1052f)), Struct_1(vec2<f32>(-145f, 221f), 31014u, false, vec3<f32>(-194f, -997f, -463f)), Struct_1(vec2<f32>(-1143f, -1252f), 1u, true, vec3<f32>(-1234f, -1617f, -242f)), Struct_1(vec2<f32>(332f, 1000f), 10914u, true, vec3<f32>(-472f, -376f, 1211f)), Struct_1(vec2<f32>(1000f, -280f), 4119u, true, vec3<f32>(1166f, -162f, -538f)), Struct_1(vec2<f32>(1048f, -1234f), 4294967295u, false, vec3<f32>(-3143f, 1000f, -1211f)), Struct_1(vec2<f32>(-289f, 838f), 76683u, false, vec3<f32>(2388f, 705f, -167f)), Struct_1(vec2<f32>(-302f, -111f), 4294967295u, true, vec3<f32>(541f, -1000f, -1000f)), Struct_1(vec2<f32>(-755f, -794f), 3255u, false, vec3<f32>(717f, -189f, 1025f)), Struct_1(vec2<f32>(460f, -930f), 1u, false, vec3<f32>(-217f, -1040f, 1770f)), Struct_1(vec2<f32>(432f, 1000f), 8988u, false, vec3<f32>(-642f, 1178f, -194f)), Struct_1(vec2<f32>(-1400f, 1000f), 4294967295u, false, vec3<f32>(2553f, 730f, 143f)), Struct_1(vec2<f32>(111f, 427f), 60067u, false, vec3<f32>(1007f, -250f, 569f)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> bool {
    let var_0 = arg_1;
    global1 = array<Struct_4, 29>();
    global0 = arg_0.a.c;
    global4 = array<Struct_1, 13>();
    var var_1 = Struct_1(vec2<f32>(global2.x, arg_0.a.a.x), arg_1.x, false, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a.d.x))), _wgslsmith_f_op_f32(trunc(-307f)), arg_0.d.d.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.a.x, 757f, arg_0.d.d.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -775f), global2.x, _wgslsmith_f_op_f32(min(arg_0.d.a.x, -308f)))))));
    return arg_0.c;
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    let var_0 = Struct_3(global4[_wgslsmith_index_u32(u_input.b, 13u)], Struct_1(global2.ww, ~(~75381u & ~u_input.b), select(true, func_3(Struct_2(Struct_1(arg_0, u_input.b, true, vec3<f32>(global2.x, 886f, global2.x)), 49843u, false, Struct_1(global2.yw, u_input.b, true, vec3<f32>(-438f, global2.x, global2.x)), vec2<u32>(96724u, u_input.b)), vec2<u32>(3757u, 13523u)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-196f, global2.x, -361f)))))), global4[_wgslsmith_index_u32(u_input.b, 13u)]);
    global2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(383f))))), 1805f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-637f, 1471f, -1418f, arg_0.x)), vec4<f32>(784f, var_0.b.a.x, arg_0.x, -1306f), !vec4<bool>(false, true, false, var_0.b.c))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(814f, 865f, arg_0.x, -367f) + vec4<f32>(120f, global2.x, -404f, -728f)), vec4<f32>(-137f, global2.x, -1000f, 468f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, 320f, 616f, 1847f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1390f, 510f, arg_0.x, -1815f)))))), !(!(!vec4<bool>(false, false, var_0.c.c, true)))));
    var var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a, u_input.a), firstLeadingBit(vec2<i32>(1i, 2147483647i))), vec2<i32>(2147483647i, -18200i)) >> (max(~vec2<u32>(17530u, var_0.b.b), vec2<u32>(var_0.c.b, min(u_input.b, 1u))) % vec2<u32>(32u)), -select(vec2<i32>(i32(-1i) * -1i, u_input.a & 0i), -(vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))), select(!vec2<bool>(var_0.c.c, var_0.c.c), vec2<bool>(false, var_0.c.c), vec2<bool>(true, true))));
    var var_2 = global4[_wgslsmith_index_u32(u_input.b << (_wgslsmith_add_u32(u_input.b << (92447u % 32u), ~_wgslsmith_mod_u32(~1u, ~u_input.b)) % 32u), 13u)];
    var var_3 = vec4<f32>(-904f, -196f, 1435f, _wgslsmith_f_op_f32(global2.x - var_0.c.a.x));
    return var_3.x;
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_4 {
    var var_0 = false;
    let var_1 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.b, ~u_input.b), _wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(u_input.b, 36107u, u_input.b))), ~(~(~vec2<u32>(55038u, 27629u)))), ~_wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, 1u), vec2<u32>(96420u, 22141u)), reverseBits(~vec2<u32>(4294967295u, u_input.b))));
    global3 = array<Struct_3, 17>();
    global0 = var_1.x >= 51682u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_2(global2.yx)), global2.x))), u_input.b, !any(!(!vec4<bool>(arg_0, true, arg_0, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-713f + 232f) + arg_1), _wgslsmith_f_op_f32(abs(global2.x)), -946f)));
    return global1[_wgslsmith_index_u32(u_input.b, 29u)];
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -577f);
    let var_1 = 430f;
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1, 1037f)) * _wgslsmith_f_op_f32(-global2.x)), arg_0, -1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - global2.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_0))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, global2.x, -666f, -162f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, arg_0, 396f, -176f))))));
    let var_2 = Struct_3(global4[_wgslsmith_index_u32(81783u, 13u)], global4[_wgslsmith_index_u32(func_1(arg_1, 921f).a, 13u)], Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(global2.wz)))))), 1u >> ((~u_input.b | 48996u) % 32u), false, vec3<f32>(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1082f)), 1734f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global2.x)))));
    var var_3 = u_input.a;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -568f)), var_2.c.a.x)), arg_2.a, false, var_2.b.d);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<u32> {
    var var_0 = arg_0.d.zx;
    var_0 = _wgslsmith_f_op_vec2_f32(select(global2.wy, vec2<f32>(324f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0.a.x))))), arg_0.c));
    global4 = array<Struct_1, 13>();
    var var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~(u_input.b ^ 21591u), u_input.b), ~vec2<u32>(reverseBits(0u), ~arg_0.b)), vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~arg_0.b, u_input.b), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, u_input.b), vec2<u32>(3186u, u_input.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 48500u, 0u, 22541u), vec4<u32>(u_input.b, arg_0.b, arg_0.b, 4294967295u))), 1u), ~13700u));
    global4 = array<Struct_1, 13>();
    return max(select(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(1u, 4294967295u, 0u)), firstLeadingBit(vec3<u32>(arg_0.b, var_1.x, 11814u))) | vec3<u32>(~1u, u_input.b, 78323u), vec3<u32>(16077u, ~10617u, arg_0.b), any(select(vec2<bool>(true, true), select(vec2<bool>(true, arg_0.c), vec2<bool>(arg_0.c, true), vec2<bool>(arg_0.c, arg_0.c)), any(vec2<bool>(true, arg_0.c))))), ~(~abs(~vec3<u32>(arg_0.b, 32909u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = ~_wgslsmith_dot_vec3_u32(func_5(func_4(_wgslsmith_f_op_f32(-global2.x), true, func_1(true, -1994f)), vec4<i32>(_wgslsmith_mod_i32(0i, u_input.a), u_input.a >> (u_input.b % 32u), ~1i, -65395i >> (u_input.b % 32u))), vec3<u32>(countOneBits(u_input.b), ~firstLeadingBit(u_input.b), u_input.b));
    global1 = array<Struct_4, 29>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -994f), _wgslsmith_f_op_f32(f32(-1f) * -220f)) + _wgslsmith_f_op_f32(-global2.x)) + 1347f) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) - -1225f)));
    global3 = array<Struct_3, 17>();
    let var_1 = _wgslsmith_dot_vec4_i32(select(select(~vec4<i32>(3823i, 21899i, u_input.a, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, 0i) & vec4<i32>(12894i, 0i, u_input.a, 2147483647i), vec4<bool>(true, true, true, true)), firstTrailingBit(select(vec4<i32>(u_input.a, -9729i, u_input.a, -2147483647i), vec4<i32>(14484i, u_input.a, u_input.a, u_input.a), vec4<bool>(true, true, true, false))), vec4<bool>(true, all(vec4<bool>(false, true, false, false)), -1059f >= global2.x, u_input.a != u_input.a)), vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -17870i, u_input.a), i32(-1i) * -47921i, u_input.a, -2147483647i)) & ~u_input.a;
    var var_2 = abs(_wgslsmith_div_u32(1u, ~u_input.b) >> (_wgslsmith_mod_u32(u_input.b, _wgslsmith_div_u32(firstLeadingBit(u_input.b), _wgslsmith_sub_u32(u_input.b, u_input.b))) % 32u));
    global1 = array<Struct_4, 29>();
    var var_3 = _wgslsmith_sub_vec3_i32(-vec3<i32>(var_1, -2147483647i, firstTrailingBit(-16838i)) ^ vec3<i32>(89342i, _wgslsmith_clamp_i32(var_1, 9450i, u_input.a) & var_1, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a, 20964i, var_1), countOneBits(2147483647i))), firstTrailingBit(-(~vec3<i32>(1i, u_input.a, -6276i))) | min(select(_wgslsmith_sub_vec3_i32(vec3<i32>(13846i, 42472i, var_1), vec3<i32>(0i, -21233i, u_input.a)), vec3<i32>(10672i, u_input.a, var_1) ^ vec3<i32>(0i, u_input.a, var_1), true), -vec3<i32>(var_1, u_input.a, -6572i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-global2.x)) - -276f), global2.x)));
}

