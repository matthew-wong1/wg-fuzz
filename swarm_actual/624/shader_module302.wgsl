struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = true;
    var var_1 = Struct_1(false, reverseBits(vec4<u32>(abs(u_input.c.x), _wgslsmith_add_u32(abs(4294967295u), u_input.c.x), 38152u, ~firstTrailingBit(1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -626f)), true))), _wgslsmith_mult_u32((~u_input.c.x << (_wgslsmith_add_u32(0u, u_input.c.x) % 32u)) << (~53504u % 32u), u_input.c.x));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(379f, var_1.c)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), vec4<u32>(1u, u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(21981u, u_input.c.x, 1u), ~vec3<u32>(10650u, 54206u, var_1.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 0u), ~var_1.b.zy)) ^ select(var_1.b, ~(vec4<u32>(var_1.b.x, u_input.c.x, 4294967295u, var_1.d) << (var_1.b % vec4<u32>(32u))), vec4<bool>(u_input.b >= u_input.a, var_1.a, any(vec2<bool>(var_1.a, false)), true)), var_1.c, ~6174u);
    var var_3 = countOneBits(var_1.b);
    let var_4 = vec2<i32>(~(-70609i), 2147483647i);
    return 15806u;
}

fn func_2(arg_0: i32, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(1518f + -1378f);
    let var_1 = -1000f;
    var var_2 = (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, func_3(), ~95928u, 0u), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 37229u), ~vec4<u32>(u_input.c.x, 23232u, 1u, u_input.c.x))) | 1u) ^ ~12283u;
    var_0 = -1964f;
    var_2 = 61568u;
    return _wgslsmith_clamp_u32(u_input.c.x, ~arg_1, ~arg_1);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = ~(56825u << ((4294967295u >> (_wgslsmith_sub_u32(~1u, 19342u << (u_input.c.x % 32u)) % 32u)) % 32u));
    var var_1 = Struct_1(true || (any(vec2<bool>(false, true)) || false), firstTrailingBit(vec4<u32>(firstTrailingBit(31964u ^ var_0), _wgslsmith_mod_u32(81566u, abs(var_0)), func_2(-9153i, ~var_0), ~firstLeadingBit(11436u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -158f)))))), _wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c, u_input.c), vec2<u32>(1u, 1u) & u_input.c), vec2<u32>(var_0, 1u) ^ ~u_input.c, any(vec2<bool>(true, true))), firstTrailingBit(~u_input.c)));
    var var_2 = (-2147483647i >> (0u % 32u)) & _wgslsmith_div_i32(arg_0, max(u_input.b, u_input.b >> (4294967295u % 32u)));
    var_2 = -1i;
    var var_3 = 22796u & select(var_0, var_0, var_1.a);
    return Struct_1(false, vec4<u32>(var_1.b.x, var_1.d, 83950u, _wgslsmith_sub_u32(var_1.d, firstLeadingBit(1u))), _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_div_f32(var_1.c, var_1.c))))), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1154f;
    let var_1 = _wgslsmith_mod_vec3_u32(~(_wgslsmith_div_vec3_u32(~vec3<u32>(14758u, u_input.c.x, 34046u), ~vec3<u32>(0u, 36436u, u_input.c.x)) ^ ~(~vec3<u32>(0u, 1u, u_input.c.x))), vec3<u32>(countOneBits(~u_input.c.x), 4294967295u, _wgslsmith_add_u32(~u_input.c.x, 1623u)));
    var var_2 = func_1(_wgslsmith_mult_i32(~(_wgslsmith_dot_vec2_i32(vec2<i32>(-20316i, 21106i), vec2<i32>(1i, 12480i)) | _wgslsmith_sub_i32(u_input.a, u_input.a)), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, -35139i))));
    var var_3 = false;
    var var_4 = -(~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.b, 1i)), ~vec2<i32>(-2147483647i, u_input.a)) | ((u_input.a | (1i >> (0u % 32u))) << (4294967295u % 32u)));
    var var_5 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - 1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c - var_0))))), vec3<f32>(var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(826f, var_2.c))))), _wgslsmith_f_op_f32(floor(678f)))));
    var var_6 = func_1(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(var_2.d, ~(~var_2.d)));
}

