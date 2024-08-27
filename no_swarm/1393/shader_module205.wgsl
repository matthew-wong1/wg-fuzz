struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32>;

var<private> global2: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: i32) -> u32 {
    var var_0 = Struct_1(4294967295u & global0.a, vec2<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(0i, -5801i, global2.b.x), global0.b.x) << (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(13148u, u_input.a.x, global2.a, 0u) ^ u_input.a) % 32u), arg_1));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(910f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(step(679f, global1.x))), _wgslsmith_f_op_f32(-global1.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, -395f, global1.x), vec3<f32>(-1000f, 679f, global1.x)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -419f, 2448f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-569f, -1000f, global1.x), vec3<f32>(global1.x, global1.x, global1.x)))))));
    let var_1 = Struct_1(var_0.a ^ var_0.a, vec2<i32>(6733i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 0i, -55015i), firstTrailingBit(vec3<i32>(global0.b.x, 46612i, arg_1)))));
    global0 = var_1;
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.a.yzx, vec3<u32>(~(~u_input.a.x), ~firstTrailingBit(1245u), _wgslsmith_dot_vec2_u32(select(u_input.a.xy, vec2<u32>(global2.a, 0u), true), vec2<u32>(u_input.a.x, 1u) >> (u_input.a.ww % vec2<u32>(32u))))), vec2<i32>(2147483647i, _wgslsmith_add_i32(var_1.b.x, ~12670i)));
    return 13323u;
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: u32) -> vec2<i32> {
    return -abs(-(vec2<i32>(global2.b.x, 0i) & u_input.c.zx) ^ global2.b);
}

fn func_2(arg_0: i32) -> vec3<f32> {
    var var_0 = Struct_1(~0u, -global0.b);
    var var_1 = Struct_1(~max(5334u, _wgslsmith_sub_u32(~global2.a, global2.a | 78672u)), func_4(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), ~abs(_wgslsmith_div_u32(var_0.a, u_input.a.x)), ~func_3(false, 46358i)));
    var var_2 = ~(~(abs(25632u) | u_input.a.x) << (func_3(true, _wgslsmith_mod_i32(reverseBits(-2147483647i), global0.b.x | var_0.b.x)) % 32u));
    let var_3 = _wgslsmith_mod_i32(max(u_input.c.x >> (countOneBits(_wgslsmith_div_u32(u_input.a.x, 4294967295u)) % 32u), _wgslsmith_sub_i32(-_wgslsmith_mod_i32(2147483647i, arg_0), ~_wgslsmith_add_i32(-26763i, var_0.b.x))), countOneBits(abs(firstLeadingBit(global2.b.x))));
    var var_4 = Struct_1(~(~min(20116u, 4294967295u)), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.b.x, -5187i), -vec2<i32>(2147483647i, 1892i)), ~abs(global2.b)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(853f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + -1000f), _wgslsmith_f_op_f32(floor(-193f))), 118f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1271f - global1.x), 306f, true)), -1408f))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, -607f, global1.x), vec3<f32>(572f, global1.x, -874f), vec3<bool>(true, true, false))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1263f, global1.x, 433f)))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(-firstTrailingBit(global0.b.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-441f, global1.x, global1.x), vec3<f32>(global1.x, global1.x, -241f), true)) + _wgslsmith_div_vec3_f32(vec3<f32>(-2494f, 1487f, -359f), vec3<f32>(-968f, global1.x, global1.x))), _wgslsmith_div_vec3_f32(vec3<f32>(1069f, global1.x, 1167f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(213f, 1198f, global1.x)))), vec3<bool>(true, true, true))), !all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false))))));
    global2 = Struct_1(~(15283u << (~_wgslsmith_dot_vec3_u32(u_input.a.zxz, u_input.a.xzy) % 32u)), vec2<i32>(-_wgslsmith_dot_vec2_i32(global0.b, global2.b | vec2<i32>(1i, global2.b.x)), _wgslsmith_div_i32(-global0.b.x, u_input.c.x)));
    var var_0 = Struct_1(global2.a, u_input.c.yy);
    var var_1 = all(vec3<bool>(true, any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), false)), false));
    var var_2 = firstLeadingBit(func_4(!vec3<bool>(all(vec4<bool>(false, false, true, false)), true, false), 1u, global0.a));
    return 24859u >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(~(arg_1.a << (global0.a % 32u)), 1u), 34309u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-804f))), _wgslsmith_f_op_f32(global1.x + 1070f))));
    global0 = Struct_1(4294967295u, -abs(vec2<i32>(-13996i, global2.b.x) & (vec2<i32>(29230i, global0.b.x) | vec2<i32>(u_input.b.x, global2.b.x))));
    let var_1 = vec3<u32>(_wgslsmith_mult_u32(abs(global2.a), countOneBits(~27796u)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, global0.a), _wgslsmith_mod_u32(~1u | func_1(Struct_1(1u, global2.b), Struct_1(u_input.a.x, u_input.c.yz)), ~u_input.a.x >> (1u % 32u))), u_input.a.x);
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1000f, -443f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, _wgslsmith_f_op_f32(580f - var_0), _wgslsmith_f_op_f32(f32(-1f) * -869f)), vec3<f32>(_wgslsmith_f_op_f32(var_0 - 1294f), _wgslsmith_div_f32(293f, 1496f), _wgslsmith_f_op_f32(-var_0)), true)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_div_f32(-1356f, 231f), 1611f)));
    var var_2 = 1u;
    global2 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~30409u, _wgslsmith_mod_u32(4294967295u ^ var_1.x, global2.a)), countOneBits(~u_input.a.yx)), min(global2.b, vec2<i32>(global0.b.x, u_input.c.x)));
    var var_3 = _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b.x, u_input.c.x, countOneBits(-2147483647i), -2147483647i), ~max(vec4<i32>(global0.b.x, 1i, global0.b.x, u_input.b.x), -u_input.c)), _wgslsmith_div_vec4_i32(u_input.c, abs(~reverseBits(vec4<i32>(20664i, 0i, 0i, -1i)))));
    let var_4 = true;
    global2 = Struct_1(~var_1.x, vec2<i32>(-45898i, global2.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec3<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c.xwx | vec3<i32>(31420i, u_input.b.x, 0i), vec3<i32>(global2.b.x, u_input.c.x, -21235i)), u_input.c.x));
}

