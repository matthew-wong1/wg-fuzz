struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<i32>) -> bool {
    let var_0 = arg_1.x;
    global0 = array<vec3<u32>, 22>();
    let var_1 = _wgslsmith_div_u32(_wgslsmith_div_u32(arg_0.c, abs(55502u)), abs(1u));
    global0 = array<vec3<u32>, 22>();
    var var_2 = -555f;
    return (arg_0.a & abs(arg_2.x)) < select(-2147483647i, -37946i, arg_0.b);
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_2(~reverseBits(u_input.a.x), u_input.d, Struct_1(0i, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false))) | (u_input.d == u_input.c.x), 45904u, ~reverseBits(u_input.d) << ((4294967295u | u_input.c.x) % 32u)));
    var_0 = Struct_2(var_0.a, 0u, var_0.c);
    let var_1 = Struct_2(firstTrailingBit(var_0.c.a), ~firstLeadingBit(~u_input.c.x), Struct_1(-1i, true, _wgslsmith_mod_u32(4294967295u, u_input.b.x) << (~(var_0.b >> (4294967295u % 32u)) % 32u), u_input.d));
    var_0 = var_1;
    var var_2 = 31165u;
    return select(select(vec3<bool>(!(!var_1.c.b), -1040f <= _wgslsmith_f_op_f32(step(661f, 1000f)), var_1.c.b), !select(select(vec3<bool>(var_0.c.b, true, var_0.c.b), vec3<bool>(false, false, true), vec3<bool>(false, var_0.c.b, var_0.c.b)), vec3<bool>(var_0.c.b, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, var_1.c.b), vec3<bool>(false, true, var_1.c.b))), select(vec3<bool>(false, true, var_1.c.b), vec3<bool>(true, var_1.c.b, true), vec3<bool>(var_1.c.b, true, all(vec2<bool>(var_0.c.b, true))))), select(vec3<bool>(var_1.c.b, -1199f == _wgslsmith_f_op_f32(sign(1518f)), var_1.c.b), vec3<bool>(-1087f <= _wgslsmith_f_op_f32(step(-1832f, 364f)), true, false), vec3<bool>(true, !var_0.c.b, func_2(var_0.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, 902f, 1800f) - vec4<f32>(548f, 769f, -166f, 478f)), ~u_input.a))), !(_wgslsmith_mod_i32(max(-1i, 44994i), ~var_1.c.a) <= -var_0.a));
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    global0 = array<vec3<u32>, 22>();
    let var_0 = u_input.a.x & firstLeadingBit(-(_wgslsmith_sub_i32(1i, arg_0.c.a) & abs(arg_0.a)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-149f - _wgslsmith_div_f32(-970f, 1019f)))));
    global0 = array<vec3<u32>, 22>();
    var var_2 = func_2(arg_0.c, vec4<f32>(_wgslsmith_f_op_f32(min(var_1, var_1)), -243f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1))), -1767f), -_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 0i), max(u_input.a, vec2<i32>(u_input.a.x, arg_0.a))), -vec2<i32>(arg_0.c.a, u_input.a.x)));
    return select(vec3<bool>(!(~18798u > max(arg_0.c.d, u_input.d)), false, !(false != arg_0.c.b)), !select(!vec3<bool>(true, arg_0.c.b, arg_0.c.b), func_3(), select(false, arg_0.c.b, true) || any(vec2<bool>(arg_0.c.b, arg_0.c.b))), select(select(func_3(), func_3(), vec3<bool>(true, true, true)), select(!select(vec3<bool>(false, arg_0.c.b, arg_0.c.b), vec3<bool>(false, arg_0.c.b, true), vec3<bool>(true, false, arg_0.c.b)), vec3<bool>(arg_0.c.b, true, true), vec3<bool>(arg_0.c.b, !arg_0.c.b, true)), false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 22>();
    global0 = array<vec3<u32>, 22>();
    let var_0 = Struct_1(2147483647i, true | (any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))) | true), u_input.c.x, ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.b, u_input.c), 1u));
    global0 = array<vec3<u32>, 22>();
    var var_1 = !select(select(select(vec3<bool>(var_0.b, var_0.b, var_0.b), !vec3<bool>(true, var_0.b, false), !vec3<bool>(true, true, var_0.b)), vec3<bool>(2147483647i <= u_input.a.x, false, u_input.d <= 1u), !var_0.b || var_0.b), select(select(vec3<bool>(true, var_0.b, var_0.b), !vec3<bool>(var_0.b, true, var_0.b), var_0.b), !func_1(Struct_2(26185i, u_input.d, Struct_1(u_input.a.x, var_0.b, 19828u, 1u))), vec3<bool>(!var_0.b, var_0.b, false)), true);
    var_1 = func_3();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 879f) + 2411f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c.x, 0u, 7532u, 1u), ~vec4<u32>(23659u, u_input.b.x, var_0.c, var_0.c) ^ select(vec4<u32>(1u, 1u, var_0.d, u_input.c.x), vec4<u32>(1u, u_input.c.x, 4294967295u, 22878u), true)));
}

