struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> f32 {
    return 1685f;
}

fn func_3(arg_0: vec4<u32>) -> vec4<u32> {
    var var_0 = vec2<i32>(u_input.a, ((select(48810i, 1i, false) << (3421u % 32u)) >> (arg_0.x % 32u)) | u_input.a);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(575f, -111f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f) * -873f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1486f), -1019f, _wgslsmith_f_op_f32(f32(-1f) * -322f)));
    var var_2 = ~((arg_0.x << (~(~arg_0.x) % 32u)) | arg_0.x);
    let var_3 = select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -761f), 486f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(750f + var_1.x)))) <= _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -752f), _wgslsmith_f_op_f32(-var_1.x)))), !(!(all(vec2<bool>(true, false)) | all(vec2<bool>(false, true)))), false);
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1) * var_1) * _wgslsmith_f_op_vec3_f32(min(var_1, vec3<f32>(var_1.x, -679f, -1090f)))) * _wgslsmith_f_op_vec3_f32(var_1 + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1 + var_1)))), vec2<u32>(arg_0.x, min(~abs(arg_0.x), 1u)));
    return vec4<u32>(select(arg_0.x, arg_0.x, var_3), min(~reverseBits(arg_0.x), min(_wgslsmith_dot_vec4_u32(~arg_0, vec4<u32>(0u, 20558u, 0u, var_4.b.x)), var_4.b.x)), 4294967295u, 60868u);
}

fn func_2(arg_0: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_1(~_wgslsmith_div_vec4_u32(vec4<u32>(23640u, 1u, select(57802u, 24019u, false), 643u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), !vec2<bool>(true, !all(vec3<bool>(true, true, true))));
    let var_1 = firstLeadingBit(~(~(~vec3<u32>(43642u, 619u, 1u) >> (var_0.a.wyy % vec3<u32>(32u)))));
    var var_2 = vec4<u32>(var_1.x, 94319u & _wgslsmith_dot_vec4_u32(func_3(var_0.a), var_0.a), 4294967295u, ~var_1.x);
    var var_3 = vec2<f32>(var_0.b, 828f);
    var var_4 = _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, _wgslsmith_sub_u32(abs(92685u >> (0u % 32u)), ~(~12677u)), var_1.x & (max(1u, var_2.x) ^ 45648u)), abs(var_1));
    return select(select(!select(select(vec3<bool>(false, false, var_0.c.x), vec3<bool>(var_0.c.x, true, true), vec3<bool>(var_0.c.x, false, var_0.c.x)), select(vec3<bool>(var_0.c.x, true, true), vec3<bool>(var_0.c.x, true, true), vec3<bool>(false, var_0.c.x, true)), vec3<bool>(var_0.c.x, true, true)), vec3<bool>(!(var_0.b >= var_0.b), !(var_0.c.x == true), false), any(!select(vec4<bool>(false, var_0.c.x, var_0.c.x, false), vec4<bool>(true, false, true, var_0.c.x), true))), vec3<bool>(var_0.c.x, var_0.c.x, false), !vec3<bool>(any(!vec2<bool>(var_0.c.x, var_0.c.x)), true, var_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(403f + _wgslsmith_f_op_f32(func_1()))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-572f)) - _wgslsmith_f_op_f32(f32(-1f) * -420f)) + _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(-1480f, -613f))))));
    var var_1 = all(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_div_f32(-3336f, 105f), 953f))));
    var var_2 = _wgslsmith_f_op_f32(round(var_0));
    var var_3 = vec4<i32>(-2147483647i, 1i, -27787i, _wgslsmith_div_i32(u_input.b, -u_input.b));
    let var_4 = vec3<i32>(_wgslsmith_clamp_i32(16017i, -u_input.b, _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.a, -20741i, 2147483647i), vec4<i32>(16114i, u_input.b, var_3.x, var_3.x))) << (~_wgslsmith_div_u32(5696u, 1u) % 32u)), u_input.b, ~var_3.x);
    var_3 = ~(~firstTrailingBit(select(vec4<i32>(67731i, u_input.b, var_4.x, 24897i), vec4<i32>(1i, var_3.x, -26406i, var_3.x), vec4<bool>(true, true, true, false)))) | firstLeadingBit(vec4<i32>(var_3.x, 0i, _wgslsmith_add_i32(u_input.a, 67978i), 18841i) & vec4<i32>(-23235i, ~(-1i), max(-2147483647i, -50652i), 22117i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), select(~min(vec4<u32>(36237u, 4294967295u, 0u, 75689u), vec4<u32>(0u, 0u, 4294967295u, 12104u)), ~(~vec4<u32>(4294967295u, 114749u, 1u, 24594u)), vec4<bool>(true, 521f >= var_0, false, func_2(vec3<f32>(885f, var_0, 307f)).x))));
}

