struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

var<private> global1: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool) -> i32 {
    return 17447i;
}

fn func_2(arg_0: i32) -> vec3<bool> {
    let var_0 = global1.a;
    global1 = Struct_1(reverseBits(vec3<i32>(1i, global1.a.x, 2147483647i >> (1u % 32u))), ~(~1u));
    let var_1 = -992f;
    global1 = Struct_1(-(~vec3<i32>(~global1.a.x, 4931i, global1.a.x)), _wgslsmith_add_u32(44469u, u_input.d ^ 38972u));
    global1 = Struct_1(_wgslsmith_add_vec3_i32(global1.a, ~max(vec3<i32>(global1.a.x, arg_0, arg_0), global1.a) | vec3<i32>(2147483647i, ~(-2147483647i), _wgslsmith_mult_i32(50418i, var_0.x))), 11056u << (u_input.a % 32u));
    return vec3<bool>(!(u_input.e.x == ~func_3(true)), any(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), false)), true);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>) -> Struct_1 {
    global0 = array<u32, 22>();
    var var_0 = !((!(global1.a.x > u_input.e.x) || arg_0.x) & arg_0.x);
    let var_1 = ~vec3<u32>(0u, u_input.d, 0u);
    let var_2 = select(select(func_2(93158i), select(!vec3<bool>(false, arg_0.x, false), select(func_2(global1.a.x), !vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, false)), func_2(-2147483647i)), !(!vec3<bool>(arg_0.x, false, arg_0.x))), !vec3<bool>(true, all(!vec3<bool>(false, arg_0.x, arg_0.x)), !(!arg_0.x)), arg_0.x);
    let var_3 = _wgslsmith_mod_u32(26323u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(42431u >> ((111367u << (u_input.c % 32u)) % 32u), 22u)], 22u)]);
    return Struct_1(~u_input.e, _wgslsmith_clamp_u32(global1.b, 60889u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 8997u), var_1) | _wgslsmith_add_u32(var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, 4294967295u, u_input.c), vec4<u32>(global1.b, var_1.x, 4294967295u, var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(-global1.a, ~min(4294967295u, 4294967295u));
    var var_0 = vec2<f32>(1156f, _wgslsmith_f_op_f32(f32(-1f) * -1645f));
    var var_1 = vec3<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(reverseBits(0u), 22u)], 0u), global1.b >> (_wgslsmith_div_u32(global1.b, min(u_input.a >> (u_input.d % 32u), u_input.c)) % 32u), ~(~_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(0u, global1.b))));
    let var_2 = vec2<bool>(true, true);
    var var_3 = Struct_1(-global1.a, 34281u);
    let var_4 = func_1(!(!vec2<bool>(all(var_2), true)), vec2<f32>(114f, _wgslsmith_f_op_f32(f32(-1f) * -1718f)));
    var_0 = vec2<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, 1000f));
    var var_5 = Struct_1(var_3.a, var_3.b);
    global1 = Struct_1(-var_5.a, ~16657u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, vec2<i32>(-36207i, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.a.x, -22034i, u_input.e.x, global1.a.x), vec4<i32>(0i, var_3.a.x, var_4.a.x, var_3.a.x))) & (func_1(var_2, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1247f, var_0.x)))).a.xx & vec2<i32>(_wgslsmith_sub_i32(1i, -1i), var_3.a.x)), countOneBits(var_3.b));
}

