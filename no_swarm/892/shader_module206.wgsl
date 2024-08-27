struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> u32 {
    let var_0 = 703f;
    var var_1 = true;
    let var_2 = u_input.c.x;
    var var_3 = !vec4<bool>(true, true, any(vec3<bool>(true, true, true)), !(select(true, false, false) && (u_input.d > -10441i)));
    let var_4 = 6509u;
    return abs(52422u) | _wgslsmith_div_u32((abs(var_2) >> (abs(58003u) % 32u)) << (_wgslsmith_sub_u32(firstLeadingBit(1u), abs(1u)) % 32u), ~firstLeadingBit(_wgslsmith_div_u32(9088u, var_2)));
}

fn func_1() -> Struct_2 {
    let var_0 = 11961u;
    var var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.e.zw, vec2<u32>(~(~4294967295u), 4294967295u)), 91927u & select(var_0, _wgslsmith_clamp_u32(func_2(), var_0, _wgslsmith_dot_vec3_u32(u_input.e.yww, u_input.e.xxz)), (2147483647i <= u_input.d) && true));
    var_1 = 1u;
    var var_2 = Struct_2(Struct_1(~u_input.b.x, vec2<u32>(~_wgslsmith_mult_u32(0u, 1u), u_input.a)), Struct_1(~(~abs(0u)), u_input.e.wx), Struct_1((_wgslsmith_clamp_u32(u_input.e.x, var_0, u_input.c.x) & ~var_0) | 11300u, vec2<u32>(1u, _wgslsmith_add_u32(u_input.c.x, var_0))));
    var_2 = Struct_2(var_2.c, var_2.a, var_2.c);
    return Struct_2(var_2.b, var_2.a, var_2.b);
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = func_1().a;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_3(13549i, func_1()), u_input.c, Struct_1(0u, u_input.e.yx), ~27541u & _wgslsmith_dot_vec4_u32(u_input.e, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.e.x, 229u, u_input.e.x), ~u_input.e)), Struct_1(u_input.c.x, ~(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), u_input.c) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1359f, -440f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1261f, -150f), vec2<f32>(-1545f, 682f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-569f, 1450f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-707f, -2145f), vec2<f32>(_wgslsmith_f_op_f32(round(-556f)), _wgslsmith_f_op_f32(round(-655f)))))));
    let var_2 = Struct_3(var_0.a, vec2<u32>(var_0.c.a, 0u | ~(u_input.b.x | 0u)), Struct_1(max(~u_input.b.x, ~(~4294967295u)), abs(select(vec2<u32>(var_0.d, var_0.b.x), vec2<u32>(1u, 18653u), vec2<bool>(true, true)))), ~(~(~u_input.a ^ _wgslsmith_mod_u32(var_0.e.a, 59213u))), func_3(~_wgslsmith_div_i32(firstTrailingBit(51339i), -u_input.d), var_0.a).c);
    var var_3 = u_input.e.xwx;
    var var_4 = ~4294967295u;
    var_3 = ~u_input.e.zwy;
    var var_5 = vec2<bool>(select(true, !any(vec3<bool>(true, true, true)), true) & select(false, true, true), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1555f * _wgslsmith_f_op_f32(f32(-1f) * -1014f))), min(-(vec2<i32>(u_input.d, 1i) | vec2<i32>(u_input.d, u_input.d)), _wgslsmith_clamp_vec2_i32(min(vec2<i32>(u_input.d, u_input.d), vec2<i32>(37604i, u_input.d)), ~select(vec2<i32>(-1i, u_input.d), vec2<i32>(u_input.d, u_input.d), var_5.x), vec2<i32>(0i, 45644i))), u_input.d, ~abs(u_input.a));
}

