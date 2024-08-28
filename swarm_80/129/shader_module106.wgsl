struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<bool>, arg_3: f32) -> vec2<u32> {
    let var_0 = true;
    let var_1 = abs(vec3<u32>(25613u, ~33893u, min(~u_input.c, reverseBits(_wgslsmith_sub_u32(u_input.c, 4294967295u)))));
    var var_2 = Struct_2(4294967295u, !(_wgslsmith_div_f32(arg_1, arg_1) < -430f) & var_0);
    var var_3 = var_2.a >= ~max(firstLeadingBit(23930u), 1u);
    var_3 = any(vec2<bool>(arg_0.x, false));
    return countOneBits(vec2<u32>(0u, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_1.x, 37543u, var_1.x), 122076u)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_2(u_input.a << (_wgslsmith_dot_vec2_u32(func_3(!vec2<bool>(arg_0, arg_0), 300f, !vec4<bool>(arg_0, true, false, true), _wgslsmith_f_op_f32(-arg_1)), vec2<u32>(u_input.c, u_input.a) | _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.c, 0u))) % 32u), false);
    var var_1 = ~(_wgslsmith_div_vec4_i32(abs(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i)), vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, u_input.b.x, -20418i, -1i)) & vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, u_input.b.x), max(vec3<i32>(21558i, 20194i, u_input.b.x), vec3<i32>(-1i, -1i, u_input.b.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), -vec3<i32>(u_input.b.x, -2147483647i, 0i)), u_input.b.x, -31505i));
    var_1 = -(~(~vec4<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -2147483647i), vec2<i32>(var_1.x, var_1.x)), u_input.b.x & 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -44151i, var_1.x, var_1.x), vec4<i32>(-20156i, -2147483647i, -23122i, var_1.x)))));
    var var_2 = !vec3<bool>(arg_0, !arg_0, arg_0);
    return Struct_1(var_1.yyx, -2147483647i, 4422u | func_3(vec2<bool>(true, true), 945f, !(!vec4<bool>(var_0.b, var_2.x, var_0.b, false)), _wgslsmith_f_op_f32(f32(-1f) * -557f)).x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-561f, -1500f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-437f, -2217f)))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(sign(1943f)), arg_2)))), arg_0);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = !arg_1.x;
    var var_1 = func_2(any(vec3<bool>(!(!arg_2.e), !(arg_2.c >= 0u), !all(arg_1))), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_0.x)))) * arg_0.x), -1000f);
    var var_2 = 34079u;
    var var_3 = 28250u;
    let var_4 = arg_2;
    return ~(4294967295u & func_3(vec2<bool>(true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_div_f32(317f, var_4.d.x)), !vec4<bool>(var_1.e, true, arg_2.e, var_1.e), arg_2.d.x).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let var_1 = true;
    var var_2 = Struct_2(_wgslsmith_div_u32(select(16780u, 4294967295u, var_1) & ~func_1(vec4<f32>(-293f, -149f, 1000f, 724f), vec2<bool>(var_1, false), Struct_1(vec3<i32>(-2147483647i, -1i, -17277i), u_input.b.x, 62596u, vec2<f32>(-203f, 1000f), true)), ~1u), select(any(vec3<bool>(true, true, true)), var_1, !var_1));
    let var_3 = Struct_2(var_2.a, u_input.c != 0u);
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(308f, -1061f, var_1))) + 1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-517f))))));
    var var_5 = func_2(false, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(-1588f + -625f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_4.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_4.x)))));
    var var_6 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.a, _wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_5.c, var_3.a, 4294967295u), vec4<u32>(9957u, var_3.a, 4294967295u, 19103u))), ~34257u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(20767u, var_2.a, 0u, 0u), vec4<u32>(86737u, 39755u, 20939u, 6741u)), var_2.a)), ~(~vec4<u32>(4917u, 33857u, 38038u, var_3.a)) << (min(vec4<u32>(var_2.a, 1u, 21171u, 1u) >> (vec4<u32>(u_input.a, u_input.c, 1u, var_3.a) % vec4<u32>(32u)), vec4<u32>(var_3.a, 1u, var_2.a, var_2.a)) % vec4<u32>(32u))), max(u_input.b.x, u_input.b.x | 1i));
}

