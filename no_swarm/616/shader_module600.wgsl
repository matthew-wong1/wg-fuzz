struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: f32;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> u32 {
    global1 = u_input.a.x;
    global0 = arg_0;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(319f, _wgslsmith_f_op_f32(f32(-1f) * -1398f), arg_0.a.x)) + -760f));
    var var_0 = !any(!select(!vec4<bool>(arg_0.a.x, false, true, arg_0.c), vec4<bool>(false, false, global0.a.x, false), select(vec4<bool>(false, true, arg_0.c, false), vec4<bool>(false, false, global0.c, global0.a.x), arg_0.c)));
    let var_1 = _wgslsmith_mult_i32(select(~reverseBits(1i), _wgslsmith_mult_i32(u_input.a.x << (abs(1u) % 32u), abs(u_input.a.x)), select(true, any(!vec4<bool>(true, false, false, global0.a.x)), global0.c)), ~u_input.a.x);
    return _wgslsmith_div_u32(28499u, ~u_input.b);
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(630f, -1311f, -643f) + vec3<f32>(669f, -1006f, 1583f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-664f, 439f, 810f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(583f, -949f, -3100f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(143f, 633f, -1000f), vec3<f32>(314f, 923f, -912f), global0.a.x)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(3010f, 379f, 1247f), vec3<f32>(-845f, -636f, 332f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2413f, -1000f, -651f))))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(977f - 249f));
    var var_1 = Struct_1(global0.a, ~1u, !global0.a.x);
    var var_2 = _wgslsmith_add_vec4_u32(abs(vec4<u32>(~_wgslsmith_clamp_u32(1u, 0u, 42799u), var_1.b, firstLeadingBit(50057u), 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(min(4294967295u, func_3(Struct_1(var_1.a, global0.b, var_1.c))), global0.b, var_1.b, 0u), min(~(vec4<u32>(var_1.b, var_1.b, 32625u, 4294967295u) >> (vec4<u32>(66795u, var_1.b, global0.b, global0.b) % vec4<u32>(32u))), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(34546u, 28110u, 8157u, 0u), vec4<u32>(u_input.b, var_1.b, var_1.b, global0.b))))));
    let var_3 = _wgslsmith_sub_vec3_u32(~var_2.yyy, vec3<u32>(max(min(_wgslsmith_dot_vec3_u32(var_2.xxx, vec3<u32>(global0.b, u_input.c, var_2.x)), _wgslsmith_mult_u32(64186u, var_2.x)), firstLeadingBit(_wgslsmith_clamp_u32(58575u, 0u, 4294967295u))), 4294967295u, u_input.d.x));
    return Struct_1(vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -786f) <= var_0.x, all(!(!vec2<bool>(global0.c, false))), true), var_3.x, var_1.c);
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = func_2(any(select(vec3<bool>(arg_0.c, true, !arg_0.c), vec3<bool>(true, arg_0.a.x, true), true)));
    var var_1 = arg_0.c;
    var_0 = func_2(false == all(func_2(true).a));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-953f * -394f) - _wgslsmith_f_op_f32(-1906f + 436f))), 1000f)));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a, _wgslsmith_dot_vec3_u32(select(~abs(vec3<u32>(global0.b, 0u, 0u)), abs(firstLeadingBit(vec3<u32>(u_input.c, global0.b, 4294967295u))), global0.c), vec3<u32>(0u, min(_wgslsmith_add_u32(u_input.c, 1u), global0.b), ~func_1(Struct_1(vec3<bool>(false, global0.c, false), 36178u, global0.c)))), global0.a.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(615f, 1013f, 595f)))) - vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(409f, 2077f, 168f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-648f, 1486f, -213f), vec3<f32>(1967f, -108f, 647f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(310f, -1550f, -1494f))))))));
    let var_2 = -u_input.a | ~(-_wgslsmith_add_vec4_i32(select(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), false), ~u_input.a));
    var var_3 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(var_0.b, var_0.b), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, global0.b, var_0.b), vec3<u32>(61540u, 100656u, 4294967295u))), _wgslsmith_add_vec2_u32(u_input.d, _wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.b, u_input.d.x)), u_input.d)));
    var_3 = 37535u;
    var var_4 = Struct_1(vec3<bool>((!var_0.c | true) || !all(vec2<bool>(var_0.c, global0.c)), false, func_2(!any(vec2<bool>(true, global0.a.x))).c), ~0u, u_input.a.x <= (u_input.a.x << (abs(~17966u) % 32u)));
    var var_5 = Struct_1(!vec3<bool>(all(!global0.a), false, true), ~select(max(_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(91043u, var_0.b)), func_3(Struct_1(global0.a, global0.b, true))), firstTrailingBit(_wgslsmith_mod_u32(76821u, 4294967295u)), var_4.a.x), true);
    let var_6 = 4294967295u ^ _wgslsmith_mod_u32(1u | ~var_0.b, ~var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_1.x - -1000f), -2313f, var_1.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, 108f, var_1.x))))))))), _wgslsmith_f_op_f32(1000f + 1280f), -1i);
}

