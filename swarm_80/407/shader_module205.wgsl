struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(23723i, -1i, -26654i, -5519i), vec4<i32>(2255i, 1i, i32(-2147483648), 1i), vec4<i32>(-14565i, 16312i, -1i, -27619i), vec4<i32>(-1i, 1i, 57199i, 0i), vec4<i32>(-6542i, 20597i, -1i, -30326i), vec4<i32>(i32(-2147483648), 0i, 60366i, -38791i), vec4<i32>(2147483647i, -23035i, -18375i, 28094i), vec4<i32>(i32(-2147483648), 29277i, 2147483647i, -33348i), vec4<i32>(-22309i, 0i, 12842i, -28809i), vec4<i32>(i32(-2147483648), 44004i, 6517i, -17720i), vec4<i32>(-11183i, -54625i, -1i, -12053i), vec4<i32>(-11876i, 0i, -81164i, -1i), vec4<i32>(1i, 0i, 1i, 32931i), vec4<i32>(i32(-2147483648), -11334i, 64304i, -1i), vec4<i32>(9951i, 35567i, 12178i, 2147483647i), vec4<i32>(-1i, -5369i, -34453i, 45412i), vec4<i32>(1i, -1i, 1i, -6875i));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec4<u32>) -> f32 {
    global0 = array<vec4<i32>, 17>();
    global0 = array<vec4<i32>, 17>();
    global0 = array<vec4<i32>, 17>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(488f, 1000f)), -971f));
    return 261f;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> vec3<bool> {
    var var_0 = Struct_2(max(u_input.c, u_input.a), Struct_1(vec2<u32>(u_input.c, ~_wgslsmith_div_u32(1u, u_input.c)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-639f - -527f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1326f) + -1389f), any(arg_0))), u_input.d.wzy), u_input.d.x);
    var_0 = Struct_2(7268u, Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.a.x, var_0.b.a.x, u_input.c) & vec3<u32>(37082u, 4294967295u, u_input.a), select(vec3<u32>(var_0.a, 1u, var_0.b.a.x), vec3<u32>(u_input.c, 4294967295u, 3306u), vec3<bool>(false, true, var_0.b.b.x))), 75508u), arg_0, -2219f, vec3<i32>(-min(28599i, -1i), var_0.b.d.x, var_0.c)), 0i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1260f)) + 703f);
    let var_2 = !vec2<bool>(false, any(!vec2<bool>(true, arg_1)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-395f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1000f, Struct_4(var_0.b, 1u), vec4<u32>(39439u, 0u, 22197u, 16912u))))), _wgslsmith_f_op_f32(var_0.b.c + _wgslsmith_div_f32(_wgslsmith_f_op_f32(555f + var_0.b.c), _wgslsmith_f_op_f32(f32(-1f) * -742f)))));
    return var_0.b.b;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: vec4<bool>) -> vec4<f32> {
    global0 = array<vec4<i32>, 17>();
    var var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(178f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -431f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -119f) - -854f)), ~countOneBits(u_input.d), Struct_1(~vec2<u32>(u_input.a, firstLeadingBit(u_input.c)), !(!func_2(vec3<bool>(false, false, arg_2.x), arg_2.x)), -196f, vec3<i32>(_wgslsmith_sub_i32(u_input.b, 44066i) << (~u_input.a % 32u), ~firstLeadingBit(u_input.d.x), _wgslsmith_div_i32(u_input.d.x | u_input.d.x, arg_0.x))));
    let var_1 = 436f;
    let var_2 = vec4<u32>(~var_0.c.a.x, ~var_0.c.a.x, 1u, _wgslsmith_div_u32(1u, 2710u));
    let var_3 = select(select(select(select(vec4<bool>(var_0.c.b.x, false, var_0.c.b.x, true), select(vec4<bool>(true, arg_2.x, true, false), arg_2, true), arg_2), !select(vec4<bool>(true, true, arg_2.x, false), vec4<bool>(false, arg_2.x, true, var_0.c.b.x), false), func_2(select(vec3<bool>(true, false, false), vec3<bool>(var_0.c.b.x, arg_2.x, var_0.c.b.x), var_0.c.b), all(var_0.c.b)).x), select(select(select(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), arg_2, true), select(vec4<bool>(var_0.c.b.x, true, true, false), vec4<bool>(false, var_0.c.b.x, var_0.c.b.x, false), true), true), arg_2, false), vec4<bool>(var_0.c.b.x, !select(arg_2.x, var_0.c.b.x, true), select(arg_2.x, select(false, arg_2.x, arg_2.x), !arg_2.x), false)), arg_2, true);
    return _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(-var_0.c.c))), var_0.c.c, -230f <= _wgslsmith_f_op_f32(-var_1))), var_0.a.x, _wgslsmith_f_op_f32(sign(115f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 17>();
    var var_0 = _wgslsmith_f_op_vec4_f32(func_1(-u_input.d.yww, 4294967295u, vec4<bool>(!(_wgslsmith_f_op_f32(select(-165f, -243f, true)) > _wgslsmith_f_op_f32(f32(-1f) * -1610f)), !any(vec3<bool>(false, false, false)), !any(vec2<bool>(true, true)), any(vec2<bool>(false, false)))));
    global0 = array<vec4<i32>, 17>();
    var var_1 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 61334u, ~u_input.a, u_input.c & u_input.c), ~(vec4<u32>(u_input.a, u_input.a, u_input.c, 26593u) >> (vec4<u32>(1u, 1u, u_input.a, u_input.a) % vec4<u32>(32u)))), ~vec4<u32>(~u_input.c, ~u_input.a, 59214u, 2496u));
    let var_2 = ~vec3<u32>(~4294967295u, ~u_input.c << (1u % 32u), abs(_wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(var_2.xx, _wgslsmith_sub_vec2_u32(var_2.zz, var_2.xx)), 54918u), ~var_2.zy), ~(~(~var_2.x) >> (var_2.x % 32u)), u_input.d.x);
}

