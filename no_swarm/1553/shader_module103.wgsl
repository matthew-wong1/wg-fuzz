struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> bool {
    return any(!select(vec4<bool>(false, arg_1.x | arg_1.x, arg_0, arg_1.x), !select(vec4<bool>(true, arg_0, true, false), vec4<bool>(false, false, false, arg_0), arg_1.x), select(!vec4<bool>(false, true, true, arg_1.x), vec4<bool>(true, arg_1.x, true, false), any(global0[_wgslsmith_index_u32(5586u, 31u)]))));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2258f - _wgslsmith_f_op_f32(arg_0 * arg_0)))), _wgslsmith_add_i32(~_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -89426i, u_input.a, u_input.b), vec4<i32>(u_input.a, arg_1.x, -1i, 6853i) ^ vec4<i32>(-2147483647i, arg_1.x, u_input.a, u_input.a)), u_input.b), !vec3<bool>(!(arg_1.x != arg_1.x), func_3(true, vec2<bool>(true, true)), _wgslsmith_div_i32(-87916i, 1i) >= -arg_1.x), vec4<u32>(4294967295u, u_input.c.x << (u_input.c.x % 32u), _wgslsmith_div_u32(u_input.d, 37746u), u_input.c.x) | vec4<u32>(0u, select(36765u, ~4294967295u, any(vec2<bool>(false, true))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.d, 1u), u_input.c.x), u_input.d));
    let var_1 = select(var_0.b, _wgslsmith_div_i32(~var_0.b, _wgslsmith_div_i32(u_input.b, -47366i)), true);
    var_0 = Struct_1(1000f, 1i, !select(vec3<bool>(var_0.c.x, any(global0[_wgslsmith_index_u32(var_0.d.x, 31u)]), true), var_0.c, !var_0.c.x), var_0.d);
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-204f, _wgslsmith_f_op_f32(select(1000f, -1779f, var_0.c.x)), arg_0, -1674f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -1059f, var_0.a, 341f)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(152f, -1000f, arg_0, var_0.a))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, -2558f, var_0.a, var_0.a)))))))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1202f - _wgslsmith_f_op_f32(select(-1392f, 475f, var_0.c.x))))), (-21199i << (abs(1u) % 32u)) & u_input.a, select(!select(var_0.c, select(var_0.c, vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), false), vec3<bool>(var_0.c.x, var_0.c.x, false)), var_0.c, true), min(countOneBits(~(~var_0.d)), min(vec4<u32>(u_input.c.x & var_0.d.x, 30442u << (u_input.d % 32u), min(1u, 15023u), ~u_input.d), vec4<u32>(var_0.d.x, _wgslsmith_add_u32(1u, 82792u), ~45775u, 4294967295u))));
}

fn func_1() -> vec3<bool> {
    let var_0 = 662f;
    let var_1 = false;
    global0 = array<vec2<bool>, 31>();
    global0 = array<vec2<bool>, 31>();
    let var_2 = Struct_2(func_2(_wgslsmith_f_op_f32(trunc(614f)), abs(~vec2<i32>(u_input.a, -1i))), -(vec2<i32>(countOneBits(u_input.a), select(u_input.a, u_input.a, var_1)) ^ vec2<i32>(countOneBits(u_input.a), u_input.b)), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0)), -1123f), min(abs(~vec2<i32>(33923i, 0i)), firstTrailingBit(vec2<i32>(u_input.b, -1i)) >> (~u_input.c.zx % vec2<u32>(32u)))).d.x, Struct_1(var_0, ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), vec4<i32>(2147483647i, u_input.a, u_input.b, -37299i)), -1478i), vec3<bool>(!(u_input.b > -75873i), true, true), ~select(vec4<u32>(0u, 0u, u_input.c.x, 1120u), _wgslsmith_mult_vec4_u32(vec4<u32>(16460u, 0u, u_input.d, 0u), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x)), false)));
    return !select(var_2.a.c, select(vec3<bool>(any(vec4<bool>(var_1, var_1, true, var_1)), var_1, func_2(var_0, var_2.b).c.x), select(select(var_2.d.c, vec3<bool>(false, true, var_1), var_1), select(vec3<bool>(var_1, var_1, false), var_2.d.c, vec3<bool>(var_1, var_1, true)), !var_2.d.c), var_2.d.c), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 31>();
    global0 = array<vec2<bool>, 31>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(320f + _wgslsmith_div_f32(-1723f, 1552f)), ~5775i, !select(vec3<bool>(false, true, true), func_1(), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), ~_wgslsmith_mod_vec4_u32(~min(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(4294967295u, u_input.d, u_input.c.x, u_input.d)), vec4<u32>(93103u ^ u_input.c.x, u_input.d & u_input.d, 1u, 1u | u_input.c.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a)));
    global0 = array<vec2<bool>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~_wgslsmith_sub_u32(u_input.c.x, 0u)) >> (~_wgslsmith_add_u32(u_input.d, _wgslsmith_add_u32(u_input.d, u_input.c.x)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(523f - _wgslsmith_f_op_f32(var_0.a * 843f))))), vec4<i32>(i32(-1i) * -12810i, u_input.a, min(min(var_0.b, 29311i), _wgslsmith_add_i32(1i, var_0.b)), u_input.a << (u_input.d % 32u)), ~_wgslsmith_sub_i32(8119i ^ u_input.b, 10480i) >> (~var_0.d.x % 32u));
}

