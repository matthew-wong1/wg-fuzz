struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 6116u, 0u, 0u);

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 13687u)), 0u, vec3<bool>(false, true, true)), Struct_1(vec2<u32>(0u, 4294967295u)), vec4<f32>(-827f, -535f, -1000f, -1914f), vec3<u32>(4294967295u, 1u, 21937u)), Struct_3(Struct_2(Struct_1(vec2<u32>(39549u, 0u)), 1u, vec3<bool>(true, false, true)), Struct_1(vec2<u32>(26349u, 0u)), vec4<f32>(519f, -594f, -394f, 1332f), vec3<u32>(27935u, 1u, 40228u)), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 5810u)), 0u, vec3<bool>(true, true, true)), Struct_1(vec2<u32>(9364u, 1u)), vec4<f32>(274f, -1088f, -263f, 153f), vec3<u32>(0u, 1u, 26917u)), Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 118605u)), 4294967295u, vec3<bool>(true, false, false)), Struct_1(vec2<u32>(0u, 8680u)), vec4<f32>(-659f, 963f, 431f, -1000f), vec3<u32>(0u, 1u, 0u)), Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 33558u)), 1u, vec3<bool>(true, true, true)), Struct_1(vec2<u32>(49597u, 1u)), vec4<f32>(1086f, 900f, 430f, -324f), vec3<u32>(1u, 48335u, 1u)), Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 38612u)), 4294967295u, vec3<bool>(false, true, true)), Struct_1(vec2<u32>(32351u, 31547u)), vec4<f32>(-1085f, -1000f, 137f, 586f), vec3<u32>(71260u, 15760u, 4294967295u)), Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 1u)), 32535u, vec3<bool>(true, false, true)), Struct_1(vec2<u32>(4767u, 0u)), vec4<f32>(169f, -308f, -962f, -913f), vec3<u32>(1u, 0u, 1u)), Struct_3(Struct_2(Struct_1(vec2<u32>(43824u, 27231u)), 93501u, vec3<bool>(false, true, false)), Struct_1(vec2<u32>(26860u, 1u)), vec4<f32>(-204f, -1045f, -1588f, 1928f), vec3<u32>(8261u, 4294967295u, 0u)), Struct_3(Struct_2(Struct_1(vec2<u32>(17259u, 0u)), 91945u, vec3<bool>(false, true, false)), Struct_1(vec2<u32>(1u, 0u)), vec4<f32>(-503f, -660f, -698f, 796f), vec3<u32>(1u, 1u, 0u)), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 0u)), 42333u, vec3<bool>(false, true, true)), Struct_1(vec2<u32>(4294967295u, 5521u)), vec4<f32>(581f, -505f, 1143f, 331f), vec3<u32>(13995u, 0u, 0u)), Struct_3(Struct_2(Struct_1(vec2<u32>(17780u, 11521u)), 53989u, vec3<bool>(true, true, false)), Struct_1(vec2<u32>(28213u, 44168u)), vec4<f32>(-903f, 961f, 908f, -556f), vec3<u32>(13334u, 52454u, 0u)), Struct_3(Struct_2(Struct_1(vec2<u32>(13316u, 8012u)), 0u, vec3<bool>(true, true, true)), Struct_1(vec2<u32>(81370u, 4294967295u)), vec4<f32>(850f, 160f, 645f, -1482f), vec3<u32>(4294967295u, 1u, 33295u)), Struct_3(Struct_2(Struct_1(vec2<u32>(40260u, 71580u)), 1u, vec3<bool>(true, false, true)), Struct_1(vec2<u32>(4294967295u, 67512u)), vec4<f32>(-524f, 1305f, -610f, 681f), vec3<u32>(4294967295u, 23897u, 0u)), Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 15353u)), 94461u, vec3<bool>(true, true, true)), Struct_1(vec2<u32>(4294967295u, 66174u)), vec4<f32>(761f, 1734f, 1000f, -115f), vec3<u32>(1u, 4294967295u, 61873u)), Struct_3(Struct_2(Struct_1(vec2<u32>(97207u, 24252u)), 35009u, vec3<bool>(false, true, true)), Struct_1(vec2<u32>(0u, 85595u)), vec4<f32>(-143f, 1797f, 1017f, 317f), vec3<u32>(1u, 45988u, 28422u)), Struct_3(Struct_2(Struct_1(vec2<u32>(29509u, 2406u)), 1u, vec3<bool>(false, false, false)), Struct_1(vec2<u32>(8799u, 1u)), vec4<f32>(1000f, -1742f, 603f, 2386f), vec3<u32>(71509u, 0u, 10397u)), Struct_3(Struct_2(Struct_1(vec2<u32>(40223u, 7402u)), 21660u, vec3<bool>(true, false, false)), Struct_1(vec2<u32>(46096u, 1u)), vec4<f32>(-1155f, 1047f, 459f, 594f), vec3<u32>(78725u, 0u, 8590u)), Struct_3(Struct_2(Struct_1(vec2<u32>(8983u, 4294967295u)), 101390u, vec3<bool>(true, false, true)), Struct_1(vec2<u32>(4294967295u, 0u)), vec4<f32>(-2389f, 2405f, -468f, -732f), vec3<u32>(4294967295u, 17355u, 50126u)), Struct_3(Struct_2(Struct_1(vec2<u32>(10973u, 72466u)), 4294967295u, vec3<bool>(false, true, false)), Struct_1(vec2<u32>(37075u, 4294967295u)), vec4<f32>(-873f, 1099f, -954f, -914f), vec3<u32>(42157u, 42422u, 1991u)), Struct_3(Struct_2(Struct_1(vec2<u32>(65187u, 20350u)), 1u, vec3<bool>(false, false, true)), Struct_1(vec2<u32>(22348u, 4294967295u)), vec4<f32>(-592f, -739f, 411f, 732f), vec3<u32>(30919u, 0u, 1789u)), Struct_3(Struct_2(Struct_1(vec2<u32>(33368u, 23067u)), 31079u, vec3<bool>(true, true, false)), Struct_1(vec2<u32>(62302u, 4294967295u)), vec4<f32>(-549f, -1620f, -904f, -578f), vec3<u32>(10340u, 20303u, 4294967295u)), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 4294967295u)), 35203u, vec3<bool>(true, false, false)), Struct_1(vec2<u32>(26421u, 0u)), vec4<f32>(-444f, -1000f, -1196f, 219f), vec3<u32>(15155u, 33910u, 0u)), Struct_3(Struct_2(Struct_1(vec2<u32>(16350u, 15823u)), 23678u, vec3<bool>(false, true, true)), Struct_1(vec2<u32>(4294967295u, 13527u)), vec4<f32>(-701f, 205f, -1225f, 789f), vec3<u32>(121450u, 0u, 66404u)));

