struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool;

var<private> global2: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(2147483647i, -27320i, -174f, true), Struct_3(257i, 37026i, -764f, false), Struct_3(2147483647i, -13162i, -550f, false), Struct_3(33280i, 9084i, 1061f, false), Struct_3(i32(-2147483648), 46840i, -686f, true), Struct_3(-1i, 2147483647i, -708f, false), Struct_3(0i, 10807i, 350f, false), Struct_3(-16973i, -12799i, 1000f, true), Struct_3(-27470i, -14010i, -1000f, true), Struct_3(1i, -22316i, -1000f, false), Struct_3(2147483647i, 0i, 669f, false), Struct_3(-8810i, 94907i, 1360f, false), Struct_3(-4862i, 1i, -558f, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    let var_0 = Struct_2(vec3<f32>(1f, 1f, 1f), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -380f), 1673f, 564f))));
    let var_1 = Struct_4(0u & ~firstLeadingBit(u_input.a & 54684u), 10338u);
    global1 = true;
    var var_2 = 1729f;
    global2 = array<Struct_3, 13>();
    return true;
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = func_3();
    global0 = ~31762u;
    var_0 = true;
    var_0 = all(select(select(select(!vec2<bool>(arg_0, false), select(vec2<bool>(true, arg_0), vec2<bool>(false, false), vec2<bool>(false, arg_0)), vec2<bool>(false, arg_0)), vec2<bool>(true, true), any(select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0)))), !select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), true), arg_0));
    global2 = array<Struct_3, 13>();
    return 52255u;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    global1 = !(!any(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)));
    global0 = max(~_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.x, 1u, 76220u)), countOneBits(vec3<u32>(1u, 4294967295u, u_input.b)))), u_input.b);
    let var_0 = select(!(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)))), select(vec4<bool>(true & select(false, true, false), any(vec4<bool>(false, false, true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), !any(vec3<bool>(false, false, true))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), false))), all(vec2<bool>(true, true)) & true), any(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), false)) == !any(vec4<bool>(false, true, false, false)));
    return 1000f;
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 991f, arg_0, arg_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 191f, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -679f, arg_0, -331f), vec4<f32>(arg_0, 676f, -691f, 1000f), vec4<bool>(false, true, false, true))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-608f, -1016f, -656f, arg_0)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -888f))), 706f, 283f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -3254f))));
    let var_1 = -1118f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~vec2<u32>(_wgslsmith_mult_u32(u_input.b, 4294967295u), func_2(true)), var_0.xy, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(528f, var_1)), var_1, _wgslsmith_f_op_f32(min(-1000f, arg_0)))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), 1107f));
    global1 = true;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1491f);
    return global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, ~(4294967295u | _wgslsmith_clamp_u32(u_input.b, 30722u, 13291u))), 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1820f - -1832f) - -347f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1922f + 1427f))), 24226i);
    global1 = !all(vec4<bool>(var_0.d, false, select(any(vec4<bool>(false, var_0.d, true, true)), var_0.d, true), all(vec2<bool>(var_0.d, true))));
    global1 = true;
    global0 = 17940u;
    let var_1 = ~(~select(_wgslsmith_mod_i32(abs(15319i), ~5437i), _wgslsmith_dot_vec4_i32(vec4<i32>(-3752i, 2147483647i, var_0.b, 0i), u_input.d), true != var_0.d));
    var var_2 = Struct_2(vec3<f32>(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-779f + 1962f) - -1468f), var_1).c, 103f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec2<u32>(u_input.b, 59675u), vec2<f32>(1000f, var_0.c), Struct_1(vec3<f32>(var_0.c, var_0.c, var_0.c)))), -1472f)), Struct_1(vec3<f32>(func_1(_wgslsmith_f_op_f32(var_0.c - var_0.c), u_input.d.x).c, _wgslsmith_f_op_f32(-2498f - _wgslsmith_f_op_f32(round(var_0.c))), _wgslsmith_f_op_f32(round(-831f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~var_0.b), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 14146u) ^ ~vec2<u32>(1u, u_input.b), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 0u))) & ~(~vec2<u32>(u_input.b, u_input.a)), _wgslsmith_f_op_f32(-var_0.c));
}

