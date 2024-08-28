struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: Struct_3,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec3<bool>(false, false, false), 4690u, 0i), Struct_2(vec3<bool>(true, false, false), 74361u, 22724i), Struct_2(vec3<bool>(true, false, true), 17796u, 2147483647i), Struct_2(vec3<bool>(true, false, false), 4294967295u, -22383i), Struct_2(vec3<bool>(false, true, true), 0u, i32(-2147483648)), Struct_2(vec3<bool>(false, true, true), 0u, -7277i), Struct_2(vec3<bool>(false, false, true), 0u, 30167i), Struct_2(vec3<bool>(false, false, true), 1u, 69881i), Struct_2(vec3<bool>(false, true, true), 16390u, 56081i));

var<private> global1: f32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>) -> f32 {
    let var_0 = Struct_1(arg_0.a.x);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1694f - 1487f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(307f)) - 444f));
    var var_1 = -1i;
    global0 = array<Struct_2, 9>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-376f - -2577f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-185f)))));
}

fn func_2(arg_0: f32) -> Struct_5 {
    global0 = array<Struct_2, 9>();
    var var_0 = ~vec4<i32>(select(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), -36378i, true), -2147483647i, -2147483647i, u_input.c.x) ^ ~(~(-vec4<i32>(u_input.b, u_input.c.x, u_input.c.x, -2147483647i) | abs(vec4<i32>(u_input.c.x, u_input.c.x, 9186i, 7518i))));
    var var_1 = var_0.x;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -885f)), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-333f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -919f) + -1826f))));
    let var_3 = _wgslsmith_div_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(-(vec4<i32>(var_0.x, u_input.c.x, -2147483647i, u_input.b) >> (vec4<u32>(12401u, 0u, 0u, u_input.d.x) % vec4<u32>(32u))), vec4<i32>(select(var_0.x, 5500i, false), -10151i, -762i, 1i))), vec4<i32>(var_0.x, ~abs(~var_0.x), 0i, u_input.c.x));
    return Struct_5(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -27510i, -2147483647i | u_input.b, _wgslsmith_div_i32(77407i, 3643i)), vec3<i32>(min(-16898i, var_0.x), 1i, var_0.x))), Struct_2(vec3<bool>(any(vec3<bool>(false, true, true)), false, true), _wgslsmith_add_u32(abs(reverseBits(u_input.a)), ~44663u >> (~u_input.a % 32u)), u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + 640f), _wgslsmith_f_op_f32(func_3(Struct_3(vec2<i32>(0i, var_3.x), vec2<i32>(-2147483647i, var_3.x)), vec3<bool>(true, false, true)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -711f))) * arg_0), -var_0.x);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a.x)) - arg_0.a.x))));
    var var_2 = func_2(arg_0.d.x);
    var var_3 = var_2.a;
    global1 = arg_0.d.x;
    return ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x & var_2.b.b, 16983u, u_input.d.x, u_input.d.x), min(vec4<u32>(arg_0.e.b, 4294967295u, 1u, 1u), vec4<u32>(u_input.a, var_2.b.b, 0u, var_2.b.b)) ^ vec4<u32>(u_input.a, 0u, 1u, arg_0.e.b)) << (vec4<u32>(~(~var_2.b.b << (_wgslsmith_div_u32(4294967295u, 1u) % 32u)), arg_0.e.b & ~4294967295u, _wgslsmith_add_u32(u_input.a, ~arg_0.e.b) | var_2.b.b, ~_wgslsmith_sub_u32(var_2.b.b, var_2.b.b)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2415f), _wgslsmith_f_op_f32(f32(-1f) * -1332f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -150f)))))));
    var var_0 = vec2<u32>(101161u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 1u, 1u), ~func_1(Struct_4(vec2<f32>(-2000f, 860f), u_input.c.x, Struct_3(u_input.c, vec2<i32>(u_input.c.x, 3613i)), vec3<f32>(343f, -400f, 779f), Struct_2(vec3<bool>(false, true, true), 14316u, -47466i)), Struct_1(u_input.c.x))), vec4<u32>(~(~u_input.a), _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 6989u), 0u ^ u_input.a), u_input.d.x, 13287u)));
    let var_1 = !(!any(vec3<bool>(true, true, true)));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(u_input.c, vec2<i32>(u_input.b, -2147483647i)), !vec3<bool>(var_1, var_1, true)))) + -1603f), 1000f);
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-859f, 1043f, 1000f, 319f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-572f, 324f, -186f, 1075f))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-720f, 1000f, -1000f, -690f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-928f, 239f, -144f, -322f), vec4<f32>(725f, -1000f, -284f, 578f)))))));
    var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-800f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), var_2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x - var_2.x)))), vec4<f32>(1f, -919f, _wgslsmith_f_op_f32(-var_2.x), var_2.x)), vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x + 124f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - 476f), _wgslsmith_f_op_f32(-var_2.x))));
    global0 = array<Struct_2, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_clamp_u32(var_0.x, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 43481u, 4294967295u), vec3<u32>(4294967295u, var_0.x, 4294967295u))), min(~u_input.a, ~27373u)), ~42803u, _wgslsmith_mod_u32(~u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 4294967295u, var_0.x) << (vec3<u32>(0u, u_input.a, 0u) % vec3<u32>(32u)), vec3<u32>(15445u, u_input.a, 1u))), abs(4294967295u)));
}