var<private> global2: bool;

var<private> global3: f32 = 701f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    var var_0 = -vec4<i32>(abs(u_input.b.x), -2147483647i, ~(~(-2147483647i)) >> (_wgslsmith_sub_u32(~global0.x, 1u) % 32u), -61674i);
    global3 = -118f;
    return -552f;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, global0.x), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 15548u) & global0.wz, vec2<u32>(0u, 54498u))) >> (global0.zw % vec2<u32>(32u)));
    let var_1 = ~22732u;
    global1 = array<Struct_3, 23>();
    global3 = _wgslsmith_f_op_f32(func_3(~vec4<u32>(var_0.a.x, _wgslsmith_add_u32(global0.x, global0.x >> (var_0.a.x % 32u)), 1u, ~_wgslsmith_clamp_u32(global0.x, 0u, var_1))));
    var var_2 = vec2<f32>(-690f, 637f);
    return var_1;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = arg_1.a;
    var var_1 = Struct_3(Struct_2(Struct_1(~(vec2<u32>(81346u, global0.x) ^ arg_1.b.a)), ~37783u, arg_1.a.c), Struct_1(select(vec2<u32>(4294967295u, global0.x) >> (var_0.a.a % vec2<u32>(32u)), reverseBits(vec2<u32>(global0.x, global0.x)) | (vec2<u32>(global0.x, 134621u) ^ vec2<u32>(4294967295u, 4294967295u)), true)), _wgslsmith_f_op_vec4_f32(-arg_1.c), ~(_wgslsmith_mod_vec3_u32(firstTrailingBit(global0.yyy), arg_1.d) >> (global0.yxy % vec3<u32>(32u))));
    let var_2 = select(!(!(!arg_1.a.c.zy)), select(!vec2<bool>(var_1.a.c.x, var_0.c.x), select(vec2<bool>(-1i == u_input.b.x, var_0.c.x), vec2<bool>(true, true), vec2<bool>(true, false)), select(true, true, var_0.c.x)), arg_1.a.c.zz);
    var var_3 = u_input.b.x & (abs(u_input.b.x) & (min(min(u_input.b.x, 2770i), ~u_input.b.x) << (min(~4294967295u, _wgslsmith_sub_u32(arg_1.d.x, 43504u)) % 32u)));
    var var_4 = arg_0.x;
    return var_1.a.a;
}

fn func_1() -> vec4<u32> {
    let var_0 = func_4(~(global0.xx >> (vec2<u32>(firstTrailingBit(1117u), 4294967295u) % vec2<u32>(32u))), Struct_3(Struct_2(Struct_1(~global0.wz), global0.x, vec3<bool>(true, false, u_input.b.x != u_input.b.x)), Struct_1(vec2<u32>(global0.x, func_2())), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1090f, 977f, 296f, 757f)), vec4<f32>(_wgslsmith_div_f32(-1978f, -791f), 981f, _wgslsmith_f_op_f32(floor(1530f)), _wgslsmith_f_op_f32(select(-124f, -110f, true)))), abs(_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, 0u, global0.x) & global0.wzw, _wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, 0u, global0.x), vec3<u32>(1061u, global0.x, global0.x))))));
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(countOneBits(~vec4<u32>(14525u, global0.x, var_0.a.x, var_0.a.x))), ~vec4<u32>(var_0.a.x, _wgslsmith_sub_u32(var_0.a.x, 4294967295u), ~95868u, max(var_0.a.x, 1u))), vec4<u32>(0u, global0.x, 1u & ~(~var_0.a.x), ~_wgslsmith_mult_u32(var_0.a.x, 4294967295u) | var_0.a.x), vec4<u32>(4294967295u, var_0.a.x, _wgslsmith_mod_u32(75210u, global0.x) & abs(var_0.a.x), _wgslsmith_mod_u32(~global0.x, 1u)) << (countOneBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<u32>(global0.x, 0u, var_0.a.x, 49049u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 23>();
    global2 = false;
    global0 = func_1();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1404f, _wgslsmith_f_op_f32(1516f * -231f), false)));
    var var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i), var_0, -firstTrailingBit(28224i), _wgslsmith_add_vec2_i32(vec2<i32>(abs(u_input.a), ~(-13205i | u_input.b.x)), u_input.b.xz), firstTrailingBit(-12367i));
}

