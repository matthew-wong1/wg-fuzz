struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    return u_input.a.x;
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1088f + -1056f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-421f)), -782f))) - _wgslsmith_f_op_f32(f32(-1f) * -1200f));
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-446f)), _wgslsmith_f_op_f32(f32(-1f) * -1500f), false));
    var var_1 = any(vec4<bool>(true, true, true, all(vec2<bool>(true, true))));
    let var_2 = vec4<bool>(true, false, true, any(vec2<bool>(false, all(vec4<bool>(false, true, false, false)))));
    var_1 = true;
    return min(u_input.a.x, ~(~(-u_input.a.x))) & max(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(1i, max(u_input.a.x, u_input.a.x))), 4043i);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_5, arg_3: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -236f));
    var var_1 = arg_3;
    let var_2 = arg_0;
    var var_3 = ~func_3();
    var var_4 = false;
    return ~_wgslsmith_add_u32(~_wgslsmith_mult_u32(select(arg_2.d, arg_2.d, arg_2.a.a), ~var_1.c), arg_1.d);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: Struct_5) -> i32 {
    var var_0 = Struct_4(Struct_1(true || arg_3.a.a), Struct_1(false));
    var_0 = Struct_4(arg_0, Struct_1(32050i != ~(~u_input.a.x)));
    let var_1 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-559f + arg_2), arg_2, _wgslsmith_f_op_f32(ceil(arg_3.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.c, -774f, -2362f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-517f, 1361f, -736f))))), select(!vec2<bool>(false, all(vec3<bool>(false, true, var_0.b.a))), !select(!vec2<bool>(var_0.b.a, var_0.b.a), vec2<bool>(false, arg_0.a), select(vec2<bool>(true, arg_0.a), vec2<bool>(false, false), true)), !vec2<bool>(true, !arg_0.a)));
    var var_2 = ~arg_1;
    var_0 = Struct_4(arg_0, Struct_1(all(select(select(vec2<bool>(false, false), vec2<bool>(arg_3.a.a, true), true), var_1.b, vec2<bool>(arg_0.a, var_1.b.x)))));
    return -(~(_wgslsmith_mult_i32(40492i, arg_3.b) | (_wgslsmith_div_i32(2147483647i, arg_3.b) | abs(-24034i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -abs(vec3<i32>(1i, -(~u_input.a.x), 1i));
    var_0 = -vec3<i32>(func_1(Struct_1(true)), min(var_0.x, u_input.a.x), 2147483647i & func_4(Struct_1(false), func_2(Struct_3(Struct_1(true), vec2<f32>(381f, 1012f), 30967u, 1u, Struct_2(vec3<f32>(385f, 1816f, 1000f), vec2<bool>(false, false))), Struct_3(Struct_1(false), vec2<f32>(-619f, -537f), 1u, 0u, Struct_2(vec3<f32>(1123f, -979f, -572f), vec2<bool>(true, false))), Struct_5(Struct_1(false), -32987i, -1000f, 42146u), Struct_3(Struct_1(false), vec2<f32>(1708f, -1154f), 1u, 507u, Struct_2(vec3<f32>(-402f, 2801f, -174f), vec2<bool>(false, false)))), 1092f, Struct_5(Struct_1(true), 1i, -788f, 1u)));
    var_0 = select(~_wgslsmith_mod_vec3_i32(vec3<i32>(countOneBits(-23304i), firstLeadingBit(71638i), var_0.x), ~vec3<i32>(var_0.x, var_0.x, u_input.a.x)), -vec3<i32>(~(-2147483647i), _wgslsmith_add_i32(~(-946i), -1i), (i32(-1i) * -25901i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(10056u, 0u, 54692u), vec3<u32>(1u, 4294967295u, 4294967295u)) % 32u)), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(false, false, false)), vec3<bool>(true, true, true)));
    let var_1 = !all(vec2<bool>(true, true));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-1176f, 163f, -176f), vec3<f32>(-733f, -380f, -1285f))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1440f, 1563f, 706f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-330f, -802f, 1289f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1102f, -142f, -886f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2251f, 682f, 1000f))))))), vec2<bool>(any(vec4<bool>(!var_1, var_1, !var_1, true)), false));
    var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(589f, var_2.a.x, var_2.a.x) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.a.x, var_2.a.x, 732f), vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x))))))), vec2<bool>(!all(select(vec4<bool>(var_1, false, false, true), vec4<bool>(var_2.b.x, var_2.b.x, false, true), true)), true));
    var var_3 = vec2<u32>(_wgslsmith_div_u32(1u >> (0u % 32u), 4294967295u) >> ((_wgslsmith_clamp_u32(~35597u, 3593u, 1u) << (~(~4294967295u) % 32u)) % 32u), 4294967295u);
    var var_4 = Struct_4(Struct_1(true), Struct_1(false));
    let x = u_input.a;
    s_output = StorageBuffer(-10045i, var_2.a.x, var_2.a.yy);
}

