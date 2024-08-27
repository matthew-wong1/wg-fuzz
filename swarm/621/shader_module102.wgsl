struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: i32,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-934f)), _wgslsmith_f_op_f32(trunc(-188f))) - -1000f), _wgslsmith_f_op_f32(210f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1085f, -1144f)) + _wgslsmith_f_op_f32(f32(-1f) * -344f))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-580f * _wgslsmith_f_op_f32(trunc(2140f))), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(1904f, -194f), true)))), -1113f)));
    var var_1 = Struct_1(16904i, max(u_input.c ^ (_wgslsmith_sub_u32(1u, u_input.c) >> (u_input.d.x % 32u)), u_input.d.x), select(vec4<bool>(true, true, u_input.a.x >= 24548i, true), vec4<bool>(u_input.a.x >= -1i, u_input.d.x >= ~u_input.c, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), !all(vec3<bool>(true, true, true))), !vec4<bool>(true, select(false, true, false), select(true, true, false), true)), vec3<u32>(~(~(~u_input.d.x)), _wgslsmith_mult_u32(~u_input.d.x, ~u_input.c) << (~61680u % 32u), ~117357u));
    var_1 = Struct_1(min(var_1.a, var_1.a), countOneBits(_wgslsmith_dot_vec3_u32(var_1.d, u_input.d.www)), vec4<bool>(~u_input.c != 0u, var_1.c.x, all(var_1.c.yzw), var_1.c.x), ~vec3<u32>(min(var_1.b, u_input.d.x) ^ _wgslsmith_add_u32(u_input.d.x, u_input.c), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_1.b, 34173u, var_1.b, u_input.c)), ~u_input.d), ~u_input.c >> (39136u % 32u)));
    var var_2 = -571f;
    var_1 = Struct_1(-max(select(var_1.a, -1i, var_1.c.x) << (~0u % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a, u_input.b.x, u_input.b.x, -49665i), vec4<i32>(1i, u_input.a.x, u_input.b.x, u_input.b.x)), ~vec4<i32>(-2147483647i, 2147483647i, -16156i, u_input.a.x))), 4294967295u, var_1.c, u_input.d.xxz & u_input.d.xyz);
    return u_input.d.xwy;
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(-2147483647i, _wgslsmith_clamp_u32(max(u_input.c, arg_0.d.x | _wgslsmith_clamp_u32(0u, 12871u, u_input.d.x)), _wgslsmith_add_u32(69113u, ~_wgslsmith_clamp_u32(36467u, u_input.d.x, 1u)), ~(~arg_0.b) ^ ~(~u_input.c)), select(select(arg_0.c, !arg_0.c, !arg_0.c), !arg_0.c, true), _wgslsmith_mult_vec3_u32(u_input.d.xyz, arg_0.d));
    var var_1 = -1558f;
    var_1 = -1000f;
    var var_2 = Struct_1(~_wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-12978i, var_0.a, u_input.a.x), u_input.b), -2147483647i, -3226i), ~25558u << (~(~_wgslsmith_mod_u32(var_0.d.x, u_input.c)) % 32u), !(!(!select(vec4<bool>(arg_0.c.x, var_0.c.x, false, false), var_0.c, arg_0.c.x))), vec3<u32>(51653u, u_input.d.x, 49792u));
    var var_3 = 2041i;
    return arg_0.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: u32) -> f32 {
    let var_0 = vec3<bool>(false, true, !(all(vec2<bool>(true, true)) && true));
    var var_1 = ~4294967295u >> (arg_1.x % 32u);
    let var_2 = any(select(func_4(Struct_1(0i, 70608u, !vec4<bool>(var_0.x, false, var_0.x, false), func_3())), vec4<bool>(true, (51947u & arg_1.x) > arg_1.x, false, func_4(Struct_1(u_input.b.x, arg_2, vec4<bool>(var_0.x, var_0.x, true, false), u_input.d.zxy)).x), select(vec4<bool>(true, true, true, !var_0.x), select(vec4<bool>(true, var_0.x, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true), false)), false)));
    var var_3 = min(_wgslsmith_dot_vec3_i32(reverseBits(select(-vec3<i32>(u_input.a.x, u_input.b.x, -27037i), vec3<i32>(-46417i, u_input.b.x, u_input.b.x), select(var_0, var_0, vec3<bool>(var_2, false, true)))), vec3<i32>(-4562i, u_input.a.x, 39630i)), ~(2147483647i ^ min(-19111i << (u_input.c % 32u), -u_input.b.x)));
    let var_4 = !var_2;
    return -1000f;
}

fn func_1() -> Struct_1 {
    var var_0 = 0i;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1114f))), _wgslsmith_f_op_f32(step(380f, 668f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-673f, _wgslsmith_f_op_f32(474f - _wgslsmith_f_op_f32(ceil(-227f))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1751f) + _wgslsmith_f_op_f32(func_2(vec3<f32>(-964f, 226f, 1168f), vec2<u32>(4294967295u, 70195u), u_input.c))), _wgslsmith_f_op_f32(floor(-1000f))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * var_1.x);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, 713f, -283f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1667f, var_2, -490f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-250f, var_2, var_1.x) + vec3<f32>(var_2, var_2, -1000f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(trunc(var_2)), _wgslsmith_f_op_f32(abs(var_1.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_2, var_2) * vec3<f32>(var_2, -1964f, 928f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1818f, 218f, var_2) + vec3<f32>(282f, -1554f, var_2)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1532f, -824f, var_1.x)))))));
    var var_3 = -1419f;
    return Struct_1(_wgslsmith_mult_i32(abs(0i), abs(u_input.a.x)) ^ u_input.a.x, abs(abs(u_input.c)), select(vec4<bool>((-2147483647i & u_input.a.x) < reverseBits(-1i), !all(vec2<bool>(true, false)), true && any(vec3<bool>(true, true, false)), func_4(Struct_1(-36088i, u_input.c, vec4<bool>(true, true, true, true), u_input.d.zww)).x), vec4<bool>(true, true, any(vec3<bool>(true, true, true)), true), false), vec3<u32>(_wgslsmith_clamp_u32(u_input.c, max(max(33462u, 1u), 0u), ~(~7354u)), firstTrailingBit(min(~u_input.d.x, 0u)), 18062u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(2147483647i, reverseBits(1u), vec4<bool>(true, true, true, true), u_input.d.xwz & u_input.d.yxx);
    let var_1 = !var_0.c.x;
    var var_2 = ~98844u;
    var var_3 = func_1();
    let var_4 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(1118f, _wgslsmith_f_op_f32(floor(1300f))), 492f), vec3<i32>(-16723i, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_add_i32(~31693i, var_0.a)), var_3.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(458f, -1108f), vec2<f32>(802f, -254f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1796f, -211f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-293f, 456f) + vec2<f32>(1000f, -1731f)) - vec2<f32>(656f, 924f)), vec2<bool>(var_3.c.x, any(var_0.c.xz)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-984f, 1000f))))))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, u_input.a.x, -40062i, -1i), vec4<i32>(-1i) * -vec4<i32>(var_0.a, -23404i, -1i, -2147483647i)), abs(select(-vec4<i32>(u_input.b.x, -7092i, 2147483647i, 0i), vec4<i32>(u_input.a.x, 1i, 0i, 1i), select(true, var_0.c.x, false)))));
}

