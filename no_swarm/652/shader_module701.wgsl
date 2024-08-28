struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(28556u, vec3<f32>(-2080f, -791f, -1505f), -1i, vec3<u32>(6469u, 4294967295u, 22173u), Struct_2(0i, vec2<f32>(-394f, -536f), Struct_1(2147483647i, vec3<f32>(148f, -1944f, 502f)), Struct_1(0i, vec3<f32>(224f, 1000f, -643f)))), Struct_3(0u, vec3<f32>(-258f, 1585f, -1135f), 20215i, vec3<u32>(2453u, 15017u, 32002u), Struct_2(16643i, vec2<f32>(2037f, -1489f), Struct_1(-17661i, vec3<f32>(791f, -692f, -519f)), Struct_1(-1i, vec3<f32>(-2059f, -1000f, -518f)))), Struct_3(21528u, vec3<f32>(319f, 1983f, -1000f), i32(-2147483648), vec3<u32>(0u, 0u, 0u), Struct_2(1i, vec2<f32>(-132f, -1000f), Struct_1(18714i, vec3<f32>(-199f, 1000f, 577f)), Struct_1(1i, vec3<f32>(671f, -1000f, -944f)))), Struct_3(109552u, vec3<f32>(-471f, -1564f, -2095f), 2147483647i, vec3<u32>(0u, 0u, 64296u), Struct_2(-1i, vec2<f32>(-721f, -1828f), Struct_1(25045i, vec3<f32>(-1000f, 189f, 1338f)), Struct_1(-45889i, vec3<f32>(-668f, 225f, 1197f)))), Struct_3(1u, vec3<f32>(-990f, 1435f, -523f), i32(-2147483648), vec3<u32>(0u, 1u, 34636u), Struct_2(17619i, vec2<f32>(1433f, 462f), Struct_1(2147483647i, vec3<f32>(-268f, -635f, -1126f)), Struct_1(1i, vec3<f32>(-1119f, 1000f, 145f)))), Struct_3(54331u, vec3<f32>(-224f, 1287f, -682f), 24586i, vec3<u32>(1u, 46845u, 40225u), Struct_2(43682i, vec2<f32>(767f, 163f), Struct_1(i32(-2147483648), vec3<f32>(-1055f, -866f, -540f)), Struct_1(17662i, vec3<f32>(-228f, 1000f, 673f)))), Struct_3(22299u, vec3<f32>(1591f, -1000f, -1046f), -26878i, vec3<u32>(7653u, 0u, 57334u), Struct_2(-1776i, vec2<f32>(1000f, 423f), Struct_1(1794i, vec3<f32>(481f, -1000f, 1000f)), Struct_1(-1i, vec3<f32>(-956f, -140f, 1335f)))), Struct_3(1u, vec3<f32>(-551f, -2580f, -596f), -13884i, vec3<u32>(41527u, 19482u, 1u), Struct_2(i32(-2147483648), vec2<f32>(527f, 1130f), Struct_1(-6078i, vec3<f32>(600f, 645f, -1006f)), Struct_1(i32(-2147483648), vec3<f32>(1564f, -1659f, -586f)))), Struct_3(62320u, vec3<f32>(1235f, -805f, 248f), -21839i, vec3<u32>(54316u, 74081u, 0u), Struct_2(i32(-2147483648), vec2<f32>(-1948f, 2658f), Struct_1(24145i, vec3<f32>(-568f, -888f, -849f)), Struct_1(1i, vec3<f32>(-1055f, -740f, -635f)))), Struct_3(43185u, vec3<f32>(-2368f, 615f, 3581f), -5600i, vec3<u32>(1155u, 4294967295u, 25861u), Struct_2(i32(-2147483648), vec2<f32>(398f, -579f), Struct_1(1i, vec3<f32>(-685f, -1000f, 132f)), Struct_1(-23249i, vec3<f32>(-913f, 2009f, -530f)))), Struct_3(1u, vec3<f32>(934f, -1095f, -1426f), 27774i, vec3<u32>(4294967295u, 4294967295u, 1u), Struct_2(-7262i, vec2<f32>(-1458f, 1588f), Struct_1(-1i, vec3<f32>(-562f, -1180f, 429f)), Struct_1(43977i, vec3<f32>(1423f, -228f, -2305f)))), Struct_3(47799u, vec3<f32>(-1417f, -1457f, 1359f), 2147483647i, vec3<u32>(1u, 36834u, 76792u), Struct_2(i32(-2147483648), vec2<f32>(-1536f, -1000f), Struct_1(i32(-2147483648), vec3<f32>(-433f, -2342f, 1361f)), Struct_1(1i, vec3<f32>(-1000f, 540f, 1847f)))), Struct_3(1u, vec3<f32>(699f, -1000f, 436f), -1i, vec3<u32>(30753u, 4294967295u, 1u), Struct_2(-24245i, vec2<f32>(-512f, -980f), Struct_1(48920i, vec3<f32>(1236f, -974f, 177f)), Struct_1(-44194i, vec3<f32>(733f, -703f, -1634f)))), Struct_3(1u, vec3<f32>(-178f, -1281f, 467f), -33553i, vec3<u32>(1u, 51158u, 1u), Struct_2(0i, vec2<f32>(-921f, -768f), Struct_1(46937i, vec3<f32>(131f, 1339f, 780f)), Struct_1(-2535i, vec3<f32>(-306f, -663f, -379f)))), Struct_3(118376u, vec3<f32>(1000f, -146f, 839f), -57935i, vec3<u32>(4294967295u, 4294967295u, 63330u), Struct_2(0i, vec2<f32>(516f, -677f), Struct_1(i32(-2147483648), vec3<f32>(546f, 196f, -2379f)), Struct_1(-33744i, vec3<f32>(922f, -983f, 459f)))), Struct_3(0u, vec3<f32>(1933f, -125f, 492f), -1i, vec3<u32>(4294967295u, 1u, 14456u), Struct_2(i32(-2147483648), vec2<f32>(-1241f, 1000f), Struct_1(2147483647i, vec3<f32>(-322f, -244f, -837f)), Struct_1(12078i, vec3<f32>(483f, -332f, 917f)))), Struct_3(0u, vec3<f32>(-921f, 1410f, 324f), i32(-2147483648), vec3<u32>(6314u, 2950u, 4595u), Struct_2(i32(-2147483648), vec2<f32>(527f, -373f), Struct_1(43372i, vec3<f32>(-807f, -509f, 1145f)), Struct_1(0i, vec3<f32>(582f, -1117f, -321f)))), Struct_3(4294967295u, vec3<f32>(782f, -153f, 686f), -1448i, vec3<u32>(0u, 1u, 0u), Struct_2(i32(-2147483648), vec2<f32>(-314f, 226f), Struct_1(0i, vec3<f32>(1589f, -760f, -1150f)), Struct_1(-1806i, vec3<f32>(318f, 356f, -1000f)))), Struct_3(0u, vec3<f32>(-1497f, 1100f, -1447f), 16559i, vec3<u32>(28584u, 25008u, 1u), Struct_2(-1i, vec2<f32>(1098f, -1365f), Struct_1(11320i, vec3<f32>(-1289f, 1383f, 576f)), Struct_1(-1i, vec3<f32>(474f, 1435f, -310f)))), Struct_3(63192u, vec3<f32>(-1064f, 385f, 373f), -1i, vec3<u32>(0u, 0u, 75528u), Struct_2(-1i, vec2<f32>(-963f, 559f), Struct_1(-25223i, vec3<f32>(-200f, 200f, 425f)), Struct_1(-76369i, vec3<f32>(-1210f, -1346f, 286f)))), Struct_3(14800u, vec3<f32>(-1242f, 818f, -1903f), -3938i, vec3<u32>(5619u, 79306u, 1u), Struct_2(-22164i, vec2<f32>(-174f, 1188f), Struct_1(-9223i, vec3<f32>(-1381f, 1612f, -774f)), Struct_1(i32(-2147483648), vec3<f32>(480f, 136f, 368f)))), Struct_3(9667u, vec3<f32>(-1117f, 365f, 273f), -47046i, vec3<u32>(638u, 18703u, 3967u), Struct_2(0i, vec2<f32>(509f, -1187f), Struct_1(i32(-2147483648), vec3<f32>(1905f, -190f, 1503f)), Struct_1(2924i, vec3<f32>(-565f, -1148f, 369f)))), Struct_3(1u, vec3<f32>(-901f, -186f, -770f), 11766i, vec3<u32>(4294967295u, 5310u, 1u), Struct_2(-51087i, vec2<f32>(1215f, -224f), Struct_1(1i, vec3<f32>(-1697f, 586f, 1771f)), Struct_1(-1i, vec3<f32>(-1000f, 923f, -2200f)))), Struct_3(4294967295u, vec3<f32>(-947f, -1000f, 208f), 16735i, vec3<u32>(22292u, 26856u, 0u), Struct_2(2147483647i, vec2<f32>(281f, -543f), Struct_1(1i, vec3<f32>(-1654f, -704f, 1000f)), Struct_1(-1i, vec3<f32>(-828f, 797f, 962f)))), Struct_3(1u, vec3<f32>(-1000f, -283f, 1000f), i32(-2147483648), vec3<u32>(10479u, 59970u, 67617u), Struct_2(1i, vec2<f32>(-1000f, -1000f), Struct_1(-6523i, vec3<f32>(523f, 1005f, -528f)), Struct_1(0i, vec3<f32>(-172f, 1533f, -368f)))), Struct_3(1u, vec3<f32>(-1000f, -1000f, 812f), 0i, vec3<u32>(1u, 4294967295u, 1u), Struct_2(0i, vec2<f32>(-448f, 369f), Struct_1(2147483647i, vec3<f32>(310f, 609f, 869f)), Struct_1(-1i, vec3<f32>(415f, -400f, 1409f)))), Struct_3(86484u, vec3<f32>(1178f, 1692f, -617f), 8144i, vec3<u32>(32411u, 4294967295u, 3651u), Struct_2(-1i, vec2<f32>(-911f, -529f), Struct_1(2147483647i, vec3<f32>(396f, 343f, 791f)), Struct_1(0i, vec3<f32>(1033f, 2111f, 547f)))), Struct_3(4294967295u, vec3<f32>(-444f, 1210f, 1356f), -5465i, vec3<u32>(4294967295u, 20082u, 5927u), Struct_2(-19274i, vec2<f32>(332f, 1000f), Struct_1(-26851i, vec3<f32>(472f, 295f, -1397f)), Struct_1(-33482i, vec3<f32>(-469f, 404f, 1005f)))), Struct_3(6374u, vec3<f32>(-423f, -867f, -496f), 0i, vec3<u32>(30298u, 1u, 4294967295u), Struct_2(3993i, vec2<f32>(-1000f, -1000f), Struct_1(-6238i, vec3<f32>(167f, 1000f, -872f)), Struct_1(2147483647i, vec3<f32>(451f, -1000f, 2803f)))));

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> f32 {
    global0 = array<Struct_3, 29>();
    let var_0 = vec4<f32>(-552f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1605f) * _wgslsmith_f_op_f32(1008f + 463f)) - -702f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1682f * -1334f)))), _wgslsmith_f_op_f32(2459f + 1841f));
    global0 = array<Struct_3, 29>();
    global0 = array<Struct_3, 29>();
    global0 = array<Struct_3, 29>();
    return 238f;
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    let var_1 = arg_0;
    return abs(u_input.b);
}

fn func_2(arg_0: vec3<i32>) -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_add_i32(~func_3(Struct_1(-37344i, vec3<f32>(1001f, -1990f, 109f))), ~firstTrailingBit(arg_0.x)), 53202i << (0u % 32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_1 = u_input.d.x;
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(var_0.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)))))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(117591u), _wgslsmith_sub_u32(var_1, ~(~_wgslsmith_mod_u32(20056u, 13674u)))), 29u)];
    return StorageBuffer(vec4<i32>(u_input.a.x, ~(-u_input.a.x), _wgslsmith_sub_i32(func_3(var_2.e.c), -1i), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(false, !global1.x, any(!(!select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(true, false, true, false)))));
    global0 = array<Struct_3, 29>();
    let var_0 = -900f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(577f + 1434f), _wgslsmith_f_op_f32(-1289f * 593f), false))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -117f) * _wgslsmith_div_f32(-924f, -1303f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), -311f))));
    let var_2 = u_input.d.yx;
    let x = u_input.a;
    s_output = func_2(u_input.e);
}

