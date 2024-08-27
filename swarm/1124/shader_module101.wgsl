struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_2(true);
    var_0 = Struct_2(true);
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(true);
    var var_1 = Struct_2(false);
    return ~u_input.b;
}

fn func_2() -> u32 {
    var var_0 = -1i;
    global0 = 1u;
    global0 = ~14044u;
    var_0 = abs(24922i) & -u_input.b;
    var_0 = func_3(30631u);
    return ~0u;
}

fn func_1(arg_0: f32) -> i32 {
    global0 = _wgslsmith_div_u32(u_input.a, u_input.a);
    global0 = ~abs(0u);
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-322f))), _wgslsmith_f_op_f32(342f * _wgslsmith_div_f32(1020f, arg_0)), _wgslsmith_f_op_f32(min(arg_0, -2220f))))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -296f), _wgslsmith_f_op_f32(arg_0 * -1773f), -393f))));
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 27867u, max(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(1u, u_input.a, 16347u), vec3<u32>(1u, u_input.a, u_input.a))), _wgslsmith_mult_u32(0u, func_2())), vec4<u32>(404u, u_input.a, func_2(), ~(~43582u)));
    var var_2 = ~(~vec2<i32>(-max(u_input.b, u_input.b), u_input.b));
    return -1348i;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = any(select(!vec3<bool>(true, true, any(vec2<bool>(false, true))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    let var_1 = Struct_2(any(vec2<bool>(true, true)));
    var_0 = var_1.a;
    var var_2 = Struct_4(Struct_2(var_1.a), u_input.b);
    let var_3 = 48335u;
    return Struct_3(0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~(~countOneBits(u_input.a)), ~1u, abs((u_input.a ^ 1u) ^ _wgslsmith_clamp_u32(1u, u_input.a, u_input.a))), u_input.a);
    var var_0 = Struct_4(Struct_2(!(any(vec4<bool>(true, false, false, true)) | true)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, ~_wgslsmith_mult_i32(-2147483647i, u_input.b)), vec2<i32>(-4890i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -75394i), vec4<i32>(-2147483647i, 0i, u_input.b, u_input.b)), 53914i))));
    var var_1 = func_4(Struct_1(-_wgslsmith_mod_i32(-22269i, ~u_input.b), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -633f) + -1377f))), u_input.b, min(select(firstLeadingBit(countOneBits(vec2<i32>(u_input.b, u_input.b))), vec2<i32>(var_0.b, 2147483647i) >> (abs(vec2<u32>(23836u, u_input.a)) % vec2<u32>(32u)), select(!vec2<bool>(true, var_0.a.a), select(vec2<bool>(true, var_0.a.a), vec2<bool>(var_0.a.a, false), var_0.a.a), vec2<bool>(var_0.a.a, true))), countOneBits(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(var_0.b, 1i)), abs(vec2<i32>(-2147483647i, var_0.b))))));
    global0 = _wgslsmith_add_u32(u_input.a, u_input.a);
    var var_2 = reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(abs(var_1.a), abs(u_input.a)), ~1u), vec2<u32>(~max(var_1.a, 25282u), ~1u)));
    let var_3 = var_0.a;
    let var_4 = !select(select(select(vec2<bool>(false, var_0.a.a), vec2<bool>(var_0.a.a, true), vec2<bool>(true, var_3.a)), select(select(vec2<bool>(var_3.a, false), vec2<bool>(var_3.a, false), vec2<bool>(var_3.a, var_0.a.a)), vec2<bool>(var_3.a, false), vec2<bool>(var_3.a, true)), var_0.a.a), select(select(!vec2<bool>(var_3.a, false), select(vec2<bool>(true, false), vec2<bool>(var_0.a.a, var_0.a.a), true), true || var_3.a), vec2<bool>(false, !var_0.a.a), var_0.b > -u_input.b), vec2<bool>(var_0.a.a, var_0.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(1f, ~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, var_2.x, var_2.x, var_1.a), vec4<u32>(21637u, var_1.a, u_input.a, var_2.x)))), firstLeadingBit(~2236u) >> (~(~_wgslsmith_div_u32(37088u, u_input.a)) % 32u), var_1.a);
}

