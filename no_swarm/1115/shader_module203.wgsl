struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(-1634f, -1610f, 1210f, -380f), vec4<f32>(-1000f, 1188f, 1100f, -1078f), vec4<f32>(-1000f, -1152f, -2129f, -1593f), vec4<f32>(2361f, -213f, -1532f, 757f), vec4<f32>(-2416f, 378f, 429f, -989f), vec4<f32>(546f, 1065f, 1230f, 1839f), vec4<f32>(1264f, -959f, -709f, -174f), vec4<f32>(722f, -1028f, -1419f, -1858f), vec4<f32>(473f, -2988f, 849f, -1879f), vec4<f32>(-488f, -2367f, 315f, -1005f), vec4<f32>(-830f, -1611f, 2486f, -274f), vec4<f32>(-273f, 1007f, 1878f, -709f), vec4<f32>(-214f, 1144f, -1000f, 1584f), vec4<f32>(106f, 740f, -535f, 3671f), vec4<f32>(2240f, 355f, 297f, -666f), vec4<f32>(-392f, -1056f, -1762f, 1334f), vec4<f32>(-733f, -1313f, -964f, -686f), vec4<f32>(1707f, -1000f, 887f, 497f), vec4<f32>(-272f, 195f, -930f, 820f), vec4<f32>(843f, -1323f, 136f, 589f), vec4<f32>(-965f, 478f, 1237f, -511f), vec4<f32>(213f, -296f, -1000f, -784f), vec4<f32>(-1121f, 227f, 1613f, 2174f), vec4<f32>(-1851f, 723f, 1000f, 891f), vec4<f32>(-424f, -622f, 1261f, 1998f), vec4<f32>(1665f, -664f, -1635f, -1436f), vec4<f32>(-365f, -304f, -287f, 1056f), vec4<f32>(-1000f, 808f, 358f, -1019f), vec4<f32>(533f, 271f, 772f, -547f));

var<private> global1: Struct_1 = Struct_1(102232u, 295f, vec4<u32>(4294967295u, 67809u, 17482u, 37725u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<i32>) -> f32 {
    var var_0 = Struct_2(Struct_1(33706u, global1.b, _wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.a, arg_0.a, 0u, 127396u), select(global1.c & vec4<u32>(1u, 4294967295u, arg_0.c.x, arg_0.a), reverseBits(global1.c), true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-142f, global1.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_0.b))))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(global1.b + arg_0.b), _wgslsmith_f_op_f32(arg_0.b - -780f), _wgslsmith_f_op_f32(select(arg_0.b, -1648f, true)))))), Struct_1(~arg_0.c.x << (~1u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1066f - arg_0.b)) - -1000f), global1.c), global1.c);
    return _wgslsmith_f_op_f32(global1.b * -792f);
}

fn func_2() -> bool {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_div_u32(global1.a, _wgslsmith_mod_u32(68795u, 4294967295u)), global1.b, global1.c & vec4<u32>(~global1.a, 69511u, 7813u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, 1u, 27156u, u_input.c), global1.c))), vec3<f32>(_wgslsmith_f_op_f32(min(global1.b, _wgslsmith_f_op_f32(floor(-234f)))), -404f, _wgslsmith_f_op_f32(global1.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(1u, global1.b, global1.c), u_input.a, vec3<i32>(-2147483647i, 1i, 24980i))), _wgslsmith_f_op_f32(-global1.b)))), Struct_1(7766u, -1000f, _wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1538u, 51162u, 30889u, u_input.c), global1.c, vec4<u32>(global1.a, 0u, u_input.c, 73164u)), global1.c)), global1.c);
    let var_1 = 0u;
    global1 = var_0.a;
    global0 = array<vec4<f32>, 29>();
    global0 = array<vec4<f32>, 29>();
    return ~(~(~u_input.c)) > ~0u;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = vec4<bool>(all(!select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true))), true, func_2(), !(!func_2()));
    var var_1 = Struct_1(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.b - -344f))))) * _wgslsmith_f_op_f32(trunc(1209f))), arg_0.d);
    let var_2 = arg_0.c;
    global0 = array<vec4<f32>, 29>();
    global1 = Struct_1(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_1.b) + _wgslsmith_f_op_f32(round(arg_2.c.b))), _wgslsmith_f_op_f32(ceil(313f))) + arg_0.a.b), vec4<u32>(_wgslsmith_div_u32(87897u, _wgslsmith_clamp_u32(~5994u, 1u, 12330u)), abs(4294967295u) ^ (arg_0.c.c.x & ~1u), _wgslsmith_div_u32(max(_wgslsmith_dot_vec3_u32(arg_2.a.c.wzx, vec3<u32>(2391u, 1u, var_1.a)), var_1.c.x), 1u), var_2.a));
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -firstTrailingBit(vec3<i32>(1i, u_input.b.x, 0i));
    let var_1 = Struct_2(Struct_1(1u, global1.b, select(countOneBits(global1.c), ~global1.c, select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false)) ^ vec4<u32>(func_1(Struct_2(Struct_1(global1.a, global1.b, global1.c), vec3<f32>(global1.b, 1211f, global1.b), Struct_1(11101u, global1.b, global1.c), vec4<u32>(32481u, 0u, 58368u, 1u)), 1i, Struct_2(Struct_1(global1.a, -1376f, vec4<u32>(0u, u_input.c, global1.c.x, 16086u)), vec3<f32>(569f, 1000f, global1.b), Struct_1(23552u, 2880f, global1.c), global1.c), Struct_1(0u, 1818f, vec4<u32>(u_input.c, 0u, 0u, global1.a))), ~global1.c.x, ~global1.c.x, select(global1.a, 43714u, false))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(select(-353f, _wgslsmith_f_op_f32(f32(-1f) * -673f), true)), 399f, 1948f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-527f, -560f, 649f)), vec3<f32>(global1.b, global1.b, 1538f))))), Struct_1(_wgslsmith_mult_u32(~u_input.c, 11284u), _wgslsmith_f_op_f32(step(548f, global1.b)), ~select(global1.c, ~vec4<u32>(global1.c.x, 39171u, global1.c.x, u_input.c), all(vec3<bool>(true, true, true)))), reverseBits(~global1.c));
    let var_2 = var_1;
    global0 = array<vec4<f32>, 29>();
    global1 = Struct_1(~var_1.c.a, _wgslsmith_div_f32(var_2.c.b, -952f), global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstTrailingBit(var_0.x), _wgslsmith_mod_i32(select(-u_input.b.x, ~(-21987i), all(vec3<bool>(true, true, true))), 50797i), firstTrailingBit(-12426i)), abs(abs(global1.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_1.b, vec3<f32>(var_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -747f), -1321f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1017f, var_1.a.b, _wgslsmith_f_op_f32(var_1.c.b + var_2.b.x)) + var_2.b)));
}

