struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_2(Struct_1(vec4<u32>(0u, 0u, 20589u, 1u), vec3<bool>(true, false, false)), vec4<f32>(1361f, -398f, -491f, -185f), vec2<u32>(75949u, 1u)), 2354f, 23726u, Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 39862u), vec3<bool>(false, true, true)), vec4<f32>(270f, 1311f, -354f, 1000f), vec2<u32>(4294967295u, 68156u)));

var<private> global1: vec2<f32> = vec2<f32>(794f, 1348f);

var<private> global2: array<Struct_5, 16> = array<Struct_5, 16>(Struct_5(Struct_2(Struct_1(vec4<u32>(56144u, 16599u, 0u, 62130u), vec3<bool>(false, true, true)), vec4<f32>(-1129f, 255f, -261f, 382f), vec2<u32>(20747u, 4294967295u)), 904f, 1u, Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 1u, 0u), vec3<bool>(false, true, true)), vec4<f32>(325f, -1389f, 453f, 623f), vec2<u32>(13219u, 86964u))), Struct_5(Struct_2(Struct_1(vec4<u32>(1u, 85822u, 1u, 4294967295u), vec3<bool>(true, true, false)), vec4<f32>(1630f, -664f, -1109f, 958f), vec2<u32>(4294967295u, 4294967295u)), -1670f, 20142u, Struct_2(Struct_1(vec4<u32>(0u, 53973u, 1u, 30150u), vec3<bool>(true, false, false)), vec4<f32>(-200f, -1000f, -1297f, 924f), vec2<u32>(4294967295u, 1u))), Struct_5(Struct_2(Struct_1(vec4<u32>(1392u, 84810u, 1u, 1u), vec3<bool>(true, true, true)), vec4<f32>(-1429f, -1569f, 1519f, -634f), vec2<u32>(6534u, 7043u)), 122f, 20674u, Struct_2(Struct_1(vec4<u32>(1u, 31307u, 1u, 54560u), vec3<bool>(true, true, false)), vec4<f32>(358f, 1332f, -721f, 795f), vec2<u32>(4294967295u, 2090u))), Struct_5(Struct_2(Struct_1(vec4<u32>(5142u, 4294967295u, 57976u, 7551u), vec3<bool>(true, true, false)), vec4<f32>(1090f, 1416f, -1363f, 1941f), vec2<u32>(1u, 102791u)), 1395f, 0u, Struct_2(Struct_1(vec4<u32>(1u, 9529u, 10920u, 36523u), vec3<bool>(false, true, false)), vec4<f32>(358f, 1628f, -478f, 1639f), vec2<u32>(4294967295u, 44311u))), Struct_5(Struct_2(Struct_1(vec4<u32>(0u, 1u, 0u, 1u), vec3<bool>(true, false, false)), vec4<f32>(757f, -1998f, 295f, -1202f), vec2<u32>(50618u, 0u)), -966f, 1u, Struct_2(Struct_1(vec4<u32>(4294967295u, 31006u, 37744u, 20555u), vec3<bool>(true, false, true)), vec4<f32>(-760f, 176f, 271f, 1033f), vec2<u32>(1u, 4294967295u))), Struct_5(Struct_2(Struct_1(vec4<u32>(18776u, 25903u, 0u, 4294967295u), vec3<bool>(false, false, true)), vec4<f32>(252f, -636f, -1668f, 535f), vec2<u32>(1u, 1u)), -1766f, 6092u, Struct_2(Struct_1(vec4<u32>(11806u, 1u, 19740u, 4294967295u), vec3<bool>(false, false, true)), vec4<f32>(1014f, -781f, 1141f, 214f), vec2<u32>(5483u, 0u))), Struct_5(Struct_2(Struct_1(vec4<u32>(25171u, 21035u, 11763u, 4294967295u), vec3<bool>(false, true, true)), vec4<f32>(-656f, 654f, 622f, 632f), vec2<u32>(17843u, 73683u)), 1220f, 0u, Struct_2(Struct_1(vec4<u32>(1u, 1u, 1u, 24177u), vec3<bool>(false, true, false)), vec4<f32>(2849f, 1388f, 347f, -219f), vec2<u32>(5914u, 48887u))), Struct_5(Struct_2(Struct_1(vec4<u32>(4294967295u, 35249u, 1u, 4294967295u), vec3<bool>(true, false, true)), vec4<f32>(106f, 2012f, -896f, 544f), vec2<u32>(29691u, 4294967295u)), -1136f, 46354u, Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec3<bool>(false, false, true)), vec4<f32>(290f, -1175f, -799f, 469f), vec2<u32>(1u, 4294967295u))), Struct_5(Struct_2(Struct_1(vec4<u32>(13431u, 33359u, 17870u, 0u), vec3<bool>(true, false, false)), vec4<f32>(-668f, 664f, 286f, 847f), vec2<u32>(24288u, 46002u)), -201f, 74857u, Struct_2(Struct_1(vec4<u32>(16926u, 26677u, 60478u, 64545u), vec3<bool>(true, false, false)), vec4<f32>(-146f, -1965f, 1644f, -540f), vec2<u32>(32239u, 101101u))), Struct_5(Struct_2(Struct_1(vec4<u32>(0u, 46737u, 1u, 107351u), vec3<bool>(true, false, false)), vec4<f32>(-1544f, 204f, 1443f, -1826f), vec2<u32>(4294967295u, 10161u)), -1051f, 4294967295u, Struct_2(Struct_1(vec4<u32>(33359u, 4294967295u, 13694u, 4294967295u), vec3<bool>(true, false, true)), vec4<f32>(920f, -889f, 721f, 1119f), vec2<u32>(1u, 1u))), Struct_5(Struct_2(Struct_1(vec4<u32>(17495u, 31407u, 19157u, 68785u), vec3<bool>(true, true, false)), vec4<f32>(1386f, 194f, 323f, -128f), vec2<u32>(38762u, 46614u)), -432f, 23765u, Struct_2(Struct_1(vec4<u32>(0u, 61947u, 102836u, 1u), vec3<bool>(true, true, false)), vec4<f32>(1087f, -643f, 1081f, 408f), vec2<u32>(204u, 51973u))), Struct_5(Struct_2(Struct_1(vec4<u32>(19262u, 20694u, 24800u, 0u), vec3<bool>(true, false, false)), vec4<f32>(-957f, 851f, 1025f, 778f), vec2<u32>(1u, 26051u)), -1126f, 0u, Struct_2(Struct_1(vec4<u32>(4294967295u, 39061u, 3059u, 45814u), vec3<bool>(true, false, false)), vec4<f32>(-748f, -311f, -137f, -1505f), vec2<u32>(70608u, 0u))), Struct_5(Struct_2(Struct_1(vec4<u32>(4294967295u, 68740u, 22655u, 35599u), vec3<bool>(true, false, true)), vec4<f32>(-689f, 1174f, 1157f, -1000f), vec2<u32>(1u, 336u)), 1292f, 1u, Struct_2(Struct_1(vec4<u32>(37355u, 46346u, 54836u, 29371u), vec3<bool>(false, false, true)), vec4<f32>(464f, -1836f, -1249f, 1000f), vec2<u32>(19953u, 108652u))), Struct_5(Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 0u, 3953u), vec3<bool>(false, false, false)), vec4<f32>(-1196f, -1288f, -1011f, 631f), vec2<u32>(45703u, 4294967295u)), -983f, 89463u, Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 1u, 62369u), vec3<bool>(false, true, false)), vec4<f32>(694f, -919f, -394f, -346f), vec2<u32>(4294967295u, 80046u))), Struct_5(Struct_2(Struct_1(vec4<u32>(1018u, 8367u, 1u, 35461u), vec3<bool>(true, false, false)), vec4<f32>(-1796f, 323f, -443f, 861f), vec2<u32>(1u, 41735u)), -2277f, 0u, Struct_2(Struct_1(vec4<u32>(48669u, 1958u, 4294967295u, 0u), vec3<bool>(true, false, true)), vec4<f32>(512f, -1911f, 724f, -1419f), vec2<u32>(4294967295u, 1u))), Struct_5(Struct_2(Struct_1(vec4<u32>(26645u, 43632u, 54770u, 4294967295u), vec3<bool>(true, false, true)), vec4<f32>(1000f, -1245f, 993f, 618f), vec2<u32>(37004u, 4294967295u)), -327f, 1u, Struct_2(Struct_1(vec4<u32>(4294967295u, 43436u, 4294967295u, 2284u), vec3<bool>(true, false, true)), vec4<f32>(1000f, -1726f, -198f, 1079f), vec2<u32>(9941u, 73422u))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_3 {
    return Struct_3(min(~global0.d.a.a.wxz, _wgslsmith_sub_vec3_u32(vec3<u32>(9645u, global0.a.a.a.x, 56606u) >> (global0.d.a.a.xxw % vec3<u32>(32u)), ~global0.a.a.a.xxx) >> ((vec3<u32>(global0.d.c.x, 0u, global0.c) | vec3<u32>(global0.c, global0.c, global0.c)) % vec3<u32>(32u))), global0.c, global0.d.a, 57083u);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> vec2<bool> {
    global0 = Struct_5(Struct_2(func_2().c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(177f, 229f, arg_1, 1000f))), global0.a.b)), arg_2.c.a.zx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, global1.x)) * -141f)))), 42351u, global0.a);
    global0 = global2[_wgslsmith_index_u32(arg_0.a.x, 16u)];
    var var_0 = Struct_2(arg_2.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-360f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global1.x)))), -555f, _wgslsmith_f_op_f32(max(169f, _wgslsmith_f_op_f32(floor(arg_1)))))), global0.a.a.a.zz);
    let var_1 = func_2();
    global0 = Struct_5(global0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * -760f) + global0.d.b.x) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.b.x, global0.a.b.x, arg_0.c.b.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * arg_1), -3696f, any(select(var_1.c.b.zx, var_0.a.b.zx, var_1.c.b.yy))))), abs(~(var_1.b & 1u)), global0.d);
    return !vec2<bool>(true, all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, var_0.a.b.x, false), any(vec2<bool>(true, true)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec2_f32(select(global0.a.b.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a.b.yx + global0.d.b.yz)), _wgslsmith_f_op_vec2_f32(global0.a.b.xy + _wgslsmith_div_vec2_f32(vec2<f32>(965f, global1.x), vec2<f32>(640f, global0.d.b.x))), func_3(Struct_3(vec3<u32>(global0.c, 1u, 9968u), global0.c, Struct_1(vec4<u32>(124851u, global0.c, global0.d.c.x, 22236u), global0.d.a.b), 52019u), 1357f, func_2())))), any(vec3<bool>(true | all(vec2<bool>(false, global0.a.a.b.x)), !any(vec3<bool>(false, arg_0.x, global0.a.a.b.x)), true))));
    var var_0 = -2147483647i;
    var var_1 = ~global0.d.a.a.xy;
    global0 = Struct_5(Struct_2(func_2().c, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(-815f, -921f), 443f, global0.a.b.x, _wgslsmith_f_op_f32(ceil(global1.x))))), global0.d.c << (global0.d.c % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -456f)) - global1.x), func_2().c.a.x & ~(~(~global0.d.c.x)), Struct_2(Struct_1(reverseBits(global0.d.a.a), global0.d.a.b), global0.a.b, _wgslsmith_sub_vec2_u32(global0.a.a.a.xw, _wgslsmith_add_vec2_u32(~vec2<u32>(8488u, global0.a.a.a.x), ~vec2<u32>(var_1.x, var_1.x)))));
    global0 = global2[_wgslsmith_index_u32(global0.a.c.x, 16u)];
    return Struct_1(~firstLeadingBit(vec4<u32>(firstTrailingBit(1u), ~0u, ~1u, 28652u)), global0.d.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1026f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -177f)));
    let var_1 = global0.a.a;
    let var_2 = ~vec3<i32>(-_wgslsmith_sub_i32(u_input.c.x << (33751u % 32u), u_input.e), (~49751i ^ ~u_input.e) ^ _wgslsmith_div_i32(-14054i, -1i), -u_input.b.x);
    var var_3 = ~(~var_1.a.xw);
    var var_4 = 1966f;
    let var_5 = func_1(!(!(!global0.a.a.b.zz)), ~var_2);
    var var_6 = _wgslsmith_mod_vec4_u32(var_1.a, global0.a.a.a);
    var_4 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1000f, _wgslsmith_f_op_f32(trunc(-1357f)), global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b))), _wgslsmith_f_op_f32(f32(-1f) * -1094f))), -vec3<i32>(select(u_input.c.x, 1i, var_1.b.x && true), -u_input.c.x, 0i));
}

