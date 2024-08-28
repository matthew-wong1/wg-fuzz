struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(vec4<bool>(false, false, true, true), Struct_2(19130i, vec2<f32>(657f, -630f)), vec3<u32>(46884u, 12916u, 34340u)), Struct_4(vec4<bool>(false, false, true, true), Struct_2(1i, vec2<f32>(826f, -854f)), vec3<u32>(1u, 14486u, 61318u)), Struct_4(vec4<bool>(true, false, false, true), Struct_2(483i, vec2<f32>(432f, 1201f)), vec3<u32>(15691u, 1u, 37889u)), Struct_4(vec4<bool>(false, true, true, true), Struct_2(2147483647i, vec2<f32>(-1151f, -622f)), vec3<u32>(0u, 0u, 0u)), Struct_4(vec4<bool>(false, false, false, false), Struct_2(-40863i, vec2<f32>(-919f, 224f)), vec3<u32>(112697u, 31916u, 1u)), Struct_4(vec4<bool>(false, true, false, true), Struct_2(-1i, vec2<f32>(-1712f, 679f)), vec3<u32>(56102u, 76128u, 4294967295u)), Struct_4(vec4<bool>(true, false, true, false), Struct_2(46724i, vec2<f32>(-1860f, -237f)), vec3<u32>(27255u, 1u, 4294967295u)));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = arg_0.x;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1317f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)), arg_0.x, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(112f, arg_0.x) - _wgslsmith_f_op_f32(select(883f, _wgslsmith_f_op_f32(-175f + arg_0.x), all(vec2<bool>(false, false))))), _wgslsmith_f_op_f32(sign(-884f))));
    var var_2 = Struct_3(1i);
    var_1 = _wgslsmith_f_op_vec3_f32(arg_0 + arg_0);
    return Struct_2(4141i, vec2<f32>(var_1.x, 779f));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_3) -> i32 {
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    let var_0 = func_2(arg_0.yyw);
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    let var_0 = Struct_3(_wgslsmith_add_i32(~15730i, ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(45852i, 27258i), vec2<i32>(0i, -51744i)), _wgslsmith_add_i32(2147483647i, -29500i), 1i)));
    var var_1 = Struct_1((1i >> ((firstLeadingBit(67782u) & (u_input.a.x ^ u_input.a.x)) % 32u)) | 1i);
    var var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(~0i, i32(-1i) * -9381i, 25910i, func_1(vec4<f32>(2257f, 811f, -802f, 868f), Struct_1(2147483647i), u_input.a.x, Struct_3(var_0.a))), _wgslsmith_clamp_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(var_1.a, -2147483647i, -9806i, 2147483647i), vec4<i32>(var_1.a, -2147483647i, var_0.a, var_1.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a, var_1.a, -2147483647i, -1020i), -vec4<i32>(2147483647i, 2147483647i, 2147483647i, 1i), -vec4<i32>(var_1.a, -7753i, var_0.a, var_1.a)), ~(~vec4<i32>(-2147483647i, var_1.a, var_1.a, 20767i)))), -(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(var_0.a, 1i, 1i, -36053i), min(vec4<i32>(-1i, 1i, var_0.a, -29343i), vec4<i32>(var_0.a, -14234i, 11296i, var_1.a)), -vec4<i32>(var_0.a, var_0.a, var_1.a, 28445i))));
    global0 = array<Struct_4, 7>();
    var var_3 = -273f;
    var var_4 = Struct_5(var_0, Struct_1(-7490i), func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1202f + -383f) * -483f), -762f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(501f, 782f)), _wgslsmith_f_op_f32(-1000f * -1680f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

