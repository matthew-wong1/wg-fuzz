struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(vec2<bool>(false, false), Struct_1(1u, vec2<u32>(1u, 0u), true, -1038f), Struct_2(Struct_1(4294967295u, vec2<u32>(0u, 103448u), true, -512f), Struct_1(4293u, vec2<u32>(62942u, 4294967295u), true, -682f), vec4<f32>(-559f, 1000f, -1457f, 636f))), Struct_4(vec2<bool>(true, true), Struct_1(1u, vec2<u32>(36826u, 20763u), false, 713f), Struct_2(Struct_1(4294967295u, vec2<u32>(0u, 0u), true, -759f), Struct_1(4294967295u, vec2<u32>(43325u, 9388u), false, 994f), vec4<f32>(-594f, -1176f, -925f, -386f))), Struct_4(vec2<bool>(false, true), Struct_1(1u, vec2<u32>(4294967295u, 1u), true, -296f), Struct_2(Struct_1(1u, vec2<u32>(0u, 53912u), true, 729f), Struct_1(1u, vec2<u32>(4294967295u, 24236u), true, -244f), vec4<f32>(736f, -669f, 1709f, 280f))), Struct_4(vec2<bool>(false, true), Struct_1(1u, vec2<u32>(0u, 1u), true, -1000f), Struct_2(Struct_1(61613u, vec2<u32>(29347u, 4294967295u), true, 635f), Struct_1(1u, vec2<u32>(4294967295u, 38493u), false, -1000f), vec4<f32>(669f, 960f, -104f, 873f))), Struct_4(vec2<bool>(true, false), Struct_1(43365u, vec2<u32>(17844u, 1u), true, 2127f), Struct_2(Struct_1(47524u, vec2<u32>(30561u, 4294967295u), false, 560f), Struct_1(34902u, vec2<u32>(4294967295u, 17572u), false, 830f), vec4<f32>(-640f, -299f, -1749f, 141f))), Struct_4(vec2<bool>(false, false), Struct_1(54832u, vec2<u32>(1u, 4294967295u), true, -310f), Struct_2(Struct_1(4294967295u, vec2<u32>(4294967295u, 0u), true, -927f), Struct_1(23520u, vec2<u32>(1u, 63297u), true, 1000f), vec4<f32>(1576f, -1000f, -1640f, -606f))), Struct_4(vec2<bool>(false, true), Struct_1(4117u, vec2<u32>(18066u, 22085u), false, 806f), Struct_2(Struct_1(4294967295u, vec2<u32>(0u, 0u), true, -2179f), Struct_1(22443u, vec2<u32>(4294967295u, 6921u), true, -1321f), vec4<f32>(1000f, -347f, 1711f, 896f))), Struct_4(vec2<bool>(false, true), Struct_1(88879u, vec2<u32>(37094u, 1u), true, 1064f), Struct_2(Struct_1(0u, vec2<u32>(1u, 18617u), true, 141f), Struct_1(41817u, vec2<u32>(4294967295u, 4294967295u), true, 395f), vec4<f32>(1000f, 1000f, 110f, -1668f))), Struct_4(vec2<bool>(true, false), Struct_1(1u, vec2<u32>(79888u, 1u), true, 1530f), Struct_2(Struct_1(95039u, vec2<u32>(1u, 1u), false, 1249f), Struct_1(4294967295u, vec2<u32>(4294967295u, 61660u), false, 584f), vec4<f32>(-441f, -1921f, 862f, -1282f))), Struct_4(vec2<bool>(false, true), Struct_1(20790u, vec2<u32>(4294967295u, 19548u), false, -111f), Struct_2(Struct_1(21007u, vec2<u32>(1u, 13500u), false, 667f), Struct_1(1u, vec2<u32>(0u, 0u), true, 1000f), vec4<f32>(1000f, 1039f, -1441f, 606f))), Struct_4(vec2<bool>(false, true), Struct_1(1u, vec2<u32>(4294967295u, 25439u), false, 305f), Struct_2(Struct_1(41596u, vec2<u32>(70612u, 89001u), true, 574f), Struct_1(4294967295u, vec2<u32>(24330u, 442u), true, -793f), vec4<f32>(-539f, -1614f, -629f, 614f))), Struct_4(vec2<bool>(false, false), Struct_1(37779u, vec2<u32>(1269u, 0u), false, 720f), Struct_2(Struct_1(323u, vec2<u32>(100442u, 34726u), false, -610f), Struct_1(75087u, vec2<u32>(0u, 1u), false, 644f), vec4<f32>(1000f, -928f, 657f, 1462f))), Struct_4(vec2<bool>(false, false), Struct_1(60518u, vec2<u32>(0u, 27932u), true, 1251f), Struct_2(Struct_1(4294967295u, vec2<u32>(70143u, 1575u), false, 1051f), Struct_1(24757u, vec2<u32>(4294967295u, 81687u), true, -479f), vec4<f32>(1410f, -200f, -1280f, 148f))), Struct_4(vec2<bool>(true, false), Struct_1(23625u, vec2<u32>(2971u, 4294967295u), false, 671f), Struct_2(Struct_1(37413u, vec2<u32>(4294967295u, 4294967295u), true, 609f), Struct_1(77795u, vec2<u32>(30438u, 1u), false, 1266f), vec4<f32>(-1131f, 2754f, 406f, -281f))));

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    global0 = array<Struct_4, 14>();
    let var_0 = select(vec2<i32>(-19594i, abs(u_input.d.x << (~4294967295u % 32u))), -(-(u_input.d.wx << (vec2<u32>(0u, 69668u) % vec2<u32>(32u))) >> (countOneBits(vec2<u32>(1u, 0u)) % vec2<u32>(32u))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(global1.x, true), vec2<bool>(false, global1.x), true)), vec2<bool>(true, true), vec2<bool>(false | !global1.x, true)));
    var var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u, ~u_input.b), reverseBits(_wgslsmith_clamp_u32(0u, ~u_input.b, _wgslsmith_div_u32(65820u, 1u))), countOneBits(select(9462u, ~u_input.b, global1.x || global1.x)))), 14u)];
    var var_2 = -_wgslsmith_clamp_i32(firstLeadingBit(~(~var_0.x)), -(_wgslsmith_sub_i32(5101i, u_input.d.x) & -12641i), var_0.x);
    let var_3 = Struct_1(_wgslsmith_div_u32(1u, countOneBits(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, u_input.a.x, var_1.b.a, u_input.a.x)), vec4<u32>(0u, u_input.a.x, var_1.b.a, 29928u)))), ~select(u_input.a, countOneBits(vec2<u32>(var_1.c.b.b.x, 46754u)), var_1.a), any(select(vec4<bool>(var_1.b.b.x > var_1.c.a.a, any(vec3<bool>(false, false, true)), global1.x, true), !select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(var_1.c.a.c, var_1.b.c, true, global1.x), vec4<bool>(var_1.c.b.c, true, false, false)), select(global1.x || var_1.b.c, any(vec2<bool>(false, false)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-138f * _wgslsmith_f_op_f32(var_1.b.d * -897f)), _wgslsmith_f_op_f32(-var_1.c.a.d))) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.b.d, 835f)))));
    return ~_wgslsmith_add_u32(~(1u << (_wgslsmith_div_u32(var_3.b.x, 1u) % 32u)), 16280u);
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> u32 {
    var var_0 = ~(~1u);
    return _wgslsmith_sub_u32(func_3(), ~1u) >> (~(~_wgslsmith_mod_u32(u_input.b, 1u)) % 32u);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_2) -> vec4<bool> {
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    var var_0 = vec3<bool>(global1.x, arg_2.a.c, true);
    let var_1 = _wgslsmith_f_op_f32(-arg_2.c.x);
    var_0 = vec3<bool>(true, true, !global1.x);
    return select(vec4<bool>(true && var_0.x, false, arg_0.d.a.c, true), vec4<bool>(true, true, true, true), ((4294967295u << ((arg_0.b.x ^ arg_2.a.b.x) % 32u)) < func_2(arg_0.c > arg_1.x, Struct_3(Struct_2(arg_2.b, Struct_1(63410u, u_input.a, global1.x, arg_2.a.d), arg_2.c), arg_0.d.a.b, -50568i, Struct_2(Struct_1(arg_0.a.b.a, vec2<u32>(34037u, 0u), global1.x, -2772f), arg_2.a, vec4<f32>(arg_2.b.d, 388f, arg_2.a.d, arg_0.a.c.x))))) && true);
}

