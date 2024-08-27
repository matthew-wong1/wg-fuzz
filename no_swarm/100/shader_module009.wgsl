struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1125f, -3088f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> vec4<f32> {
    global0 = arg_1.e.c.yz;
    global0 = _wgslsmith_f_op_vec2_f32(trunc(arg_1.e.a.zz));
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c.a.wy * arg_1.e.a.wy))) * _wgslsmith_f_op_vec2_f32(arg_1.e.a.wx * vec2<f32>(_wgslsmith_f_op_f32(-arg_1.e.a.x), 558f))), _wgslsmith_f_op_vec2_f32(-arg_1.e.b.yx)));
    let var_0 = vec2<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(44334u, 0u, 4294967295u, 72150u), vec4<u32>(29340u, 0u, arg_0.x, arg_1.b)) & 4294967295u), arg_1.b);
    global0 = _wgslsmith_f_op_vec2_f32(-arg_1.e.a.wz);
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(floor(arg_1.c.a.x))), -489f, -549f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1052f))))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = ~arg_2;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.x, -2545f))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-111f)))))), -1014f, _wgslsmith_f_op_f32(-1004f * _wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(firstLeadingBit(1u), u_input.a.x, min(1u, u_input.a.x)), Struct_2(false, abs(4294967295u), Struct_1(vec4<f32>(arg_3.c.x, global0.x, 595f, arg_1.c.x), vec3<f32>(517f, -530f, 568f), vec4<f32>(global0.x, arg_1.c.x, -607f, 560f)), -2147483647i, arg_1))).x));
    var var_2 = abs(~_wgslsmith_mod_u32(~(u_input.a.x >> (arg_0 % 32u)), arg_0));
    var var_3 = Struct_3(var_0.x, vec3<f32>(207f, 870f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * arg_3.c.x))), Struct_2(false, _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(16476u), 25942u, select(16363u, 1u, true), select(39791u, arg_0, true)), select(vec4<u32>(0u, 1u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 51075u, 9011u, u_input.a.x), vec4<bool>(false, true, true, true)) | select(vec4<u32>(1u, 99911u, arg_0, arg_0), vec4<u32>(arg_0, u_input.a.x, 0u, arg_0), vec4<bool>(false, true, false, true))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-551f * 573f), _wgslsmith_f_op_f32(min(-953f, global0.x)), _wgslsmith_f_op_f32(select(159f, arg_1.b.x, false)), 250f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(146f, arg_1.c.x, 704f), var_1))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_3.c.x, 1139f, arg_3.b.x))))), abs(u_input.b.x), arg_3), any(vec4<bool>(all(vec2<bool>(false, false)), all(vec2<bool>(true, true)), true, !all(vec4<bool>(true, false, false, false)))));
    return !vec2<bool>(true, any(vec2<bool>(true, any(vec3<bool>(false, false, false)))));
}

