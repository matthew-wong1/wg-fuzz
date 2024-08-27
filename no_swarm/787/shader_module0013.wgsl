struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec4<bool>, 2>;

var<private> global2: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> f32 {
    global1 = array<vec4<bool>, 2>();
    global2 = array<vec4<bool>, 2>();
    global2 = array<vec4<bool>, 2>();
    global1 = array<vec4<bool>, 2>();
    global1 = array<vec4<bool>, 2>();
    return _wgslsmith_f_op_f32(max(-1299f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-441f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(146f + 573f))))));
}

fn func_3() -> vec4<i32> {
    var var_0 = countOneBits(vec2<u32>(_wgslsmith_sub_u32(firstTrailingBit(global0.x), _wgslsmith_dot_vec4_u32(u_input.d, u_input.d << (u_input.d % vec4<u32>(32u)))), 1u));
    var var_1 = true;
    let var_2 = true;
    global0 = u_input.d.zw;
    var_1 = var_2;
    return vec4<i32>(-46388i, _wgslsmith_dot_vec4_i32(abs(~(vec4<i32>(u_input.e.x, u_input.c.x, -2061i, 0i) ^ vec4<i32>(u_input.e.x, u_input.e.x, u_input.a, -1i))), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-5004i, -2147483647i, -2147483647i, 8311i), vec4<i32>(0i, u_input.c.x, u_input.b, 22825i) ^ vec4<i32>(0i, u_input.b, u_input.b, u_input.b)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.a, u_input.b, -1i), vec4<i32>(u_input.e.x, u_input.a, u_input.a, -1i)), ~vec4<i32>(-1i, u_input.c.x, u_input.c.x, 1i)))), u_input.e.x, u_input.e.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec4<u32>) -> f32 {
    var var_0 = Struct_1(vec3<bool>(true, true, true));
    global0 = _wgslsmith_sub_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(u_input.d.yx, min(~vec2<u32>(101068u, 16649u), arg_2.zw ^ vec2<u32>(0u, arg_2.x)))), _wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(u_input.d.zw, vec2<u32>(arg_2.x, arg_2.x) << (arg_2.zy % vec2<u32>(32u)), vec2<u32>(global0.x, global0.x)), _wgslsmith_clamp_vec2_u32(~reverseBits(arg_2.xw), _wgslsmith_div_vec2_u32(min(arg_2.zx, vec2<u32>(58258u, global0.x)), u_input.d.yx), vec2<u32>(4294967295u >> (u_input.d.x % 32u), 0u))));
    global2 = array<vec4<bool>, 2>();
    var var_1 = Struct_2(u_input.d.yy, vec2<bool>(false, true));
    global1 = array<vec4<bool>, 2>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -651f) + _wgslsmith_f_op_f32(trunc(1476f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(302f)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> i32 {
    global2 = array<vec4<bool>, 2>();
    global2 = array<vec4<bool>, 2>();
    global1 = array<vec4<bool>, 2>();
    var var_0 = vec3<f32>(141f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(404f, -167f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(297f, -186f)), _wgslsmith_f_op_f32(func_2()))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_3(), -vec4<i32>(-1i, arg_0.x, arg_1.b, arg_3), vec4<u32>(4294967295u, 38375u, u_input.d.x, 4305u))) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-114f, -235f)))))));
    var var_1 = arg_2.a;
    return _wgslsmith_dot_vec4_i32(~(-(vec4<i32>(arg_3, arg_3, arg_0.x, -2147483647i) & vec4<i32>(0i, arg_0.x, u_input.e.x, 11589i))), abs(firstLeadingBit(vec4<i32>(u_input.e.x, 1i, arg_0.x, arg_0.x)))) >> (_wgslsmith_clamp_u32(~u_input.d.x, 4294967295u, u_input.d.x) % 32u);
}

fn func_5(arg_0: i32) -> Struct_2 {
    global1 = array<vec4<bool>, 2>();
    let var_0 = ~_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mod_u32(global0.x ^ 4294967295u, max(global0.x, 0u))), global0.x);
    global1 = array<vec4<bool>, 2>();
    global1 = array<vec4<bool>, 2>();
    let var_1 = u_input.e;
    return Struct_2(u_input.d.wx, vec2<bool>(!(43714i <= (var_1.x << (u_input.d.x % 32u))), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~(~_wgslsmith_dot_vec2_i32(u_input.e, u_input.c)) ^ -_wgslsmith_div_i32(-1i, func_1(vec2<i32>(-1i, u_input.b), Struct_3(Struct_1(vec3<bool>(true, true, false)), u_input.c.x, Struct_1(vec3<bool>(true, false, false)), Struct_2(u_input.d.zx, vec2<bool>(true, false)), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, true, true)), u_input.b)));
    var_0 = Struct_2(~u_input.d.wy & reverseBits(var_0.a), select(var_0.b, var_0.b, any(select(vec3<bool>(var_0.b.x, var_0.b.x, true), vec3<bool>(true, var_0.b.x, var_0.b.x), !vec3<bool>(false, var_0.b.x, false)))));
    let var_1 = ~(~u_input.e);
    var var_2 = ~global0.x;
    global1 = array<vec4<bool>, 2>();
    var var_3 = var_0.b.x;
    let var_4 = vec3<bool>(var_0.b.x & true, true, all(select(vec2<bool>(true, true), !vec2<bool>(var_0.b.x, false), vec2<bool>(all(vec2<bool>(false, true)), !var_0.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.x, -vec2<i32>(func_3().x, countOneBits(55727i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-835f, 671f))))), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(select(~vec4<u32>(4294967295u, 1u, global0.x, 43810u), ~vec4<u32>(var_0.a.x, var_0.a.x, u_input.d.x, u_input.d.x), select(vec4<bool>(var_4.x, var_4.x, var_4.x, var_4.x), vec4<bool>(var_0.b.x, true, var_0.b.x, var_4.x), false)), u_input.d), select(firstLeadingBit(u_input.d), ~vec4<u32>(1u, u_input.d.x, var_0.a.x, var_0.a.x), true) & vec4<u32>(abs(45206u), var_0.a.x, _wgslsmith_mod_u32(global0.x, global0.x), 20495u)));
}

