struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> vec4<bool> {
    var var_0 = Struct_2(arg_0, arg_0.d.x, arg_0);
    return select(var_0.a.c, var_0.c.c, arg_0.c);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: bool) -> i32 {
    var var_0 = 4294967295u;
    var_0 = u_input.e.x;
    let var_1 = u_input.d.x;
    var var_2 = Struct_2(Struct_1(false, vec3<f32>(arg_2.a, _wgslsmith_f_op_f32(step(arg_2.a, arg_2.a)), _wgslsmith_f_op_f32(sign(-457f))), !func_1(Struct_1(arg_3, vec3<f32>(-526f, arg_2.a, -543f), vec4<bool>(arg_3, arg_3, false, true), vec2<f32>(arg_2.a, -340f), 450u), !arg_3, ~1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2.a * arg_2.a), _wgslsmith_div_f32(704f, arg_2.a)) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a, -1284f), _wgslsmith_f_op_vec2_f32(vec2<f32>(253f, arg_2.a) - vec2<f32>(arg_2.a, arg_2.a)))), var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), Struct_1(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, arg_2.a, _wgslsmith_f_op_f32(-arg_2.a)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2377f, -933f, 854f)) * vec3<f32>(arg_2.a, arg_2.a, 366f))), select(vec4<bool>(false, func_1(Struct_1(arg_3, vec3<f32>(-1615f, arg_2.a, arg_2.a), vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec2<f32>(arg_2.a, 1185f), var_1), arg_3, arg_1.x).x, arg_2.a <= arg_2.a, !arg_3), vec4<bool>(func_1(Struct_1(false, vec3<f32>(arg_2.a, 715f, arg_2.a), vec4<bool>(false, arg_3, arg_3, false), vec2<f32>(156f, 540f), 4294967295u), arg_3, u_input.b).x, true, arg_3, true), true), vec2<f32>(-410f, _wgslsmith_f_op_f32(arg_2.a + arg_2.a)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(var_1, u_input.e.x, 67772u, 1u), vec4<u32>(97506u, 310u, u_input.a, 46187u)), select(vec4<u32>(var_1, 0u, 49279u, 1989u), vec4<u32>(u_input.d.x, 57482u, u_input.a, u_input.c), arg_3)), 42779u)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1079f), arg_2.a, _wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_div_f32(2110f, 310f));
    return -1i;
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_3(1820f, func_3(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-18064i, -1i), u_input.b), min(-u_input.b, -u_input.b), i32(-1i) * -u_input.b, -(~u_input.b)), vec3<i32>(u_input.b, 0i, abs(-u_input.b)), Struct_3(930f, ~1i), u_input.b != (i32(-1i) * -18347i)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0.a)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-673f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(463f * -1132f) * var_0.a)))));
    let var_2 = Struct_1(select(true, true, true) && true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_0.a, -1028f) - vec3<f32>(-326f, 2135f, -1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_0.a, 474f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -237f, 1000f), vec3<f32>(var_1.x, var_1.x, -1542f), false))))), !vec4<bool>(true, any(vec4<bool>(true, true, true, true)), _wgslsmith_add_u32(20018u, u_input.d.x) <= select(u_input.e.x, 0u, true), all(vec2<bool>(false, true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1, vec2<f32>(var_0.a, var_1.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(2056f, -176f)))), ~(~1u));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-2523f, -834f, 594f, var_2.d.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x + var_2.d.x), _wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-var_1.x)), vec4<f32>(-248f, _wgslsmith_f_op_f32(-303f + 252f), _wgslsmith_f_op_f32(-var_0.a), 287f))));
    var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-510f, _wgslsmith_f_op_f32(max(-116f, var_2.d.x)), _wgslsmith_f_op_f32(-545f * var_1.x), _wgslsmith_f_op_f32(var_2.b.x * var_0.a))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -104f), _wgslsmith_f_op_f32(select(var_2.d.x, 107f, var_2.a)))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(step(-174f, _wgslsmith_f_op_f32(max(var_3.x, var_3.x)))), var_2.b.x)));
    return ~abs(_wgslsmith_div_vec2_u32(~u_input.e.zx, ~_wgslsmith_div_vec2_u32(u_input.d, vec2<u32>(var_2.e, var_2.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-404f, -437f));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, 954f, -1000f)), vec4<f32>(1f, 1f, 1f, 1f), func_1(Struct_1(true, vec3<f32>(-913f, var_1, var_1), vec4<bool>(true, true, true, false), vec2<f32>(-2286f, var_1), 4294967295u), true, 8113i)))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1591f, 1585f, 284f, var_1), vec4<f32>(var_1, -182f, var_1, var_1)))))));
    let var_3 = var_1;
    var var_4 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d & vec2<u32>(u_input.d.x >> (4294967295u % 32u), _wgslsmith_sub_u32(1u, u_input.d.x)), vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.c, 4294967295u), ~40636u, u_input.d.x), 1u)), func_2());
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_3))))), _wgslsmith_f_op_f32(-var_3))));
    var var_6 = Struct_2(Struct_1(!any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true)), _wgslsmith_div_vec3_f32(var_2.zyx, vec3<f32>(_wgslsmith_f_op_f32(step(var_3, 424f)), _wgslsmith_div_f32(-1116f, var_2.x), _wgslsmith_f_op_f32(919f + var_3))), !vec4<bool>(all(vec2<bool>(true, true)), u_input.b <= -1i, select(false, true, false), true), vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), u_input.a), _wgslsmith_f_op_f32(-247f * _wgslsmith_f_op_f32(f32(-1f) * -242f)), Struct_1(all(vec2<bool>(true, true)) | all(vec4<bool>(true, false, true, true)), var_2.yww, vec4<bool>(true, true, !func_1(Struct_1(false, var_2.xzx, vec4<bool>(true, false, true, false), vec2<f32>(-2349f, var_2.x), 2366u), false, -59139i).x, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(var_2.ww)), var_2.wx)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1, var_1), vec2<f32>(1679f, var_2.x))), _wgslsmith_f_op_vec2_f32(var_2.ww * vec2<f32>(-1589f, var_1)))), u_input.c & ~(~u_input.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -firstLeadingBit(u_input.b));
}

