struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<i32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec4<bool>(false, true, true, false), 53795u, vec3<f32>(1451f, 274f, 183f), true), Struct_3(vec4<bool>(true, false, true, true), 4294967295u, vec3<f32>(-856f, 1000f, -329f), true), Struct_3(vec4<bool>(false, true, true, true), 0u, vec3<f32>(654f, 1619f, 999f), false), Struct_3(vec4<bool>(false, true, true, false), 10660u, vec3<f32>(-1000f, 131f, -680f), true), Struct_3(vec4<bool>(true, false, true, true), 4294967295u, vec3<f32>(-748f, 762f, -1328f), true), Struct_3(vec4<bool>(false, true, false, true), 29728u, vec3<f32>(1280f, 118f, -1747f), false), Struct_3(vec4<bool>(true, false, true, false), 79246u, vec3<f32>(137f, -535f, -1159f), false), Struct_3(vec4<bool>(false, true, true, false), 4294967295u, vec3<f32>(398f, 755f, -618f), true), Struct_3(vec4<bool>(true, false, true, false), 0u, vec3<f32>(292f, -674f, -410f), true), Struct_3(vec4<bool>(true, false, true, true), 39803u, vec3<f32>(-863f, 687f, -460f), false), Struct_3(vec4<bool>(true, true, false, false), 4294967295u, vec3<f32>(-2335f, 193f, -366f), true), Struct_3(vec4<bool>(false, false, false, true), 4294967295u, vec3<f32>(-390f, 680f, -1012f), true), Struct_3(vec4<bool>(false, true, true, false), 4294967295u, vec3<f32>(-1000f, 801f, -927f), true), Struct_3(vec4<bool>(true, false, false, false), 16357u, vec3<f32>(614f, 1000f, -1388f), false), Struct_3(vec4<bool>(true, false, true, true), 1u, vec3<f32>(1122f, 495f, 405f), true), Struct_3(vec4<bool>(true, true, false, true), 35320u, vec3<f32>(293f, 509f, -1197f), false), Struct_3(vec4<bool>(true, false, false, true), 96387u, vec3<f32>(-789f, 622f, 126f), true), Struct_3(vec4<bool>(true, true, true, true), 4294967295u, vec3<f32>(1000f, 607f, 222f), false), Struct_3(vec4<bool>(true, true, true, false), 1u, vec3<f32>(-972f, 307f, -461f), false), Struct_3(vec4<bool>(true, true, false, true), 5759u, vec3<f32>(-249f, 540f, -1595f), true), Struct_3(vec4<bool>(true, false, true, false), 4294967295u, vec3<f32>(-1116f, -1870f, -563f), false), Struct_3(vec4<bool>(false, false, true, true), 4294967295u, vec3<f32>(-2039f, -925f, -1599f), true), Struct_3(vec4<bool>(true, true, false, true), 22052u, vec3<f32>(437f, 282f, -1623f), false), Struct_3(vec4<bool>(false, false, true, false), 1u, vec3<f32>(1000f, -1364f, -1985f), true), Struct_3(vec4<bool>(false, false, true, false), 0u, vec3<f32>(-210f, 1164f, -506f), true), Struct_3(vec4<bool>(false, false, false, false), 0u, vec3<f32>(-612f, -997f, 999f), false), Struct_3(vec4<bool>(true, false, true, false), 3113u, vec3<f32>(612f, 404f, -400f), false), Struct_3(vec4<bool>(false, false, false, false), 45364u, vec3<f32>(-1000f, 107f, -443f), true), Struct_3(vec4<bool>(false, false, false, true), 17921u, vec3<f32>(162f, -1271f, -627f), true), Struct_3(vec4<bool>(false, true, true, false), 1u, vec3<f32>(-181f, -904f, -712f), true), Struct_3(vec4<bool>(false, true, false, false), 1u, vec3<f32>(-1247f, 1897f, 1440f), false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>) -> vec4<f32> {
    let var_0 = true;
    let var_1 = abs(u_input.d.yxz);
    global0 = array<Struct_3, 31>();
    global0 = array<Struct_3, 31>();
    global0 = array<Struct_3, 31>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(701f)), _wgslsmith_div_f32(740f, -1273f), _wgslsmith_f_op_f32(step(903f, -126f)), -590f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-122f, -1260f, 2792f, 463f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-315f, -184f, -199f, 745f) * vec4<f32>(1000f, -1797f, 896f, -1021f)))))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-1156f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(607f + 966f) * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -387f) - _wgslsmith_f_op_f32(floor(174f))), 1494f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: f32) -> vec3<i32> {
    let var_0 = select(arg_1.b, u_input.a, true);
    var var_1 = any(select(select(vec3<bool>(arg_2.x, arg_1.c, false), vec3<bool>(true, arg_2.x, true), arg_2.xzx), arg_2.xxz, ~_wgslsmith_add_u32(87316u, u_input.c) < ~41318u));
    let var_2 = global0[_wgslsmith_index_u32(45549u, 31u)];
    global0 = array<Struct_3, 31>();
    var_1 = (-(~var_0 >> (~var_2.b % 32u)) | arg_1.b) == -27400i;
    return vec3<i32>(_wgslsmith_div_i32(abs(_wgslsmith_mod_i32(-44860i, var_0)), u_input.a) | -(abs(var_0) << (~4294967295u % 32u)), max(-firstLeadingBit(~(-57422i)), _wgslsmith_sub_i32(u_input.b, firstLeadingBit(_wgslsmith_mod_i32(u_input.a, 2147483647i)))), -_wgslsmith_clamp_i32(~(-10460i), _wgslsmith_dot_vec4_i32(vec4<i32>(15000i, u_input.b, 68192i, var_0), ~vec4<i32>(var_0, u_input.b, arg_1.a.x, u_input.b)), 22269i));
}

