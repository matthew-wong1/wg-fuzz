struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = vec3<i32>(u_input.e.x, ~(-2147483647i), -u_input.e.x);
    let var_1 = vec3<f32>(-192f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-318f + -1014f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.a.x))) + _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(max(1763f, -443f)))))), _wgslsmith_f_op_f32(ceil(341f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_1, vec3<f32>(-264f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_vec3_f32(var_1 + vec3<f32>(-1120f, 1266f, _wgslsmith_div_f32(481f, 577f)))));
    var var_3 = !(!(!(u_input.d < u_input.d))) && !((true && all(vec2<bool>(false, false))) || true);
    var_3 = any(select(vec4<bool>(any(vec3<bool>(true, true, false)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), true, any(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, arg_0 == u_input.c.x, true, false), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), any(vec4<bool>(false, true, true, true))), !vec4<bool>(true, var_0.x != var_0.x, true, true)));
    return _wgslsmith_f_op_vec3_f32(var_1 - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1351f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.wwy - arg_1.zyw)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(239f, -192f, 301f)))));
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -515f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(~_wgslsmith_add_u32(77957u, u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2210f, 256f, 1065f, -293f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1667f, -180f, -1220f, 833f) + vec4<f32>(1559f, -721f, 212f, -327f))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(2089f, 988f, 460f, -460f) + vec4<f32>(550f, -955f, 2212f, 844f))))), vec3<f32>(601f, _wgslsmith_f_op_f32(f32(-1f) * -391f), _wgslsmith_f_op_f32(abs(-468f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -391f) - 772f));
    var var_1 = _wgslsmith_clamp_u32(~1u, _wgslsmith_add_u32(u_input.b, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4955u), u_input.c)) | _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 34530u), u_input.b ^ u_input.d), ~u_input.d, 14062u), ~(~31137u));
    let var_2 = vec4<i32>(-45981i, u_input.a.x, _wgslsmith_add_i32((~u_input.e.x >> (~u_input.d % 32u)) << (_wgslsmith_div_u32(~u_input.b, u_input.d | 84478u) % 32u), _wgslsmith_add_i32(~u_input.e.x, _wgslsmith_sub_i32(u_input.a.x, u_input.e.x) << (u_input.b % 32u))), _wgslsmith_mod_i32(-firstTrailingBit(-1i), u_input.a.x) ^ -u_input.a.x);
    let var_3 = !(!vec4<bool>(!any(vec2<bool>(true, false)), true, 24444u <= u_input.b, true));
    let var_4 = 1u;
    return var_3.xy;
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> f32 {
    let var_0 = vec2<bool>(arg_2, !(!(true || (arg_1.b.x <= -1000f))));
    var var_1 = _wgslsmith_div_f32(arg_1.a, arg_1.c);
    let var_2 = arg_2;
    let var_3 = select(4294967295u, ~44056u, all(func_2()));
    var var_4 = vec4<u32>(_wgslsmith_dot_vec3_u32(min(abs(vec3<u32>(u_input.d, 34475u, 1u)) & _wgslsmith_sub_vec3_u32(vec3<u32>(var_3, 426u, var_3), vec3<u32>(u_input.d, var_3, 25855u)), ~(~vec3<u32>(72750u, 29735u, 1u))), ~(~vec3<u32>(38615u, u_input.b, 4208u)) | min(max(vec3<u32>(29010u, 22529u, u_input.c.x), vec3<u32>(3149u, var_3, u_input.d)), vec3<u32>(var_3, var_3, var_3))), u_input.c.x, u_input.d, u_input.b);
    return _wgslsmith_f_op_f32(f32(-1f) * -1231f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-902f - 857f))), vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_f32(func_1(u_input.e.x ^ u_input.e.x, Struct_2(_wgslsmith_div_f32(1678f, 820f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(543f, 1039f, -120f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(236f - -1000f))), false)));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(598f * 353f), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.x), 366f)) - 196f), _wgslsmith_f_op_f32(func_1(u_input.a.x, Struct_2(-1051f, var_0.b, -928f), true || (1u != u_input.b)))));
    let var_2 = var_0;
    let var_3 = select(vec4<i32>(2147483647i, _wgslsmith_div_i32(u_input.a.x, -u_input.e.x), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.e.x)) << (min(4294967295u, 1u) % 32u), u_input.a.x >> (_wgslsmith_clamp_u32(u_input.d, 4294967295u, 80015u) % 32u)) >> (vec4<u32>(795u, u_input.d, u_input.d & (u_input.c.x >> (4294967295u % 32u)), u_input.c.x) % vec4<u32>(32u)), u_input.a, select(!vec4<bool>(all(vec4<bool>(false, true, false, true)), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(false, true, false, false)), true, true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), all(vec3<bool>(false, true, false)))), func_2().x));
    var var_4 = min(reverseBits(u_input.c), vec2<u32>(min(u_input.c.x, _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.c.x, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, 0u)), vec4<u32>(0u, u_input.d, 21660u, u_input.b))), _wgslsmith_add_u32(u_input.c.x & 78834u, _wgslsmith_clamp_u32(u_input.c.x << (u_input.d % 32u), u_input.d, u_input.c.x))));
    let var_5 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-473f + 1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x), _wgslsmith_f_op_vec3_f32(func_3(31093u, var_1.a, Struct_1(var_1.a))).x)), -186f, var_2.c));
    var var_6 = max(_wgslsmith_div_vec2_i32(u_input.e.yy, _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_3.x, u_input.e.x), u_input.e.yz ^ vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(var_3.x, var_3.x)), select(var_3.wy, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e.x, -23466i), u_input.e.yx, var_3.ww), false), u_input.a.yw)), ~vec2<i32>(select(u_input.a.x >> (u_input.c.x % 32u), 1i, true), var_3.x));
    var_4 = min(vec2<u32>(u_input.c.x, var_4.x), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.zww, firstTrailingBit(reverseBits((u_input.e.zy | u_input.a.wx) >> (vec2<u32>(var_4.x, var_4.x) % vec2<u32>(32u)))));
}

