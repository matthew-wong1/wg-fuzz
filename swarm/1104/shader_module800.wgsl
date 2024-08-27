struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = ((2732i & abs(firstLeadingBit(u_input.c))) <= (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(5731i, u_input.c) >> (arg_0.zy % vec2<u32>(32u))) >> (1u % 32u))) & (any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, false), vec2<bool>(false, true))) | (true && ((-2147483647i > u_input.c) || any(vec2<bool>(true, true)))));
    var var_1 = Struct_3(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, 0u, 0u), arg_0), ~u_input.a) >> (min(0u | u_input.d, u_input.a) % 32u), abs(arg_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-733f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-254f)), 955f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(444f, -2793f, var_0)) + -648f) - 640f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -394f), _wgslsmith_f_op_f32(floor(-2012f))))));
    var_1 = Struct_3(_wgslsmith_mult_u32(~var_1.a, _wgslsmith_add_u32(var_1.a, ~4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-980f, var_1.c.x)) + 804f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.c)) - vec2<f32>(var_1.c.x, var_1.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_1.c - vec2<f32>(var_1.b, var_1.b)))) * _wgslsmith_f_op_vec2_f32(-var_1.c)))));
    var var_2 = vec4<i32>(-(~(~(-u_input.c))), ~(u_input.c >> (max(_wgslsmith_mod_u32(1u, 25441u), _wgslsmith_mult_u32(var_1.a, 13876u)) % 32u)), u_input.c | ~countOneBits(u_input.c), 30831i);
    let var_3 = -firstLeadingBit(firstLeadingBit(_wgslsmith_dot_vec3_i32(var_2.yyx, firstLeadingBit(vec3<i32>(var_2.x, 6792i, 0i)))));
    return _wgslsmith_f_op_f32(var_1.b * 1563f);
}

fn func_2() -> u32 {
    var var_0 = -_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, min(1394i, u_input.c), u_input.c, ~0i), -abs(vec4<i32>(20328i, u_input.c, u_input.c, u_input.c)));
    let var_1 = _wgslsmith_clamp_i32(~u_input.c, -2147483647i, u_input.c);
    var var_2 = vec2<bool>(false, !(!(all(vec3<bool>(true, false, false)) || true)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(select(vec4<u32>(58789u, 0u, u_input.d, 69048u), vec4<u32>(u_input.b.x, u_input.b.x, 2028u, u_input.e.x), vec4<bool>(var_2.x, var_2.x, false, var_2.x)) ^ (vec4<u32>(4294967295u, 57029u, u_input.e.x, u_input.e.x) | vec4<u32>(39680u, u_input.a, 25830u, 1u)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))));
    var_0 = firstLeadingBit(_wgslsmith_clamp_i32(~(~reverseBits(-1i)), 2147483647i, 22742i & select(_wgslsmith_add_i32(u_input.c, var_1), -7308i, !var_2.x)));
    return ~((1u >> (u_input.a % 32u)) ^ ~6193u);
}

fn func_1(arg_0: vec2<i32>) -> bool {
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(67249u, _wgslsmith_div_u32(1u, 1u)), ~_wgslsmith_mult_u32(firstLeadingBit(u_input.d), 1u) >> (min(_wgslsmith_div_u32(1u, u_input.d) | func_2(), u_input.b.x) % 32u), 37293u);
    var var_1 = vec2<u32>(4294967295u, _wgslsmith_mult_u32(u_input.d, 4294967295u) >> (var_0.x % 32u));
    var_1 = ~vec2<u32>(var_0.x, abs(0u));
    var var_2 = vec2<i32>(arg_0.x, 50979i);
    let var_3 = _wgslsmith_div_i32(3103i, ~u_input.c);
    return all(select(!vec3<bool>(true, all(vec4<bool>(true, true, false, false)), false), !vec3<bool>(true, true, var_1.x > var_1.x), select(vec3<bool>(all(vec3<bool>(true, true, false)), true, 21655u < u_input.d), vec3<bool>(true, true, true), all(vec4<bool>(true, false, true, true)) && false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (i32(-1i) * -45576i) ^ u_input.c;
    var_0 = 2147483647i;
    let var_1 = true | !func_1(abs(vec2<i32>(14688i, u_input.c) << (u_input.b % vec2<u32>(32u))));
    let var_2 = Struct_1(var_1);
    var_0 = _wgslsmith_mod_i32(u_input.c, -(-(-868i ^ u_input.c) ^ ~2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.c, u_input.c, true), reverseBits(u_input.c), ~(~_wgslsmith_add_u32(~u_input.d, 4294967295u & u_input.a)), ~u_input.b.x);
}

