struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(-1i, 48881i), vec2<i32>(47022i, -1i), vec2<i32>(-8459i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 13389i), vec2<i32>(1i, 10080i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, 65160i), vec2<i32>(1i, 2147483647i), vec2<i32>(30543i, i32(-2147483648)), vec2<i32>(-63036i, -4915i), vec2<i32>(59526i, 1i), vec2<i32>(i32(-2147483648), 38183i), vec2<i32>(31278i, 2147483647i), vec2<i32>(1i, 1i), vec2<i32>(12361i, -28397i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-21171i, 41473i), vec2<i32>(2227i, i32(-2147483648)), vec2<i32>(-5557i, 2534i), vec2<i32>(-14408i, 1i));

var<private> global1: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(false, -42347i, 38243u), Struct_3(true, i32(-2147483648), 16385u), Struct_3(true, 3940i, 7133u), Struct_3(false, -12862i, 4294967295u), Struct_3(true, 2147483647i, 1u), Struct_3(false, -1i, 32419u), Struct_3(true, -1536i, 1u), Struct_3(false, 24771i, 26762u), Struct_3(true, i32(-2147483648), 40880u), Struct_3(false, -1i, 4294967295u), Struct_3(false, 23616i, 89638u), Struct_3(false, -51184i, 42605u), Struct_3(false, 6067i, 41797u), Struct_3(true, 31973i, 1u), Struct_3(true, 38725i, 88170u), Struct_3(true, -9411i, 19357u), Struct_3(true, 8526i, 33584u));

var<private> global2: Struct_5;

var<private> global3: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    var var_0 = Struct_4(1000f, Struct_3(false, _wgslsmith_clamp_i32(~firstTrailingBit(u_input.e), -2147483647i, u_input.e), 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -504f), Struct_1(global2.a, true, select(true, any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), select(true, true, true))));
    global2 = Struct_5(global2.a);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-361f)))));
    var var_2 = Struct_5(u_input.a);
    var var_3 = ~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(35146u, var_2.a)), ~4294967295u), 4294967295u), firstTrailingBit(u_input.d), _wgslsmith_mult_u32(1u << (u_input.b % 32u), 2303u));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -633f)) * var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f))));
}

fn func_2(arg_0: vec2<f32>) -> bool {
    var var_0 = Struct_3(true, u_input.e, 75912u);
    var_0 = Struct_3(false, 0i, firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a, global2.a, var_0.c, 0u) & vec4<u32>(global2.a, 4294967295u, 28512u, 20036u), max(vec4<u32>(1u, 0u, 62795u, 1u), vec4<u32>(30856u, global2.a, global2.a, 1u))), ~0u & firstTrailingBit(5503u))));
    var var_1 = ~(~_wgslsmith_mult_u32(~(u_input.a ^ 0u), u_input.d));
    let var_2 = 0u;
    var var_3 = arg_0.x == _wgslsmith_f_op_f32(func_3());
    return var_0.a;
}

fn func_1() -> Struct_4 {
    let var_0 = ~vec2<u32>(_wgslsmith_mod_u32(u_input.d, 4294967295u), (~9075u << (u_input.a % 32u)) | _wgslsmith_add_u32(~u_input.a, ~u_input.d));
    let var_1 = (((true || (67867u <= u_input.b)) && select(var_0.x > 55645u, true, u_input.e != 24229i)) & (func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1841f, 735f))) | true)) & all(vec2<bool>(true, true));
    let var_2 = vec3<f32>(-427f, _wgslsmith_f_op_f32(-1214f + -1436f), 2071f);
    let var_3 = 70191i;
    let var_4 = Struct_4(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(floor(-324f))), Struct_3(var_1, 1i ^ u_input.e, global2.a), var_2.x, Struct_1(select(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global2.a, 4294967295u), vec2<u32>(1u, 0u)), var_0), abs(_wgslsmith_mod_u32(4294967295u, u_input.d)), any(select(vec4<bool>(var_1, true, true, var_1), vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(var_1, true, false, false)))), true, var_1));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<vec2<i32>, 20>();
    global2 = Struct_5(global2.a);
    var var_1 = Struct_5(0u);
    let var_2 = Struct_5(4294967295u << ((~0u >> (var_0.b.c % 32u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(3845u, ~(~(~var_0.b.c))), -reverseBits(~(u_input.c.x & var_0.b.b)), ~max(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 2597u, 99783u, 0u), vec4<u32>(u_input.a, 1u, var_2.a, 1u)), vec4<u32>(~var_0.b.c, var_1.a, u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, var_1.a, var_0.b.c), vec3<u32>(5128u, u_input.b, var_2.a)))), ~select(vec4<u32>(4294967295u, _wgslsmith_mult_u32(39755u, var_0.d.a), ~1u, _wgslsmith_add_u32(10568u, var_2.a)), _wgslsmith_div_vec4_u32(~vec4<u32>(var_2.a, var_2.a, global2.a, 0u), ~vec4<u32>(46500u, 39926u, 0u, var_1.a)), select(vec4<bool>(var_0.b.a, true, var_0.d.b, false), vec4<bool>(false, false, var_0.b.a, var_0.b.a), !vec4<bool>(true, var_0.b.a, var_0.b.a, var_0.b.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(741f - 1f), _wgslsmith_f_op_f32(1227f - _wgslsmith_f_op_f32(f32(-1f) * -347f))) * var_0.c));
}

