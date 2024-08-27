struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(219f, 1803f, -102f);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(-arg_0.d.xxz);
    global0 = _wgslsmith_f_op_vec3_f32(-arg_0.d.yxw);
    let var_0 = vec3<bool>((~abs(1u) << (_wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(0u, 1u)) % 32u)) >= _wgslsmith_add_u32(arg_2.d.x, _wgslsmith_clamp_u32(arg_0.c.d.x, 0u >> (arg_0.b.d.x % 32u), arg_0.c.d.x << (arg_0.c.d.x % 32u))), true, all(!select(select(vec4<bool>(arg_1, true, arg_2.b, false), vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(true, arg_2.b, arg_2.e.x, false)), select(vec4<bool>(arg_2.b, arg_2.b, true, false), vec4<bool>(false, false, arg_1, arg_0.b.b), true), arg_2.c < -244f)));
    return -185f;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(select(-1867f, _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(-u_input.a, any(vec3<bool>(arg_1.d.c.e.x, false, false)), -433f, arg_1.d.c.d & arg_1.d.a.d, vec2<bool>(arg_1.d.b.e.x, true)), Struct_1(_wgslsmith_div_i32(2147483647i, -1i), arg_1.d.a.e.x, _wgslsmith_f_op_f32(1969f - global0.x), vec3<u32>(4294967295u, 42926u, arg_1.d.c.d.x), select(vec2<bool>(true, arg_1.d.c.b), arg_1.d.b.e, arg_1.d.c.e)), arg_1.d.b, _wgslsmith_f_op_vec4_f32(arg_1.d.d - vec4<f32>(-440f, -1000f, -810f, arg_0.x))), arg_1.d.a.b, arg_1.d.b, _wgslsmith_sub_u32(18166u, _wgslsmith_sub_u32(~arg_1.c, _wgslsmith_mod_u32(30799u, 31534u))))), false));
    let var_1 = Struct_1(arg_1.d.c.a, !arg_1.d.c.b, _wgslsmith_f_op_f32(-global0.x), ~_wgslsmith_sub_vec3_u32(vec3<u32>(49238u, 1u, arg_1.c), arg_1.d.a.d) ^ ~(~abs(arg_1.d.c.d)), arg_1.d.c.e);
    let var_2 = ~max(min(~(~vec4<u32>(var_1.d.x, 44861u, arg_1.c, arg_1.c)), ~max(vec4<u32>(arg_1.c, arg_1.c, 34198u, var_1.d.x), vec4<u32>(var_1.d.x, arg_1.c, 5324u, arg_1.c))), ~vec4<u32>(_wgslsmith_clamp_u32(3854u, arg_1.c, 21262u), 4294967295u, _wgslsmith_add_u32(var_1.d.x, arg_1.c), var_1.d.x));
    var var_3 = arg_1.d;
    var var_4 = Struct_1(-1i, !(any(!vec4<bool>(var_1.e.x, true, false, var_3.a.e.x)) & true), -251f, vec3<u32>(102863u ^ _wgslsmith_clamp_u32(1u, var_1.d.x | 30760u, ~0u), _wgslsmith_sub_u32((62305u ^ arg_1.d.a.d.x) ^ _wgslsmith_mult_u32(46407u, var_2.x), _wgslsmith_dot_vec2_u32(countOneBits(arg_1.d.c.d.yx), _wgslsmith_add_vec2_u32(vec2<u32>(33736u, var_2.x), vec2<u32>(4294967295u, 4294967295u)))), 0u), vec2<bool>(all(vec2<bool>(all(vec4<bool>(false, arg_1.d.c.b, true, var_3.c.e.x)), arg_1.d.c.b)), true));
    return select(!(!vec3<bool>(false, true, all(vec2<bool>(var_1.e.x, false)))), !vec3<bool>(all(!vec4<bool>(false, arg_1.d.b.e.x, false, true)), arg_1.d.a.b, any(select(var_4.e, vec2<bool>(var_1.e.x, true), var_1.b))), !(!select(vec3<bool>(true, var_3.b.b, var_1.e.x), select(vec3<bool>(false, var_3.a.b, var_1.e.x), vec3<bool>(false, var_3.b.e.x, var_3.c.e.x), arg_1.d.b.e.x), false)));
}

