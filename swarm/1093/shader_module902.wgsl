struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec3<f32>(1510f, -416f, -347f)), vec2<f32>(-1020f, -779f), Struct_1(vec3<f32>(-782f, 309f, -689f)), -42921i), Struct_2(Struct_1(vec3<f32>(-1116f, -238f, 442f)), vec2<f32>(-979f, 1359f), Struct_1(vec3<f32>(663f, -452f, 1000f)), 43058i), Struct_2(Struct_1(vec3<f32>(-827f, -1858f, -1554f)), vec2<f32>(551f, 528f), Struct_1(vec3<f32>(463f, 905f, -369f)), i32(-2147483648)), Struct_2(Struct_1(vec3<f32>(995f, -600f, -524f)), vec2<f32>(-2018f, -934f), Struct_1(vec3<f32>(577f, -169f, -1420f)), -47524i), Struct_2(Struct_1(vec3<f32>(1826f, -1371f, -696f)), vec2<f32>(1421f, 641f), Struct_1(vec3<f32>(-349f, 397f, 851f)), 2147483647i), Struct_2(Struct_1(vec3<f32>(708f, -1000f, 595f)), vec2<f32>(-213f, 907f), Struct_1(vec3<f32>(590f, -1318f, 1350f)), 2147483647i), Struct_2(Struct_1(vec3<f32>(663f, 747f, -1908f)), vec2<f32>(950f, -2003f), Struct_1(vec3<f32>(-552f, 2343f, -1185f)), 1i), Struct_2(Struct_1(vec3<f32>(1295f, -898f, 481f)), vec2<f32>(-456f, -1159f), Struct_1(vec3<f32>(1216f, -1481f, 1780f)), 2147483647i), Struct_2(Struct_1(vec3<f32>(1000f, 1000f, 152f)), vec2<f32>(1000f, 1795f), Struct_1(vec3<f32>(872f, 443f, 151f)), -1i), Struct_2(Struct_1(vec3<f32>(-1074f, -2050f, 1017f)), vec2<f32>(-203f, 1204f), Struct_1(vec3<f32>(1731f, -596f, 1560f)), 1i), Struct_2(Struct_1(vec3<f32>(-641f, 175f, 742f)), vec2<f32>(136f, 2667f), Struct_1(vec3<f32>(-973f, -1054f, -418f)), 44981i), Struct_2(Struct_1(vec3<f32>(1392f, 485f, -1000f)), vec2<f32>(705f, 1000f), Struct_1(vec3<f32>(-2037f, 1440f, 200f)), 1i), Struct_2(Struct_1(vec3<f32>(-438f, 785f, -226f)), vec2<f32>(150f, 1000f), Struct_1(vec3<f32>(-656f, -189f, -693f)), 27884i), Struct_2(Struct_1(vec3<f32>(-121f, -152f, 1000f)), vec2<f32>(1866f, 1030f), Struct_1(vec3<f32>(-1470f, 505f, 496f)), -35289i), Struct_2(Struct_1(vec3<f32>(-551f, -737f, -1018f)), vec2<f32>(-897f, 3036f), Struct_1(vec3<f32>(-201f, -129f, -750f)), 31745i), Struct_2(Struct_1(vec3<f32>(267f, -845f, 428f)), vec2<f32>(360f, -361f), Struct_1(vec3<f32>(510f, -540f, -315f)), 1i), Struct_2(Struct_1(vec3<f32>(-1138f, -1240f, 500f)), vec2<f32>(-1001f, 477f), Struct_1(vec3<f32>(-327f, -1196f, -530f)), -13943i), Struct_2(Struct_1(vec3<f32>(332f, -243f, -113f)), vec2<f32>(1127f, -515f), Struct_1(vec3<f32>(234f, -743f, 454f)), 10039i), Struct_2(Struct_1(vec3<f32>(2301f, -1036f, -2628f)), vec2<f32>(-548f, -1728f), Struct_1(vec3<f32>(651f, -1270f, -532f)), -4238i), Struct_2(Struct_1(vec3<f32>(-552f, 2060f, 907f)), vec2<f32>(-1291f, -840f), Struct_1(vec3<f32>(-1910f, -429f, -491f)), -3436i), Struct_2(Struct_1(vec3<f32>(1636f, 269f, 999f)), vec2<f32>(-580f, 1300f), Struct_1(vec3<f32>(867f, 1042f, 216f)), -1i), Struct_2(Struct_1(vec3<f32>(168f, 449f, -526f)), vec2<f32>(677f, 443f), Struct_1(vec3<f32>(293f, -1285f, -252f)), -49294i), Struct_2(Struct_1(vec3<f32>(-745f, -650f, 164f)), vec2<f32>(-1468f, 2585f), Struct_1(vec3<f32>(-707f, -1867f, 1000f)), -7578i), Struct_2(Struct_1(vec3<f32>(-1280f, 1093f, -568f)), vec2<f32>(2238f, 324f), Struct_1(vec3<f32>(1568f, 295f, 119f)), 1i), Struct_2(Struct_1(vec3<f32>(-534f, 896f, -1358f)), vec2<f32>(-1000f, 1614f), Struct_1(vec3<f32>(284f, 315f, -731f)), 2147483647i), Struct_2(Struct_1(vec3<f32>(-1726f, -1029f, 1002f)), vec2<f32>(763f, -1313f), Struct_1(vec3<f32>(-1000f, 701f, -1000f)), -1i), Struct_2(Struct_1(vec3<f32>(-468f, -1000f, 1457f)), vec2<f32>(-1660f, -695f), Struct_1(vec3<f32>(286f, -1375f, 153f)), 1i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> i32 {
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.d.x, 27u)];
    var var_1 = var_0.a;
    return ~(-116131i);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = arg_1.x;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, -109f, var_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, arg_1.x, var_0)))))), vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-167f))) + -336f)), Struct_1(arg_1), firstLeadingBit(func_1() ^ -2147483647i));
}

