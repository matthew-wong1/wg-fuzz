struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = ~u_input.a;
    let var_1 = Struct_1(u_input.c.zx, ~(~(~vec2<u32>(0u, u_input.a))) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-376f)), _wgslsmith_f_op_f32(sign(-385f)), _wgslsmith_f_op_f32(round(720f))) - vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(926f, 1000f, 897f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-429f, 1000f, 1034f)), false)) + vec3<f32>(-815f, _wgslsmith_f_op_f32(873f + -714f), _wgslsmith_f_op_f32(1007f * 1257f))))));
    var var_2 = !(!all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true)));
    var_2 = any(vec2<bool>(!all(vec4<bool>(true, false, false, false)), any(!select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
    var var_3 = Struct_1(var_1.a, _wgslsmith_mod_vec2_u32(~((vec2<u32>(u_input.a, var_1.b.x) >> (var_1.b % vec2<u32>(32u))) >> (~var_1.b % vec2<u32>(32u))), select(abs(~vec2<u32>(79476u, u_input.a)), vec2<u32>(abs(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_1.b.x, 4294967295u, u_input.a), vec4<u32>(1u, var_1.b.x, var_1.b.x, 59706u))), 1i < _wgslsmith_mod_i32(-126i, u_input.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -435f), var_1.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.c.x * var_1.c.x))))));
    return !any(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), var_1.b.x == var_1.b.x), vec3<bool>(false, true, true)));
}

fn func_2() -> vec2<u32> {
    let var_0 = func_3();
    let var_1 = ~vec3<u32>(~24657u, select(~u_input.a, 96903u, var_0) >> (62783u % 32u), abs(u_input.a));
    var var_2 = u_input.b;
    let var_3 = Struct_2(Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 1421i) & vec2<i32>(9443i, 0i), var_2.yw, u_input.b.zx), var_2.zx), select(var_1.xz, var_1.xz, vec2<bool>(var_0, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-224f, 588f, -2199f), _wgslsmith_f_op_vec3_f32(vec3<f32>(407f, -899f, 1305f) + vec3<f32>(-290f, 1032f, -690f)), true)) - vec3<f32>(_wgslsmith_f_op_f32(654f * -698f), _wgslsmith_f_op_f32(1694f - 933f), _wgslsmith_f_op_f32(sign(-2196f))))), Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, u_input.c.x, u_input.b.x), var_2.yyx) & ~(-32900i), _wgslsmith_add_i32(1i, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-1i, -2147483647i, var_2.x, var_2.x)))), ~var_1.zx, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1178f - 1533f), -1954f)), -122f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-548f, 122f)))), Struct_1(-u_input.b.xy, ~min(~var_1.xx, var_1.yz), vec3<f32>(-236f, _wgslsmith_f_op_f32(trunc(-449f)), _wgslsmith_f_op_f32(f32(-1f) * -1106f))), vec4<bool>(true, !var_0, false, true), vec4<u32>(u_input.a, var_1.x, u_input.a & 13801u, 80162u));
    let var_4 = u_input.c.x;
    return vec2<u32>(~_wgslsmith_div_u32(var_3.b.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(var_3.e, var_3.e), ~vec4<u32>(1u, 68265u, 14407u, 0u))), var_3.c.b.x);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_u32(abs(select(func_2(), reverseBits(vec2<u32>(u_input.a, u_input.a)), true)) & ~vec2<u32>(1u, 1u), ~_wgslsmith_mult_vec2_u32(select(vec2<u32>(11425u, 1u) | vec2<u32>(1u, u_input.a), vec2<u32>(114272u, u_input.a), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, 1u, 4294967295u)), ~u_input.a)));
    var_0 = 1u;
    var_0 = max(min(u_input.a & ((33214u | u_input.a) & u_input.a), 1u), _wgslsmith_add_u32(firstLeadingBit(5785u), max(u_input.a, 0u)));
    let var_1 = _wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(select(~vec3<u32>(4294967295u, 4294967295u, u_input.a), firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<bool>(true, true, true)), ~countOneBits(vec3<u32>(u_input.a, 1u, 33160u))), ~(~vec3<u32>(u_input.a, 4294967295u, u_input.a) ^ ~firstTrailingBit(vec3<u32>(u_input.a, 30841u, 42882u))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + _wgslsmith_f_op_f32(step(781f, 967f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))));
    return Struct_1(vec2<i32>(select(-1i, -2147483647i, false), u_input.c.x), vec2<u32>(u_input.a << (min(0u, 0u) % 32u), 4294967295u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.a, var_2.a, var_2.a))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1367f, var_2.a, 1336f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.a, 212f, var_2.a)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.b.x);
    var_0 = func_1(i32(-1i) * -18945i);
    var var_1 = u_input.b.x;
    var_1 = _wgslsmith_mod_i32(countOneBits(-u_input.c.x), ~u_input.c.x);
    let var_2 = func_1(var_0.a.x);
    var var_3 = all(vec3<bool>(true, any(vec2<bool>(true, func_3())), func_3() & false));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-2147483647i)), vec3<u32>(0u, _wgslsmith_sub_u32(1u, u_input.a), ~_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(var_2.b.x, 0u))), (vec4<u32>(~var_0.b.x, var_2.b.x, 1802u, 4294967295u) & vec4<u32>(60656u, 44760u, ~var_2.b.x, max(1u, var_0.b.x))) & ~vec4<u32>(0u, 47181u, _wgslsmith_add_u32(10300u, 0u), u_input.a), u_input.c);
}

