struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(1753f, -reverseBits(u_input.a.x << (1u % 32u)), vec2<bool>(!all(vec2<bool>(true, true)), true));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1432f, _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(-1486f + _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -484f)), _wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.b, -53178i, -13283i, -2147483647i), vec4<i32>(7709i, 2147483647i, var_0.b, var_0.b)), -vec4<i32>(u_input.b.x, -8243i, u_input.a.x, var_0.b)), 0i), var_0.c);
    var var_2 = vec3<u32>(u_input.c.x, u_input.c.x, reverseBits(1u));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-618f, _wgslsmith_f_op_f32(select(-384f, _wgslsmith_f_op_f32(581f - 143f), true)), -106f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(172f, var_1.a)))))));
    var var_4 = min(_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(max(1u, 4294967295u), _wgslsmith_sub_u32(var_2.x, u_input.c.x)), u_input.c.yx)), select(~(~4294967295u) ^ _wgslsmith_add_u32(var_2.x >> (4294967295u % 32u), ~u_input.c.x), ~_wgslsmith_sub_u32(countOneBits(u_input.c.x), _wgslsmith_clamp_u32(19129u, u_input.c.x, 20845u)), var_0.c.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -556f) - _wgslsmith_f_op_f32(-var_3.x));
}

fn func_2() -> Struct_1 {
    var var_0 = 713f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1128f));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2305f * _wgslsmith_f_op_f32(func_3()))));
    let var_2 = u_input.c;
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-938f)))) + _wgslsmith_div_f32(-882f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-210f, -718f))))), ~(reverseBits(68912i) ^ u_input.b.x), vec2<bool>(true, true));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: vec3<f32>) -> Struct_1 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false, u_input.b.x, 292f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-747f)), 563f, -580f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(703f, 129f, -849f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1212f, 2015f, -496f) * vec3<f32>(637f, -1000f, 1638f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-152f, 1420f, 715f), vec3<f32>(2690f, -1252f, -698f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1820f, 1000f, -1006f) - vec3<f32>(-1000f, 320f, 401f)), vec3<f32>(-709f, -1123f, -439f)))))));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + 2150f)));
    let var_2 = func_2();
    var var_3 = _wgslsmith_mod_vec2_i32(vec2<i32>(-18156i, firstLeadingBit(1i ^ var_0.b)), -select(-(~vec2<i32>(var_2.b, -3472i)), vec2<i32>(var_2.b, var_0.b), _wgslsmith_f_op_f32(-var_2.a) <= _wgslsmith_f_op_f32(max(var_1, var_2.a))));
    var_3 = -u_input.b.xx;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a - var_0.a), _wgslsmith_f_op_f32(-var_0.a)))) + 243f));
    let var_5 = var_0.c;
    var var_6 = !(!select(select(!vec4<bool>(true, var_0.c.x, var_2.c.x, var_5.x), select(vec4<bool>(true, false, var_2.c.x, false), vec4<bool>(var_0.c.x, var_0.c.x, var_2.c.x, false), false), select(vec4<bool>(true, true, false, var_2.c.x), vec4<bool>(true, var_2.c.x, var_5.x, var_5.x), vec4<bool>(var_2.c.x, true, true, var_5.x))), select(!vec4<bool>(var_0.c.x, true, var_5.x, var_5.x), vec4<bool>(false, var_0.c.x, var_5.x, false), select(vec4<bool>(true, var_0.c.x, var_0.c.x, true), vec4<bool>(var_5.x, true, var_2.c.x, false), var_0.c.x)), any(select(vec4<bool>(true, true, true, var_2.c.x), vec4<bool>(var_5.x, var_5.x, true, true), vec4<bool>(var_2.c.x, false, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))));
}

