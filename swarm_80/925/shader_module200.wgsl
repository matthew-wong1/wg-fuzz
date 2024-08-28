struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-587f, 1054f, 173f), vec3<f32>(-108f, -1819f, -259f), vec3<f32>(-144f, 1000f, -2316f), vec3<f32>(2919f, 257f, -345f), vec3<f32>(-128f, 1972f, -1293f), vec3<f32>(-445f, -272f, 1405f), vec3<f32>(1000f, -914f, -1000f), vec3<f32>(-1036f, -1000f, -597f), vec3<f32>(-1193f, -631f, -1000f), vec3<f32>(1498f, -1000f, -856f), vec3<f32>(1152f, 1048f, -1168f), vec3<f32>(-1893f, -2669f, -206f), vec3<f32>(194f, -1884f, 1988f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_2) -> bool {
    var var_0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_2.a.b - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.x, arg_2.b.c.x, arg_2.d.x, arg_0.b.b.x))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(71291u, 15038u | arg_2.c.x), 13u)] * arg_2.b.c) + vec3<f32>(-1526f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.d.x + 145f))))));
    var_0 = arg_0.b;
    var var_1 = ~vec2<u32>(~1u, ~((u_input.b ^ 6138u) >> (58466u % 32u)));
    global0 = array<vec3<f32>, 13>();
    var_0 = arg_0.b;
    return true;
}

fn func_2() -> bool {
    let var_0 = Struct_3(u_input.d.zx, Struct_1(!(min(-2147483647i, u_input.d.x) >= abs(53941i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(106f, 745f, -1136f, -695f)), func_3(Struct_3(u_input.e.yy, Struct_1(true, vec4<f32>(1021f, 1550f, -1000f, -198f), vec3<f32>(-189f, 611f, 1228f))), vec4<bool>(true, false, false, true), Struct_2(Struct_1(false, vec4<f32>(-1000f, -584f, -104f, -409f), global0[_wgslsmith_index_u32(5519u, 13u)]), Struct_1(true, vec4<f32>(1697f, -1580f, 1693f, 176f), vec3<f32>(-1188f, -622f, -913f)), vec4<u32>(50691u, u_input.a, 23361u, u_input.b), vec4<f32>(138f, -1375f, 476f, 801f), false))))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 1u, firstLeadingBit(~4294967295u)), 13u)]));
    return any(vec4<bool>(var_0.b.a, !(all(vec4<bool>(var_0.b.a, var_0.b.a, var_0.b.a, false)) | var_0.b.a), all(!select(vec4<bool>(var_0.b.a, var_0.b.a, true, var_0.b.a), vec4<bool>(var_0.b.a, var_0.b.a, true, false), true)), var_0.b.a));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<u32>) -> bool {
    var var_0 = all(vec2<bool>(true && arg_1.x, func_2()));
    let var_1 = vec4<bool>(all(!arg_1.wwy), any(arg_1), true, func_3(Struct_3(select(vec2<i32>(8511i, -2147483647i), u_input.e.yy, !arg_1.x), Struct_1(arg_1.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-287f, 565f, 1043f, 626f) + vec4<f32>(-624f, -947f, 665f, -628f)), vec3<f32>(493f, 1558f, -1380f))), arg_1, Struct_2(Struct_1(func_3(Struct_3(vec2<i32>(u_input.e.x, 16782i), Struct_1(false, vec4<f32>(458f, 371f, 1503f, -1000f), vec3<f32>(219f, 689f, -452f))), arg_1, Struct_2(Struct_1(arg_1.x, vec4<f32>(-719f, 1077f, -1000f, 416f), global0[_wgslsmith_index_u32(u_input.c, 13u)]), Struct_1(arg_1.x, vec4<f32>(-839f, 1350f, 623f, 2572f), vec3<f32>(1018f, -349f, 274f)), vec4<u32>(arg_2.x, u_input.b, u_input.a, 0u), vec4<f32>(949f, -1036f, 176f, 1000f), arg_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2018f, 495f, 1239f, -1752f) - vec4<f32>(852f, -1572f, 1016f, -247f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(344f, -734f, -1000f)))), Struct_1(arg_1.x, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(952f, -607f, 1035f, 121f))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, 0u), 13u)]), ~_wgslsmith_mod_vec4_u32(vec4<u32>(166485u, arg_2.x, arg_2.x, 63634u), vec4<u32>(u_input.c, arg_2.x, 32932u, arg_0)), vec4<f32>(-883f, _wgslsmith_f_op_f32(380f + -1993f), _wgslsmith_f_op_f32(round(-1297f)), _wgslsmith_f_op_f32(step(-1135f, -321f))), true)));
    let var_2 = arg_1.x;
    var_0 = (~(~(~u_input.c)) | (u_input.b >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 38682u, arg_0, arg_2.x), vec4<u32>(arg_0, arg_2.x, arg_2.x, arg_2.x) | vec4<u32>(4294967295u, u_input.c, 20880u, u_input.a)) % 32u))) == 19819u;
    var var_3 = 255f;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(countOneBits(_wgslsmith_sub_u32(0u, u_input.a)), vec4<bool>(u_input.e.x < u_input.d.x, _wgslsmith_sub_i32(40009i, u_input.d.x) > u_input.d.x, false, true), max(select(vec3<u32>(26479u, u_input.c, u_input.b), vec3<u32>(u_input.c, u_input.c, u_input.b), vec3<bool>(false, false, false)) >> ((vec3<u32>(u_input.c, 12995u, u_input.b) ^ vec3<u32>(132901u, 33084u, u_input.c)) % vec3<u32>(32u)), ~vec3<u32>(u_input.b, 1u, u_input.c))), vec4<f32>(-433f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-226f, -759f))), _wgslsmith_f_op_f32(trunc(-564f)))), _wgslsmith_f_op_f32(1031f * _wgslsmith_f_op_f32(step(-393f, _wgslsmith_f_op_f32(select(-333f, 890f, false))))), _wgslsmith_div_f32(-700f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -350f), _wgslsmith_f_op_f32(f32(-1f) * -584f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(1u, 13u)], vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -594f), -231f, _wgslsmith_f_op_f32(sign(-1313f))))) - _wgslsmith_f_op_vec3_f32(sign(global0[_wgslsmith_index_u32(abs(~9678u), 13u)]))));
    var var_1 = u_input.e ^ (~_wgslsmith_add_vec3_i32(u_input.d.wzy >> (vec3<u32>(u_input.b, 4294967295u, 7803u) % vec3<u32>(32u)), u_input.e) << ((abs(~vec3<u32>(u_input.b, u_input.c, 1u)) << (~(~vec3<u32>(43844u, u_input.a, u_input.a)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_2 = var_0;
    var var_3 = vec4<u32>(0u, ~countOneBits(u_input.b), 0u, ~61501u);
    global0 = array<vec3<f32>, 13>();
    let var_4 = vec2<bool>(true, var_2.a);
    global0 = array<vec3<f32>, 13>();
    var var_5 = var_1.x | -2147483647i;
    let var_6 = _wgslsmith_div_f32(var_0.c.x, -1752f);
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.x, _wgslsmith_div_f32(var_6, -288f), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(4294967295u, 37631u, 5137u, var_3.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(abs(var_3.x), ~40889u, var_3.x, u_input.a), reverseBits(~vec4<u32>(u_input.a, 16295u, 4294967295u, 0u)))), var_3.yzx);
}

