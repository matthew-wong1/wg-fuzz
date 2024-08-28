struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool) -> i32 {
    return max(_wgslsmith_div_i32(9546i, abs(u_input.b)), 2147483647i);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    var var_0 = func_3(arg_2.b.x);
    var var_1 = Struct_3(vec3<u32>(~arg_1, reverseBits(_wgslsmith_sub_u32(61079u, arg_1)), 1u), Struct_2(max(arg_3, ~arg_1), arg_2, arg_2));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -570f, _wgslsmith_f_op_f32(trunc(-1247f)), -1660f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(286f, arg_2.c, arg_0, arg_0) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, arg_0, var_1.b.b.c, 1662f))))));
    let var_3 = arg_0;
    let var_4 = vec2<i32>(2147483647i, -2147483647i);
    return Struct_2(1u, Struct_1(~(-6228i | _wgslsmith_dot_vec2_i32(vec2<i32>(var_4.x, 46421i), vec2<i32>(var_1.b.b.a, var_1.b.b.a))), arg_2.b, -123f), Struct_1(-26900i, arg_2.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(1092f - 117f))))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(-678f, arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-207f)) * arg_0.c)));
    var var_1 = u_input.d > 4294967295u;
    var var_2 = Struct_4(abs(u_input.d & ~1u));
    let var_3 = abs(1i);
    let var_4 = func_2(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, var_2.a, 0u, 47716u), vec4<u32>(1u, 38189u, var_2.a, 20644u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, u_input.d, u_input.d), vec4<u32>(var_2.a, u_input.d, 1u, 4294967295u))), _wgslsmith_sub_u32(~var_2.a, 80737u)) | abs(_wgslsmith_div_u32(u_input.d, _wgslsmith_mult_u32(var_2.a, u_input.d))), Struct_1(-70429i, !(!arg_0.b), var_0.x), ~u_input.d);
    return func_2(var_0.x, abs(36148u), Struct_1(2147483647i, var_4.b.b, 854f), 0u).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_mult_u32(u_input.d & u_input.d, ~(~88990u) >> (min(4294967295u, u_input.d >> (2768u % 32u)) % 32u)), func_1(Struct_1(u_input.c.x, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1428f, 460f))))), func_1(func_2(_wgslsmith_f_op_f32(step(-1127f, -585f)), ~(~u_input.d), Struct_1(~14783i, select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), -150f), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 0u), ~vec2<u32>(u_input.d, 0u))).c));
    var var_1 = var_0.b.a;
    var var_2 = Struct_3(vec3<u32>(_wgslsmith_sub_u32(reverseBits(~u_input.d), ~(~var_0.a)), 4294967295u, ~_wgslsmith_clamp_u32(u_input.d, 27077u, var_0.a) ^ _wgslsmith_mod_u32(u_input.d, ~var_0.a)), Struct_2(u_input.d, Struct_1(reverseBits(var_0.c.a), vec4<bool>(any(var_0.b.b.xyw), any(var_0.b.b.yw), var_0.b.b.x && true, var_0.b.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.c) - var_0.b.c)), Struct_1(abs(~26357i), select(func_2(-1328f, 1u, var_0.b, var_0.a).c.b, func_2(-425f, 21137u, Struct_1(u_input.b, vec4<bool>(var_0.b.b.x, false, true, true), 608f), var_0.a).b.b, var_0.c.b.x), var_0.b.c)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a | countOneBits(reverseBits(abs(vec3<i32>(1i, var_2.b.c.a, u_input.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(937f, var_2.b.c.c, -497f, var_0.b.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.c.c, 603f, var_0.b.c, var_2.b.c.c))))), _wgslsmith_mod_i32(~var_2.b.c.a, _wgslsmith_div_i32(-11475i, countOneBits(1i))) << (countOneBits(firstLeadingBit(~1u)) % 32u), u_input.d, var_2.b.c.c);
}