fn func_2() -> Struct_4 {
    global0 = array<Struct_3, 31>();
    global0 = array<Struct_3, 31>();
    global0 = array<Struct_3, 31>();
    let var_0 = Struct_1(func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(736f, -1524f, 585f, -464f), _wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(u_input.b, -35879i, 39316i))), true)))), Struct_1(abs(reverseBits(vec3<i32>(u_input.b, 0i, 49375i))), i32(-1i) * -2147483647i, true), !vec4<bool>(35153u >= u_input.d.x, true, true, true), 840f), u_input.b, false);
    global0 = array<Struct_3, 31>();
    return Struct_4(u_input.c, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~firstTrailingBit(49982u)) << (1u % 32u), 31u)], -_wgslsmith_sub_vec4_i32((vec4<i32>(0i, 0i, var_0.a.x, u_input.b) & vec4<i32>(var_0.b, -2147483647i, -2147483647i, 85167i)) & vec4<i32>(14941i, u_input.b, 1i, var_0.a.x), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 40572i, -1747i), var_0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, u_input.b, 2147483647i, 1i), vec4<i32>(u_input.a, 19308i, var_0.a.x, var_0.a.x)), ~0i, func_4(vec4<f32>(-205f, -1401f, -237f, 1000f), Struct_1(vec3<i32>(1i, u_input.b, -1i), u_input.b, var_0.c), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), -2142f).x)), Struct_2(u_input.d.yyx), Struct_2(~max(vec3<u32>(0u, u_input.c, 1742u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.c, u_input.d.x), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)))));
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    var var_0 = func_2();
    global0 = array<Struct_3, 31>();
    var var_1 = u_input.d.wxz;
    return 46518u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(min(u_input.d, u_input.d), u_input.d), 31u)];
    var var_1 = Struct_4(28123u, Struct_3(vec4<bool>(true, true, true, true), _wgslsmith_add_u32(countOneBits(var_0.b) >> (func_1(vec2<f32>(914f, -145f)) % 32u), u_input.d.x | var_0.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c * _wgslsmith_f_op_vec3_f32(exp2(var_0.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.c, var_0.c, true)))), 2147483647i != ~(-u_input.b)), vec4<i32>(-u_input.b, ~(-(~u_input.a)), 0i, u_input.a), Struct_2(u_input.d.wyx), Struct_2(~min(~u_input.d.zzy, ~vec3<u32>(var_0.b, var_0.b, 0u))));
    var var_2 = func_2();
    let var_3 = 1i >= var_2.c.x;
    var var_4 = var_2.b.a;
    var var_5 = u_input.d;
    var var_6 = (var_1.c.zy << (_wgslsmith_clamp_vec2_u32(firstTrailingBit(max(vec2<u32>(85135u, 531u), u_input.d.zx)), var_5.xx, max(var_1.e.a.yy, ~var_5.xz)) % vec2<u32>(32u))) & ~abs(var_1.c.wz);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x);
}

