struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 23593u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: bool, arg_3: u32) -> f32 {
    let var_0 = Struct_2(false);
    global0 = ((_wgslsmith_clamp_u32(arg_3, _wgslsmith_clamp_u32(u_input.b.x, 0u, u_input.b.x), _wgslsmith_clamp_u32(arg_3, u_input.b.x, u_input.b.x)) ^ min(1u, firstLeadingBit(arg_3))) >> (26150u % 32u)) >> (arg_3 % 32u);
    var var_1 = abs(u_input.d);
    let var_2 = ~(_wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.d, arg_3, 4294967295u, 1u) << (vec4<u32>(0u, arg_3, arg_3, 99952u) % vec4<u32>(32u))), vec4<u32>(~u_input.a.x, 1u, 0u, arg_3), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_3, 16077u, 37797u, arg_3), vec4<u32>(u_input.a.x, arg_3, u_input.b.x, u_input.a.x))) ^ select(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, 1u), ~21614u, 23154u, 4294967295u), vec4<u32>(_wgslsmith_mod_u32(arg_3, arg_3), _wgslsmith_mult_u32(1u, u_input.a.x), ~arg_3, 4294967295u), false));
    var_1 = 4294967295u;
    return arg_1.x;
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>) -> bool {
    return all(select(!(!arg_2.zy), !vec2<bool>(false, any(arg_2.yyz)), arg_2.x));
}

fn func_1() -> u32 {
    var var_0 = 0u;
    var var_1 = _wgslsmith_f_op_f32(func_2(true, vec4<f32>(-100f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -250f) * _wgslsmith_f_op_f32(step(-415f, _wgslsmith_f_op_f32(900f + 911f)))), -446f, -294f), true, 1u));
    global0 = 57361u;
    let var_2 = vec3<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(Struct_2(true), -1770f, vec4<bool>(false, true, false, true))), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), false);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(554f, -585f, 1156f, 224f), vec4<f32>(920f, -832f, -1007f, 443f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1382f, -2422f, 905f, 1570f))))));
    return ~(~(u_input.d >> (6092u % 32u)));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec4<i32>) -> Struct_1 {
    global0 = u_input.d;
    var var_0 = _wgslsmith_clamp_vec4_u32(~abs(~vec4<u32>(76411u, 0u, 50775u, 62403u) ^ (vec4<u32>(u_input.a.x, 4294967295u, u_input.b.x, u_input.d) << (vec4<u32>(u_input.b.x, 24869u, 4294967295u, 0u) % vec4<u32>(32u)))), select(vec4<u32>(~_wgslsmith_mult_u32(u_input.b.x, u_input.d), u_input.b.x, firstLeadingBit(~24637u), ~4294967295u), vec4<u32>(u_input.d, 126603u, ~(~u_input.d), _wgslsmith_div_u32(u_input.b.x, u_input.b.x)), false), vec4<u32>(~(~u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.a.yz | vec2<u32>(u_input.d, 4294967295u), u_input.a.xx), 8292u, reverseBits(reverseBits(u_input.a.x))) & ~(~vec4<u32>(u_input.b.x, u_input.a.x, 50227u, 4294967295u)));
    var_0 = vec4<u32>(u_input.d, var_0.x, var_0.x, ~var_0.x);
    var var_1 = Struct_3(var_0.x, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -569f), _wgslsmith_f_op_f32(abs(940f)))), arg_0, -253f, 502f)), Struct_2(arg_1));
    var var_2 = ~_wgslsmith_clamp_i32(-25889i, _wgslsmith_dot_vec2_i32(arg_2.xz, vec2<i32>(32583i, 21375i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), -vec2<i32>(arg_2.x, -33579i)) | 0i);
    return Struct_1(_wgslsmith_f_op_vec4_f32(var_1.b.a + _wgslsmith_f_op_vec4_f32(-var_1.b.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(~(~u_input.a.x), ~1u) ^ (84312u & ~firstLeadingBit(u_input.b.x)), _wgslsmith_sub_u32(u_input.b.x, 8711u));
    var var_0 = Struct_3(u_input.a.x, func_4(_wgslsmith_f_op_f32(f32(-1f) * -298f), (~1100u << (0u % 32u)) > (func_1() >> (u_input.d % 32u)), -min(countOneBits(vec4<i32>(20793i, u_input.c, -50169i, -1i)), ~vec4<i32>(u_input.c, 2378i, u_input.c, -15928i))), Struct_2(true));
    var_0 = Struct_3(u_input.b.x | _wgslsmith_div_u32(6279u, var_0.a), func_4(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.b.a.x, var_0.b.a.x)), var_0.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_0.c.a, var_0.b.a, var_0.c.a, 3161u)) - _wgslsmith_f_op_f32(sign(var_0.b.a.x))), var_0.c.a)), !(!var_0.c.a), countOneBits(vec4<i32>(-25917i, _wgslsmith_mod_i32(0i, u_input.c), ~(-2147483647i), _wgslsmith_clamp_i32(-30997i, 2147483647i, u_input.c)))), Struct_2(true));
    global0 = ~(~_wgslsmith_mod_u32(0u, u_input.d));
    let var_1 = ~(~(~select(vec4<u32>(0u, 10095u, u_input.b.x, var_0.a) << (vec4<u32>(u_input.a.x, 5928u, 4294967295u, u_input.b.x) % vec4<u32>(32u)), ~vec4<u32>(var_0.a, var_0.a, 32252u, var_0.a), select(vec4<bool>(false, true, var_0.c.a, true), vec4<bool>(var_0.c.a, var_0.c.a, var_0.c.a, var_0.c.a), var_0.c.a))));
    global0 = 1u;
    var var_2 = _wgslsmith_f_op_f32(var_0.b.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2196f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 1i, -6097i, u_input.c) | vec4<i32>(2147483647i, 0i, -2147483647i, -1i), firstTrailingBit(vec4<i32>(-2147483647i, 2872i, u_input.c, 11531i)), vec4<i32>(u_input.c, u_input.c, u_input.c, -1i) >> (var_1 % vec4<u32>(32u))), abs(vec4<i32>(u_input.c, 62066i, u_input.c, 0i))), vec4<i32>(-1i) * -vec4<i32>(65004i, 0i, 15430i, -1i), vec4<i32>(1i, u_input.c, firstTrailingBit(~u_input.c), -(u_input.c & u_input.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b.a.x, var_0.b.a.x, -716f)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-504f, var_0.b.a.x, 571f)), var_0.b.a.wzw))), var_0.a, ~(~min(var_1.x, 0u)) ^ var_0.a);
}

