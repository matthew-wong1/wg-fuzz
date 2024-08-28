struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: vec4<f32>) -> f32 {
    var var_0 = vec4<i32>(~_wgslsmith_div_i32(u_input.a.x, abs(-u_input.a.x)), -u_input.a.x, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, 65722i, 24018i), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), 1i, select(u_input.a.x, u_input.a.x, arg_1.x)), vec4<i32>(countOneBits(-2147483647i), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), ~(-2147483647i), u_input.a.x)) ^ (u_input.a.x >> (~_wgslsmith_add_u32(33908u, 11949u) % 32u)));
    var var_1 = Struct_3(false, -1000f);
    var var_2 = firstLeadingBit(u_input.c.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(max(arg_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_2))))));
    let var_4 = arg_0;
    return 1000f;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-1199f)), 140f, _wgslsmith_f_op_f32(func_2(Struct_3(false, -1191f), vec4<bool>(false, true, false, false), vec2<f32>(-2472f, 358f), vec4<f32>(614f, -797f, -1039f, -630f)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-853f, -297f, -282f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 950f, -1739f)))))), true), u_input.c.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(~arg_1, u_input.c.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0.x, arg_0.x), 4294967295u) ^ _wgslsmith_sub_u32(u_input.c.x, arg_1 << (1u % 32u)), arg_1));
    let var_1 = Struct_3(var_0.a.b, -305f);
    let var_2 = var_0;
    var var_3 = true;
    var var_4 = ~(u_input.c.zx << (~u_input.c.wz % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(ceil(-111f));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, 1636f, arg_0.b)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b, arg_0.b, arg_0.b), vec3<f32>(arg_0.b, arg_0.b, arg_0.b))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-813f, -1000f, 1429f)))))))), false);
    let var_1 = 1u;
    var var_2 = -vec4<i32>(min(1i, min(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))), 3108i, select(-30960i, 49951i, true), ~(~u_input.a.x));
    var_0 = Struct_1(vec3<f32>(_wgslsmith_div_f32(arg_0.b, var_0.a.x), arg_0.b, _wgslsmith_f_op_f32(-128f + arg_0.b)), false);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, -376f, arg_0.b) - vec3<f32>(-757f, _wgslsmith_f_op_f32(trunc(1027f)), var_0.a.x)), true), ~5829u, var_1);
    return _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~u_input.c.x), ~(~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 35118u, var_3.c, 1u), u_input.c) & ~0u, _wgslsmith_clamp_u32(4294967295u, ~u_input.b, ~u_input.b)), ~(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 108124u, u_input.b, 0u), u_input.c) >> (vec4<u32>(10443u, var_1, 36600u, 0u) % vec4<u32>(32u)))), 69088u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!(_wgslsmith_f_op_f32(func_1(u_input.c.zwy & u_input.c.zzw, 67040u << (u_input.b % 32u))) < _wgslsmith_f_op_f32(f32(-1f) * -1269f)), (~u_input.a.x == u_input.a.x) & true, true, true);
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(~2158u, func_3(Struct_3(true, -1296f))), u_input.b), u_input.c.xy) & _wgslsmith_mod_u32(countOneBits(_wgslsmith_div_u32(33040u, ~u_input.b)), ~(~41488u));
    let var_2 = _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-46771i, i32(-1i) * -u_input.a.x, _wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a.x, 5240i, -48817i), vec3<i32>(-1i, u_input.a.x, u_input.a.x)), ~vec3<i32>(-5720i, u_input.a.x, u_input.a.x)))), vec3<i32>(1i, -min(-2147483647i, u_input.a.x) & (i32(-1i) * -1i), -reverseBits(-10344i)));
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(false, 779f), vec4<bool>(true, false, var_0.x, var_0.x), vec2<f32>(-930f, 1284f), vec4<f32>(728f, -1000f, 382f, 1745f))) * _wgslsmith_f_op_f32(-664f + -299f)))), _wgslsmith_f_op_f32(f32(-1f) * -296f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(var_0.x, 588f), select(var_0, var_0, false), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(691f, -255f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(245f, 1258f, -1000f, -956f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c.zyz, 0u))))), !(!(!all(vec4<bool>(false, var_0.x, true, true)))));
    var_3 = Struct_1(_wgslsmith_div_vec3_f32(var_3.a, _wgslsmith_f_op_vec3_f32(var_3.a * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.x, -732f, var_3.a.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.x, var_3.a.x, var_3.a.x) + vec3<f32>(var_3.a.x, var_3.a.x, -1183f))))), any(vec3<bool>(true, true, var_0.x)));
    let var_4 = ~(~(~u_input.c));
    var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -358f)), -1044f, _wgslsmith_f_op_f32(step(302f, -589f))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(725f, -863f)))), 85357u, -1180f, ~(-(~var_2.x) | 1i), ~(var_4.yy | abs(vec2<u32>(0u, var_1))));
}