fn func_3() -> vec4<u32> {
    global0 = array<Struct_2, 27>();
    var var_0 = ~(u_input.a >> (~(countOneBits(vec4<u32>(u_input.d.x, 4294967295u, u_input.c, 1u)) >> ((vec4<u32>(u_input.d.x, 35865u, 0u, u_input.c) >> (vec4<u32>(u_input.d.x, 46469u, 41910u, 7606u) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-521f - 441f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(984f + 1436f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(826f * -784f))), -623f));
    var var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.c, u_input.d.x), 40612u, ~12877u, _wgslsmith_clamp_u32(u_input.c, 17332u, 8949u)), abs(select(vec4<u32>(4294967295u, 22231u, u_input.c, 0u), vec4<u32>(26397u, u_input.d.x, 5170u, 0u), false))), vec4<u32>(_wgslsmith_clamp_u32(0u, u_input.d.x, ~0u), ~u_input.d.x, u_input.c, ~u_input.d.x & 4294967295u)) ^ max(vec4<u32>(~4294967295u, u_input.d.x, ~u_input.d.x, 0u) >> (~(~vec4<u32>(u_input.d.x, 0u, u_input.c, u_input.c)) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.c, 1u, 53667u, u_input.c)));
    let var_3 = var_1.a;
    return ~_wgslsmith_div_vec4_u32(~(~max(vec4<u32>(0u, u_input.c, 4294967295u, u_input.c), vec4<u32>(47208u, var_2.x, 0u, var_2.x))), vec4<u32>(0u, u_input.d.x >> (1u % 32u), var_2.x, var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(u_input.d.x >> ((~(~select(u_input.d.x, 5618u, true)) << (0u % 32u)) % 32u), 27u)];
    var var_1 = global0[_wgslsmith_index_u32(u_input.c, 27u)];
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a.x, -596f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.a.x) + _wgslsmith_f_op_f32(floor(-630f))))));
    let var_3 = vec3<bool>(true, !any(vec3<bool>(true, true, true)) && !(func_1() < 59682i), select(false, all(vec2<bool>(true, all(vec3<bool>(true, true, false)))), true));
    var_1 = func_2(~vec4<u32>(reverseBits(u_input.d.x) & u_input.d.x, 12933u, 49153u, u_input.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_0.c.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2044f, -547f))), var_0.a.a.x) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-174f, 612f)), -124f, 695f)));
    var var_4 = Struct_2(func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.c, 33025u), u_input.c, u_input.c | u_input.c, 28854u), func_3(), vec4<u32>(u_input.d.x, _wgslsmith_clamp_u32(u_input.c, u_input.c, 1u), 1u, ~u_input.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1296f, 477f, var_0.a.a.x), _wgslsmith_f_op_vec3_f32(var_1.a.a + var_0.c.a), !var_3.x)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-485f, 178f, var_0.c.a.x))))))).c, var_2.a.yz, func_2(~vec4<u32>(~0u, select(18305u, 15159u, var_3.x), ~4294967295u, abs(u_input.d.x)), vec3<f32>(var_2.a.x, -1000f, var_0.a.a.x)).a, func_2(vec4<u32>(~25293u, ~(~u_input.c), ~(~u_input.d.x), ~(u_input.d.x | u_input.c)), var_2.a).d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, 1u, 1u), countOneBits(vec4<u32>(u_input.d.x, u_input.c, u_input.d.x, u_input.c)) | ~vec4<u32>(44463u, 1u, 0u, 1u)), vec4<u32>(0u, ~(~u_input.c), u_input.d.x << (min(0u, 4294967295u) % 32u), 89320u)), vec4<i32>(~firstTrailingBit(u_input.b) & var_0.d, 1i, max(func_1(), u_input.a.x), -11423i), vec4<u32>(12711u, 0u & u_input.c, u_input.c, firstLeadingBit(_wgslsmith_clamp_u32(u_input.d.x, firstLeadingBit(u_input.c), u_input.c))));
}

