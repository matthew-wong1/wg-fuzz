struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = vec4<bool>(true, true, true, true);
    var_0 = vec4<bool>(all(vec4<bool>(true, false, true, false)), var_0.x, any(var_0.yy), select(true, !(!any(vec4<bool>(true, var_0.x, var_0.x, true))), var_0.x));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -710f), _wgslsmith_f_op_f32(f32(-1f) * -1411f), true)) + _wgslsmith_f_op_f32(ceil(404f)))));
    let var_2 = Struct_1(~(~vec2<u32>(5681u, u_input.d) | vec2<u32>(1u, arg_0.a.x)) ^ _wgslsmith_add_vec2_u32(~(~vec2<u32>(arg_0.a.x, arg_0.b)), reverseBits(vec2<u32>(arg_0.b, arg_0.c))), ~u_input.a, abs(32705u));
    let var_3 = _wgslsmith_sub_i32(-2147483647i, ~_wgslsmith_mod_i32(u_input.b.x | -34064i, u_input.b.x));
    return arg_0.c;
}

fn func_2() -> vec2<u32> {
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_1(u_input.c.zw, 16282u & ~(~u_input.a | u_input.a), ~u_input.d);
    var var_2 = Struct_1(vec2<u32>(_wgslsmith_add_u32(27362u, var_1.b), max(func_3(Struct_1(vec2<u32>(u_input.d, u_input.a), 0u, 4294967295u)), u_input.a)), ~(~abs(var_1.a.x)), abs(0u));
    let var_3 = Struct_1(vec2<u32>(~62156u, u_input.d), 895u, 4294967295u << ((~var_1.c | firstTrailingBit(~var_1.b)) % 32u));
    var_1 = var_3;
    return firstLeadingBit(vec2<u32>(var_2.a.x, 1u));
}

fn func_1() -> u32 {
    var var_0 = true;
    var var_1 = 1u << (~u_input.d % 32u);
    let var_2 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(min(u_input.a, u_input.d) & u_input.d, u_input.c.x), _wgslsmith_div_vec2_u32(firstLeadingBit(u_input.c.yy) >> (~vec2<u32>(u_input.c.x, 0u) % vec2<u32>(32u)), func_2())), ~(~(~(~vec2<u32>(37174u, 83346u)))));
    var_1 = 1u;
    var var_3 = u_input.b.x;
    return reverseBits(var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(min(u_input.c.wy, u_input.c.zy), func_1(), 0u);
    var var_1 = _wgslsmith_f_op_f32(round(1858f));
    let var_2 = Struct_1(var_0.a, var_0.c, _wgslsmith_dot_vec3_u32(u_input.c.zwz, ~u_input.c.zxx) ^ u_input.d);
    var_1 = -242f;
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(var_3.c, 1u, countOneBits(~(~var_3.c))), ~(~u_input.b << (var_0.a % vec2<u32>(32u))));
}

