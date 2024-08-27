struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> vec2<bool> {
    var var_0 = Struct_1(u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_0, 1i), arg_0));
    var_0 = Struct_1(abs(~u_input.a.x), arg_0 ^ min(~15722i, min(~arg_0, firstTrailingBit(-2147483647i))));
    var_0 = Struct_1(~(20560u << (_wgslsmith_mod_u32(1u | var_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(26358u, 1u, 1u, 4294967295u), vec4<u32>(4294967295u, 23791u, var_0.a, 82682u))) % 32u)), _wgslsmith_dot_vec4_i32(~(-abs(vec4<i32>(57385i, var_0.b, var_0.b, var_0.b))), _wgslsmith_add_vec4_i32(~vec4<i32>(arg_0, var_0.b, 13743i, arg_0), vec4<i32>(23018i << (var_0.a % 32u), firstTrailingBit(var_0.b), 18222i, -arg_0))));
    var_0 = Struct_1(_wgslsmith_clamp_u32(1u, u_input.a.x, ~u_input.a.x & var_0.a), firstLeadingBit(_wgslsmith_add_i32(25099i ^ -arg_0, 30208i)));
    var_0 = Struct_1(firstLeadingBit(~89665u), var_0.b);
    return select(vec2<bool>(true, false), !select(vec2<bool>(any(vec4<bool>(true, true, false, true)), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), false);
}

fn func_2(arg_0: vec4<bool>) -> bool {
    let var_0 = Struct_1(~abs(~u_input.a.x) ^ _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), -2147483647i >> (u_input.a.x % 32u));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -713f) - 260f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1776f, _wgslsmith_div_f32(-804f, 160f)) + _wgslsmith_f_op_f32(sign(-1559f))))) + _wgslsmith_f_op_f32(f32(-1f) * -793f));
    let var_3 = Struct_1(u_input.a.x ^ (10410u & u_input.a.x), ~(_wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(var_1.b, var_1.b)) << ((~var_1.a << (_wgslsmith_clamp_u32(var_1.a, 4046u, u_input.a.x) % 32u)) % 32u)));
    let var_4 = all(select(func_3(_wgslsmith_dot_vec4_i32(~vec4<i32>(939i, -2147483647i, var_1.b, var_1.b), vec4<i32>(var_3.b, 1i, -19385i, var_3.b))), vec2<bool>(true, true), !(!arg_0.x) || true));
    return select(arg_0.x, 190f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1143f)))), _wgslsmith_f_op_f32(exp2(var_2))), func_3(-_wgslsmith_mult_i32(_wgslsmith_clamp_i32(74085i, var_0.b, var_3.b), var_3.b)).x);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1)))), arg_0), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-935f, arg_0, arg_1, -1032f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1797f, arg_1, arg_0, arg_1))), func_2(vec4<bool>(false, true, false, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(327f, 247f, arg_1, -529f)))))));
    let var_2 = u_input.a.zy << (~var_0.zy % vec2<u32>(32u));
    var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, -597f, arg_1, arg_1), vec4<f32>(arg_0, 797f, arg_0, 963f))), vec4<f32>(arg_0, 1161f, var_1.x, var_1.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(679f, -778f, -1000f, 1000f))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1245f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -1000f) * _wgslsmith_f_op_f32(arg_1 + 954f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(abs(arg_0)))), -1000f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -382f), var_1.x, -306f, arg_1))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2130f, _wgslsmith_f_op_f32(arg_0 - var_1.x), _wgslsmith_f_op_f32(step(-547f, 1000f)), _wgslsmith_div_f32(arg_1, var_1.x)), vec4<f32>(674f, _wgslsmith_div_f32(arg_1, -978f), arg_0, 232f)))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 8460i;
    var var_1 = vec4<u32>(firstLeadingBit(u_input.a.x & ~u_input.a.x), 4294967295u, _wgslsmith_sub_u32(u_input.a.x, 4294967295u), 1u);
    var_1 = _wgslsmith_add_vec4_u32(abs(~(~vec4<u32>(u_input.a.x, var_1.x, 0u, 11231u))), ~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 25128u) ^ select(vec4<u32>(31106u, u_input.a.x, var_1.x, var_1.x), vec4<u32>(var_1.x, 86807u, u_input.a.x, 12525u), true))) ^ vec4<u32>(u_input.a.x, ~(~var_1.x) >> (57703u % 32u), ~_wgslsmith_add_u32(func_1(-1021f, -1000f, Struct_1(u_input.a.x, var_0)), u_input.a.x), ~4294967295u);
    var_1 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(~(~u_input.a.x), _wgslsmith_mult_u32(u_input.a.x >> (var_1.x % 32u), ~67514u), var_1.x, select(4294967295u, 27364u, true)), vec4<u32>(13018u, u_input.a.x, _wgslsmith_mod_u32(var_1.x, 72341u) & (u_input.a.x << (u_input.a.x % 32u)), u_input.a.x));
    var var_2 = Struct_1(~1u, ~var_0 >> (0u % 32u));
    let var_3 = Struct_1(~(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_1.wx, vec2<u32>(0u, var_1.x)), select(vec2<u32>(u_input.a.x, 51901u), var_1.zz, vec2<bool>(true, true)))), _wgslsmith_clamp_i32(select(abs(-28553i), ~var_2.b, true), -(i32(-1i) * -1i), -2147483647i) << (_wgslsmith_mod_u32(_wgslsmith_div_u32(abs(var_2.a), _wgslsmith_sub_u32(48536u, var_2.a)), 4294967295u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1889f), _wgslsmith_f_op_f32(465f * -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(510f * -689f), 1134f))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, -609f)), -282f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -878f) + _wgslsmith_f_op_f32(1000f + -275f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1398f, 2122f)), _wgslsmith_f_op_f32(f32(-1f) * -210f))), true)));
}