fn func_2() -> Struct_1 {
    let var_0 = true & !any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), func_3(vec4<f32>(-1637f, global0.x, global0.x, -793f), Struct_4(vec3<f32>(124f, global0.x, 154f), u_input.a, 4294967295u, Struct_2(Struct_1(u_input.a, true, 1000f, vec3<u32>(4294967295u, 0u, 71229u), vec2<bool>(true, true)), Struct_1(u_input.a, true, 971f, vec3<u32>(15935u, 3876u, 4294967295u), vec2<bool>(true, false)), Struct_1(u_input.a, true, global0.x, vec3<u32>(14585u, 0u, 48914u), vec2<bool>(false, true)), vec4<f32>(global0.x, 1286f, 2607f, 153f))))));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x))), -1633f, _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(51242i, var_0, global0.x, vec3<u32>(0u, 20667u, 31806u), vec2<bool>(var_0, true)), Struct_1(-2299i, false, global0.x, vec3<u32>(4294967295u, 1u, 86934u), vec2<bool>(true, true)), Struct_1(u_input.a, true, -1060f, vec3<u32>(0u, 14434u, 1u), vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1246f, 594f, -2127f, 514f) + vec4<f32>(global0.x, global0.x, 206f, 177f))), var_0, Struct_1(-17596i, true, 1f, vec3<u32>(1u, 1u, 1u), func_3(vec4<f32>(global0.x, 315f, 1000f, global0.x), Struct_4(vec3<f32>(global0.x, global0.x, global0.x), 17725i, 3501u, Struct_2(Struct_1(1i, var_0, global0.x, vec3<u32>(7071u, 20875u, 1u), vec2<bool>(true, true)), Struct_1(u_input.a, var_0, global0.x, vec3<u32>(23906u, 0u, 0u), vec2<bool>(var_0, false)), Struct_1(u_input.a, var_0, -1055f, vec3<u32>(56208u, 17313u, 84214u), vec2<bool>(false, var_0)), vec4<f32>(global0.x, global0.x, global0.x, 230f)))).yy), ~_wgslsmith_mod_u32(10482u, 48905u)))));
    global0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 766f) - 379f), all(select(vec2<bool>(var_0, true), vec2<bool>(var_0, false), var_0)))), global0.x, _wgslsmith_f_op_f32(-1634f + _wgslsmith_f_op_f32(989f - _wgslsmith_f_op_f32(global0.x * global0.x))))));
    let var_1 = -680f;
    var var_2 = Struct_1(-countOneBits(0i), var_0, _wgslsmith_f_op_f32(trunc(var_1)), ~select(vec3<u32>(15289u, countOneBits(0u), 4294967295u), vec3<u32>(1u, 1u, 1u), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1504f, 1366f, 283f, var_1) + vec4<f32>(global0.x, 624f, -1000f, -1281f)), Struct_4(vec3<f32>(global0.x, var_1, var_1), u_input.a, 10676u, Struct_2(Struct_1(u_input.a, true, -1859f, vec3<u32>(111342u, 0u, 11848u), vec2<bool>(var_0, false)), Struct_1(u_input.a, var_0, -307f, vec3<u32>(24713u, 44624u, 13972u), vec2<bool>(false, true)), Struct_1(1i, true, -887f, vec3<u32>(1u, 4294967295u, 4294967295u), vec2<bool>(var_0, true)), vec4<f32>(1576f, -1080f, -498f, 502f))))), vec2<bool>(var_0, var_0));
    return Struct_1(reverseBits(_wgslsmith_clamp_i32(~abs(u_input.a), -var_2.a ^ u_input.a, 0i)), true, 1101f, vec3<u32>(76685u >> (0u % 32u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(75789u, 31715u, var_2.d.x, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.d.x, var_2.d.x, 65019u, 1u), vec4<u32>(var_2.d.x, var_2.d.x, 262u, 72625u))), var_2.d.x), ~_wgslsmith_dot_vec2_u32(var_2.d.xy, vec2<u32>(94286u, var_2.d.x) >> (var_2.d.xz % vec2<u32>(32u)))), select(var_2.e, !(!var_2.e), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(472f * 887f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - global0.x), _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(-6479i, true, 1103f, vec3<u32>(1051u, 15915u, 0u), vec2<bool>(true, false)), Struct_1(u_input.a, false, 1273f, vec3<u32>(1490u, 0u, 10247u), vec2<bool>(false, false)), Struct_1(u_input.a, true, -864f, vec3<u32>(65186u, 16752u, 4294967295u), vec2<bool>(true, true)), vec4<f32>(-321f, global0.x, global0.x, 484f)), true, Struct_1(u_input.a, true, 1000f, vec3<u32>(4294967295u, 0u, 21431u), vec2<bool>(true, false)), 4294967295u))))), _wgslsmith_f_op_f32(-753f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    let var_0 = func_2();
    let var_1 = !all(select(var_0.e, select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, var_0.b), func_3(vec4<f32>(-242f, -615f, global0.x, -1036f), Struct_4(vec3<f32>(var_0.c, global0.x, var_0.c), var_0.a, 46853u, Struct_2(Struct_1(-1i, var_0.b, -110f, vec3<u32>(var_0.d.x, 1u, var_0.d.x), var_0.e), var_0, var_0, vec4<f32>(104f, var_0.c, -1186f, 1000f)))).zx), true));
    let var_2 = false;
    var var_3 = vec4<u32>(0u, var_0.d.x, _wgslsmith_sub_u32(1u, ~reverseBits(var_0.d.x)), _wgslsmith_mod_u32(~1u, var_0.d.x)) | select(vec4<u32>(var_0.d.x, var_0.d.x, ~(~1u), 53871u), vec4<u32>(~func_2().d.x, 1u, _wgslsmith_add_u32(0u, var_0.d.x), 42975u), var_1);
    let var_4 = Struct_1(u_input.a, !func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(201f, -496f, var_0.c, -1266f)))), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1218f, var_0.c, -2463f)), firstTrailingBit(-1i), var_3.x, Struct_2(Struct_1(u_input.a, true, -1215f, var_0.d, var_0.e), Struct_1(-1i, false, global0.x, var_3.zwx, var_0.e), var_0, vec4<f32>(global0.x, 1798f, 369f, -204f)))).x, -701f, _wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_3.x, var_3.x, var_0.d.x), vec3<u32>(var_0.d.x, 1u, var_0.d.x)), vec3<u32>(1938u, 1u, var_3.x) ^ var_0.d), ~reverseBits(~var_0.d)), vec2<bool>(!(!var_2 | true), !(!(var_0.c < 749f))));
    var_3 = _wgslsmith_sub_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 46481u, var_4.d.x, var_0.d.x) | vec4<u32>(var_4.d.x, var_3.x, 24815u, 43189u), vec4<u32>(1u, 75604u, 49270u, 41915u) ^ vec4<u32>(2170u, var_4.d.x, 92663u, 39120u))), abs(vec4<u32>(var_3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.x, var_3.x, 32608u, 52369u), vec4<u32>(var_0.d.x, var_0.d.x, 1u, 27296u)), 53568u, _wgslsmith_sub_u32(var_3.x, var_3.x)) ^ (~vec4<u32>(var_0.d.x, var_4.d.x, 1672u, var_4.d.x) & (vec4<u32>(1u, var_4.d.x, var_0.d.x, 27723u) & vec4<u32>(var_3.x, 1u, var_4.d.x, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-626f - _wgslsmith_f_op_f32(step(var_0.c, -576f))))), _wgslsmith_sub_vec2_i32(vec2<i32>(func_2().a >> (var_3.x % 32u), abs(var_0.a >> (var_3.x % 32u))), min(-vec2<i32>(0i, var_0.a), reverseBits(vec2<i32>(u_input.a, 0i))) >> (vec2<u32>(4294967295u, ~1u) % vec2<u32>(32u))));
}