fn func_2() -> f32 {
    let var_0 = func_4(u_input.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, -922f, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global0.x, -645f, 218f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1276f, global0.x, global0.x), vec3<f32>(global0.x, 535f, global0.x), false)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -258f, -382f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 327f, 297f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1000f, -3659f, global0.x), vec4<f32>(global0.x, global0.x, -1578f, global0.x)), _wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(u_input.a.x, u_input.a.x, 3069u), Struct_2(true, u_input.a.x, Struct_1(vec4<f32>(global0.x, global0.x, 1253f, -1000f), vec3<f32>(global0.x, global0.x, global0.x), vec4<f32>(-1063f, 532f, -238f, -444f)), u_input.b.x, Struct_1(vec4<f32>(global0.x, global0.x, global0.x, 313f), vec3<f32>(global0.x, -736f, global0.x), vec4<f32>(global0.x, global0.x, global0.x, -1906f)))))))), vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, i32(-1i) * -2147483647i) ^ -u_input.b.x, _wgslsmith_div_i32(u_input.b.x, 1i) << (_wgslsmith_mult_u32(select(u_input.a.x, u_input.a.x, true), 1u) % 32u), _wgslsmith_add_i32(select(-90622i, 1i, select(false, false, true)), _wgslsmith_add_i32(1i, firstTrailingBit(2147483647i))), firstLeadingBit(_wgslsmith_clamp_i32(u_input.b.x, ~u_input.b.x, ~(-2147483647i)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-898f, 702f, 613f, 1871f))))), vec3<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_vec4_f32(func_3(~vec3<u32>(4294967295u, 36167u, u_input.a.x), Struct_2(false, u_input.a.x, Struct_1(vec4<f32>(global0.x, -614f, global0.x, global0.x), vec3<f32>(1165f, global0.x, -882f), vec4<f32>(-1665f, 1736f, global0.x, -1000f)), u_input.b.x, Struct_1(vec4<f32>(-1439f, -1000f, 985f, -1000f), vec3<f32>(950f, 652f, global0.x), vec4<f32>(705f, global0.x, global0.x, global0.x))))).x, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-356f, 1148f, 239f, -794f), vec4<f32>(global0.x, global0.x, -474f, global0.x), vec4<bool>(false, true, true, false))) + vec4<f32>(global0.x, 341f, -670f, -578f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1000f, -601f, 122f)) - vec4<f32>(-1310f, 1000f, global0.x, -1526f)))));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-365f * 1081f), -1676f));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-827f + -638f), _wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-992f, global0.x), vec2<f32>(-1202f, global0.x)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, global0.x)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -170f)), _wgslsmith_f_op_f32(-global0.x))));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x + global0.x))))), 543f, 866f, _wgslsmith_div_f32(798f, global0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1153f, global0.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-284f)), -1000f, -578f, _wgslsmith_f_op_f32(f32(-1f) * -811f)))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(166f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(u_input.a, Struct_2(var_0.x, u_input.a.x, Struct_1(vec4<f32>(global0.x, 564f, global0.x, var_1.a.x), var_1.a.wyy, var_1.a), -1576i, var_1))).x * _wgslsmith_f_op_f32(1000f * -413f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1063f * 451f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(659f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + var_1.a.x))))));
}

fn func_1() -> vec2<bool> {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-1000f + 525f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(753f, global0.x) * _wgslsmith_f_op_f32(func_2()))))));
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, firstTrailingBit(min(10204u, 46950u))), _wgslsmith_dot_vec3_u32(vec3<u32>(21504u | u_input.a.x, ~4294967295u, select(u_input.a.x, 64381u, false)), ~u_input.a)), ~(~select(_wgslsmith_mult_u32(23896u, u_input.a.x), ~4294967295u, true)));
    let var_1 = u_input.b.x;
    let var_2 = Struct_2(true, ~_wgslsmith_div_u32(~max(u_input.a.x, 4294967295u), ~u_input.a.x), Struct_1(vec4<f32>(-989f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(global0.x * -713f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.x, -1000f))), _wgslsmith_f_op_vec4_f32(func_3(~vec3<u32>(1u, 1u, 18978u), Struct_2(true, 14832u, Struct_1(vec4<f32>(-181f, -1740f, global0.x, -611f), vec3<f32>(-1052f, -1000f, 519f), vec4<f32>(-1729f, 794f, 610f, global0.x)), var_1, Struct_1(vec4<f32>(1233f, 1473f, 799f, global0.x), vec3<f32>(global0.x, global0.x, 677f), vec4<f32>(global0.x, -1206f, global0.x, global0.x))))).x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(546f, 952f, 1568f), vec3<f32>(global0.x, -1760f, -955f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(682f, global0.x, 887f, 432f))), vec4<f32>(594f, 687f, global0.x, 1124f)))), 30658i, Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(915f, global0.x, -272f, -1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 200f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, -1474f, -1050f, 397f)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, -966f, 2014f))) + vec3<f32>(821f, 303f, 1111f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, global0.x, 987f))))))));
    var var_3 = _wgslsmith_f_op_f32(trunc(var_2.e.b.x));
    return !func_4(~var_2.b, var_2.c, -(~(~vec4<i32>(-3950i, u_input.b.x, -4668i, -37699i))), Struct_1(var_2.c.c, var_2.e.a.yzy, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e.b.x, -1199f, 1000f, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.c.x, 124f, -2149f, global0.x) + var_2.c.c), !vec4<bool>(false, false, var_2.a, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 219f), vec2<f32>(-940f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-301f, _wgslsmith_f_op_f32(trunc(-653f)))), func_1()))));
    var var_0 = vec2<f32>(326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(665f * 1192f)) + 420f)));
    let var_1 = u_input.b.x == u_input.b.x;
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-330f, -154f), 453f));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_div_u32(u_input.a.x, 60582u)), _wgslsmith_div_u32(min(4294967295u, min(countOneBits(u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))), u_input.a.x), min(min(~(~u_input.a), ~u_input.a), u_input.a), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x)))))));
}

