struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 72099u, 37355u);

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec3<f32>(-1008f, -1248f, 210f), vec4<f32>(133f, -343f, 1961f, -351f), vec4<f32>(122f, 428f, -1000f, 1191f), Struct_1(true, 359f, true), Struct_1(false, 663f, true)), Struct_2(vec3<f32>(1346f, 394f, -100f), vec4<f32>(1000f, -1399f, -855f, -739f), vec4<f32>(-338f, -3154f, 586f, -399f), Struct_1(true, -542f, true), Struct_1(false, 1180f, false)), Struct_2(vec3<f32>(322f, -1000f, 824f), vec4<f32>(145f, -1000f, -965f, 1000f), vec4<f32>(-1000f, 994f, 641f, -102f), Struct_1(false, -286f, false), Struct_1(true, -676f, true)), Struct_2(vec3<f32>(268f, 1000f, 872f), vec4<f32>(-248f, -284f, -612f, 1000f), vec4<f32>(492f, -1000f, 1742f, 1260f), Struct_1(true, 1000f, true), Struct_1(true, 910f, true)), Struct_2(vec3<f32>(-1207f, -230f, -1150f), vec4<f32>(1000f, 802f, 934f, 522f), vec4<f32>(157f, 1101f, 425f, -271f), Struct_1(false, 1362f, false), Struct_1(false, -1186f, false)), Struct_2(vec3<f32>(1696f, -1602f, 343f), vec4<f32>(-1275f, 174f, 813f, -1000f), vec4<f32>(-559f, 1720f, 1201f, -1000f), Struct_1(false, 106f, false), Struct_1(false, 448f, false)), Struct_2(vec3<f32>(-698f, 1000f, -2318f), vec4<f32>(-800f, -1242f, -1074f, -336f), vec4<f32>(-1209f, -1320f, -1448f, -1567f), Struct_1(true, 663f, true), Struct_1(true, 245f, false)), Struct_2(vec3<f32>(-188f, -830f, -171f), vec4<f32>(-363f, 822f, -1212f, 272f), vec4<f32>(412f, 2362f, -525f, 864f), Struct_1(false, 743f, false), Struct_1(true, -2022f, false)), Struct_2(vec3<f32>(628f, -1248f, -132f), vec4<f32>(473f, -491f, 1603f, -1180f), vec4<f32>(-1580f, 1000f, -1000f, -714f), Struct_1(true, -470f, true), Struct_1(true, 288f, true)), Struct_2(vec3<f32>(345f, -220f, -870f), vec4<f32>(-1097f, -245f, -491f, -1004f), vec4<f32>(316f, -1320f, -1342f, -431f), Struct_1(true, 198f, false), Struct_1(true, -335f, true)), Struct_2(vec3<f32>(487f, -1990f, 1028f), vec4<f32>(453f, -604f, 800f, 117f), vec4<f32>(-1852f, -618f, 1158f, 458f), Struct_1(true, -654f, false), Struct_1(true, -138f, false)), Struct_2(vec3<f32>(386f, 1000f, -645f), vec4<f32>(-127f, -198f, 1028f, -1104f), vec4<f32>(-180f, -632f, -404f, 1360f), Struct_1(true, -358f, false), Struct_1(true, 853f, false)), Struct_2(vec3<f32>(444f, 1518f, -1000f), vec4<f32>(-689f, -1788f, -766f, -1035f), vec4<f32>(363f, -1011f, 1167f, -105f), Struct_1(false, 113f, true), Struct_1(false, 665f, false)), Struct_2(vec3<f32>(-2158f, -819f, -1575f), vec4<f32>(1000f, 730f, 1000f, 605f), vec4<f32>(-352f, -1189f, 1000f, 1000f), Struct_1(false, 1000f, false), Struct_1(false, 1177f, false)), Struct_2(vec3<f32>(-107f, -1412f, 111f), vec4<f32>(-1933f, -2470f, -391f, 301f), vec4<f32>(303f, 315f, 1094f, -152f), Struct_1(false, 377f, false), Struct_1(false, -236f, false)), Struct_2(vec3<f32>(2177f, -866f, -391f), vec4<f32>(-1515f, 271f, -644f, -215f), vec4<f32>(899f, 2193f, -1282f, -165f), Struct_1(false, -933f, true), Struct_1(false, -654f, true)), Struct_2(vec3<f32>(625f, -1006f, -808f), vec4<f32>(-635f, -222f, -1210f, -782f), vec4<f32>(-581f, 816f, -1315f, -264f), Struct_1(true, -1266f, true), Struct_1(true, -354f, true)), Struct_2(vec3<f32>(-1199f, 1785f, 730f), vec4<f32>(-558f, -292f, 2333f, -1333f), vec4<f32>(-327f, 1874f, 163f, 510f), Struct_1(true, 700f, true), Struct_1(false, -1480f, true)), Struct_2(vec3<f32>(-468f, -844f, -1315f), vec4<f32>(1146f, 897f, -199f, -1710f), vec4<f32>(-694f, -625f, -1000f, 493f), Struct_1(true, -1055f, true), Struct_1(true, 414f, false)), Struct_2(vec3<f32>(228f, -2135f, -1750f), vec4<f32>(240f, -371f, -367f, -1062f), vec4<f32>(908f, 116f, -814f, 210f), Struct_1(false, 572f, false), Struct_1(true, -348f, true)), Struct_2(vec3<f32>(-676f, 786f, -806f), vec4<f32>(1745f, 114f, -650f, -459f), vec4<f32>(1203f, 973f, -670f, 1249f), Struct_1(true, 502f, true), Struct_1(false, 1096f, false)), Struct_2(vec3<f32>(1621f, 258f, -1647f), vec4<f32>(-460f, -501f, -193f, -283f), vec4<f32>(-475f, 1786f, -1132f, -1817f), Struct_1(false, 2095f, false), Struct_1(false, -177f, false)), Struct_2(vec3<f32>(532f, 296f, 475f), vec4<f32>(-768f, -1276f, 591f, 3050f), vec4<f32>(-805f, 997f, -908f, -1431f), Struct_1(true, 766f, false), Struct_1(false, -170f, false)), Struct_2(vec3<f32>(136f, -583f, -656f), vec4<f32>(1909f, -485f, -1928f, 1000f), vec4<f32>(230f, 749f, -163f, 179f), Struct_1(false, -702f, false), Struct_1(true, -460f, false)), Struct_2(vec3<f32>(-536f, -1971f, -1986f), vec4<f32>(1325f, 345f, 667f, 161f), vec4<f32>(646f, -644f, 906f, 1022f), Struct_1(false, 2128f, true), Struct_1(false, 385f, true)), Struct_2(vec3<f32>(993f, 626f, -1302f), vec4<f32>(-390f, -296f, -1382f, -1201f), vec4<f32>(-654f, 1119f, 358f, 1293f), Struct_1(true, -529f, false), Struct_1(true, 1000f, false)), Struct_2(vec3<f32>(750f, 754f, -654f), vec4<f32>(554f, -818f, 1507f, -707f), vec4<f32>(221f, 1184f, -1000f, -746f), Struct_1(false, -487f, false), Struct_1(false, 1120f, false)), Struct_2(vec3<f32>(425f, 646f, -500f), vec4<f32>(523f, -367f, -142f, -640f), vec4<f32>(-1000f, -391f, -628f, -438f), Struct_1(true, 516f, false), Struct_1(true, -116f, false)), Struct_2(vec3<f32>(-1158f, 555f, -376f), vec4<f32>(-1012f, -1077f, 531f, -1145f), vec4<f32>(601f, -996f, -299f, 324f), Struct_1(false, -805f, false), Struct_1(false, 531f, false)), Struct_2(vec3<f32>(-926f, -197f, 561f), vec4<f32>(-1280f, 107f, -1003f, -1000f), vec4<f32>(-301f, 458f, -2511f, 246f), Struct_1(true, -688f, false), Struct_1(false, 558f, true)), Struct_2(vec3<f32>(-895f, -1321f, 1000f), vec4<f32>(510f, -853f, 985f, -879f), vec4<f32>(-446f, 233f, -1299f, -158f), Struct_1(false, -363f, false), Struct_1(false, 612f, true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_4) -> u32 {
    return abs(4294967295u);
}

fn func_3() -> f32 {
    global0 = vec3<u32>(u_input.a, 22088u, (select(58466u ^ u_input.c, u_input.a, true) | global0.x) << (1u % 32u));
    let var_0 = vec4<i32>(-53452i | u_input.b.x, 2147483647i, 17775i, abs(countOneBits(-u_input.b.x & u_input.b.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-343f, -1011f, -1937f, -1840f))))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-351f - -347f))), -982f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(670f + 1273f)), _wgslsmith_f_op_f32(f32(-1f) * -945f)))));
    var var_2 = select(vec2<bool>(true, any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))), !select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(false, true))), var_0.x <= -9768i), select(select(vec2<bool>(any(vec2<bool>(false, false)), true), vec2<bool>(true, all(vec3<bool>(false, true, false))), vec2<bool>(true, true)), vec2<bool>(true, any(vec4<bool>(true, false, true, true))), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), false))));
    let var_3 = _wgslsmith_mult_u32(1u, 79449u);
    return _wgslsmith_f_op_f32(floor(559f));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(vec3<u32>(8426u, abs(u_input.a), abs(arg_0)), !(all(vec2<bool>(arg_3.a, false)) | all(select(vec3<bool>(arg_3.a, arg_2.e.c, arg_3.a), vec3<bool>(false, true, arg_3.a), true))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_2.b.x, _wgslsmith_div_f32(194f, arg_3.b))), _wgslsmith_f_op_f32(abs(-1214f)))));
    var var_1 = select(vec4<bool>(arg_2.e.c, arg_2.d.c, true, arg_3.a), !vec4<bool>(true & (var_0.b || false), _wgslsmith_f_op_f32(f32(-1f) * -1053f) >= _wgslsmith_f_op_f32(ceil(1004f)), _wgslsmith_f_op_f32(-arg_2.e.b) == 1554f, select(u_input.b.x, u_input.b.x, false) == (0i << (0u % 32u))), !vec4<bool>(true, var_0.b, var_0.b, !arg_2.d.a));
    return Struct_2(vec3<f32>(var_0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(214f))))), _wgslsmith_div_f32(arg_3.b, arg_3.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.b - arg_2.c)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.b) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-150f, var_0.d, arg_2.a.x, var_0.c))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-887f, arg_3.b, 1000f, 598f))))), vec4<f32>(1177f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + -144f) * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_3.b)))), _wgslsmith_f_op_f32(f32(-1f) * -647f)), Struct_1(arg_2.e.c, 1518f, true), arg_3);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_4 {
    var var_0 = func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 85832u, _wgslsmith_mod_u32(countOneBits(4294967295u), func_2(Struct_4(vec3<bool>(true, arg_1.c, true), u_input.b.x)))), ~vec3<u32>(countOneBits(global0.x), global0.x, 0u)), u_input.b.x, Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(min(1240f, -1022f)), _wgslsmith_f_op_f32(1000f - arg_1.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, arg_1.b, arg_1.b) * vec3<f32>(470f, 1562f, arg_1.b))), vec4<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(arg_1.b, arg_1.b)), -760f, _wgslsmith_f_op_f32(round(306f)), _wgslsmith_div_f32(-1129f, _wgslsmith_f_op_f32(sign(arg_1.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -691f, -628f, 1185f), vec4<f32>(arg_1.b, -1218f, 1076f, -865f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(797f, arg_1.b, arg_1.b, arg_1.b), vec4<f32>(-883f, -541f, 567f, arg_1.b), vec4<bool>(false, arg_1.c, false, arg_1.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(534f, -1162f, -186f, arg_1.b)))), Struct_1(!(!arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b))), any(vec2<bool>(true, true))), arg_1), Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b)) + _wgslsmith_f_op_f32(arg_1.b * -1000f)), false));
    var var_1 = select(true, !all(select(vec4<bool>(true, false, arg_1.a, arg_1.a), vec4<bool>(true, var_0.d.c, false, true), select(vec4<bool>(var_0.d.a, false, true, false), vec4<bool>(arg_1.a, true, false, arg_1.c), true))), !var_0.e.c);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(select(var_0.b.xzx, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), var_0.d.b)), _wgslsmith_f_op_f32(max(arg_1.b, var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1395f, var_0.b.x))), vec3<bool>(arg_1.a, arg_1.c, arg_1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c), _wgslsmith_f_op_vec4_f32(select(var_0.c, vec4<f32>(796f, 1429f, var_0.d.b, var_0.c.x), var_0.d.a))), vec4<f32>(var_0.e.b, _wgslsmith_f_op_f32(step(arg_1.b, 931f)), _wgslsmith_f_op_f32(abs(var_0.d.b)), _wgslsmith_f_op_f32(min(110f, arg_1.b)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0.c))) - _wgslsmith_div_vec4_f32(var_0.c, _wgslsmith_f_op_vec4_f32(var_0.c - var_0.b))) * vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(-398f * _wgslsmith_f_op_f32(sign(arg_1.b))), arg_1.b, _wgslsmith_f_op_f32(-var_0.b.x))), Struct_1(var_0.e.a, -543f, all(!select(vec2<bool>(false, var_0.d.a), vec2<bool>(false, true), vec2<bool>(var_0.e.a, true)))), arg_1);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.b.x * 834f))), _wgslsmith_f_op_f32(floor(-1499f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -848f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.b) - _wgslsmith_f_op_f32(var_2.a.x + 1507f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + arg_1.b) - var_0.b.x))));
    var_1 = var_0.e.a;
    return Struct_4(!(!vec3<bool>(u_input.a <= u_input.a, -339f < arg_1.b, select(false, arg_1.c, var_2.e.a))), _wgslsmith_dot_vec3_i32(reverseBits(abs(vec3<i32>(-29113i, -56282i, u_input.b.x))), select(vec3<i32>(2147483647i, 11118i, u_input.b.x) << (vec3<u32>(2288u, arg_0, u_input.c) % vec3<u32>(32u)), vec3<i32>(2147483647i, u_input.b.x, -37835i), vec3<bool>(var_0.d.a, arg_1.c, false))) << (arg_0 % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, false, all(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true))), true);
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_f32(min(1625f, _wgslsmith_f_op_f32(select(-628f, 199f, u_input.b.x > -_wgslsmith_mult_i32(u_input.b.x, u_input.b.x)))));
    var var_3 = 9115u;
    let var_4 = func_1(u_input.a, Struct_1(var_0.x, var_2, !var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(var_4.b, u_input.b.x), var_4.b, var_4.b) ^ -vec3<i32>(1i ^ var_4.b, -var_4.b, 44859i), vec4<i32>(0i, -16432i, ~var_4.b, -(~var_4.b)), vec2<u32>(u_input.a, select(global0.x, _wgslsmith_mult_u32(func_2(var_4), _wgslsmith_mod_u32(4294967295u, u_input.c)), all(vec3<bool>(false, true, true)))), 304f);
}