fn func_4(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = global1.x;
    let var_1 = Struct_4(func_1(Struct_3(Struct_2(Struct_1(8616u, vec2<u32>(u_input.b, u_input.a.x), true, 1057f), Struct_1(u_input.b, vec2<u32>(1u, u_input.a.x), arg_0.x, 1941f), vec4<f32>(1000f, 1102f, 660f, 325f)), u_input.a, 14973i, Struct_2(Struct_1(u_input.b, u_input.a, arg_0.x, 837f), Struct_1(u_input.a.x, vec2<u32>(4256u, u_input.a.x), true, 1690f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-598f, 1198f, -532f, 844f) + vec4<f32>(145f, -909f, -852f, -488f)))), u_input.c >> (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 62098u), vec3<u32>(u_input.a.x, u_input.b, u_input.b)) % vec3<u32>(32u)), Struct_2(Struct_1(1u, u_input.a, true, _wgslsmith_f_op_f32(f32(-1f) * -725f)), Struct_1(max(14372u, 85667u), _wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(u_input.b, u_input.a.x)), global1.x, _wgslsmith_f_op_f32(abs(-1591f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-684f, 1000f, -794f, 880f), vec4<f32>(1000f, -2591f, 534f, 647f))))).wy, Struct_1(_wgslsmith_sub_u32(1u, u_input.b ^ 18421u), vec2<u32>(~countOneBits(1191u), 1u), arg_0.x, -1000f), Struct_2(Struct_1(~6259u, ~vec2<u32>(1u, u_input.b), true, 1f), Struct_1(select(u_input.b, ~4294967295u, select(global1.x, true, false)), ~(~u_input.a), all(vec4<bool>(global1.x, arg_0.x, arg_0.x, global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-210f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-307f)), -1169f, -433f, _wgslsmith_f_op_f32(trunc(-1348f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(425f, -814f, -1167f, -753f), vec4<f32>(-413f, 1040f, 2273f, 1358f))))));
    let var_2 = var_1;
    var var_3 = vec4<bool>(all(arg_0.yxx), !func_1(Struct_3(var_1.c, ~u_input.a, u_input.d.x, Struct_2(Struct_1(48653u, u_input.a, var_2.c.b.c, -2076f), var_1.c.b, var_2.c.c)), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c.xz, u_input.d.xx), -9320i ^ u_input.c.x, abs(-1i)), var_2.c).x, arg_0.x, false);
    let var_4 = _wgslsmith_add_u32(abs(~(~var_2.c.a.a)), 3060u);
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    var var_1 = func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(false, false, false, true)), false, true, all(func_1(Struct_3(Struct_2(Struct_1(u_input.a.x, u_input.a, global1.x, 318f), Struct_1(1u, vec2<u32>(1u, 78512u), false, -687f), vec4<f32>(1361f, 225f, -429f, -2677f)), vec2<u32>(u_input.a.x, 1u), 2147483647i, Struct_2(Struct_1(u_input.a.x, u_input.a, false, 811f), Struct_1(24973u, vec2<u32>(1u, u_input.a.x), false, -422f), vec4<f32>(1081f, 749f, -859f, 1573f))), u_input.d.wyw, Struct_2(Struct_1(61952u, u_input.a, false, 1000f), Struct_1(4294967295u, vec2<u32>(u_input.b, 39527u), var_0.x, -976f), vec4<f32>(-159f, -461f, -1605f, 483f))))), !global1.x));
    global1 = !var_0;
    var_1 = func_4(!func_1(Struct_3(Struct_2(Struct_1(var_1.a.b.x, var_1.a.b, false, var_1.b.d), Struct_1(var_1.a.b.x, vec2<u32>(u_input.b, 4294967295u), global1.x, var_1.a.d), vec4<f32>(665f, var_1.c.x, var_1.b.d, var_1.a.d)), var_1.a.b, 8483i, func_4(vec4<bool>(true, var_0.x, false, global1.x))), u_input.d.wzy, func_4(!vec4<bool>(var_1.a.c, true, var_1.b.c, var_0.x))));
    var var_2 = var_1.b;
    var_2 = var_1.a;
    let var_3 = var_1.b.a != 4294967295u;
    let var_4 = _wgslsmith_mod_vec4_u32(~max(select(vec4<u32>(1u, 19108u, 1u, 0u), vec4<u32>(0u, 29833u, u_input.a.x, 35277u), vec4<bool>(global1.x, false, global1.x, var_1.b.c)), vec4<u32>(~46068u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.a, var_1.a.b.x), var_2.b), select(u_input.b, 1u, var_2.c), abs(0u))), _wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 4294967295u, 28817u, 0u), vec4<u32>(u_input.a.x, 28576u, var_1.b.a, 0u) ^ vec4<u32>(1u, var_2.b.x, var_2.b.x, 1u)), vec4<u32>(_wgslsmith_sub_u32(reverseBits(23700u), var_2.a ^ var_1.b.a), var_2.b.x, 1u, ~var_2.b.x)));
    global1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d, -1085f, -921f, -2999f) * _wgslsmith_f_op_vec4_f32(-var_1.c)))), var_1.c), ~vec2<u32>(abs(~var_2.a), firstLeadingBit(102134u | var_4.x)), -394f);
}

