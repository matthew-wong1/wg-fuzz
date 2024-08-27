struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: vec2<u32>,
    d: f32,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4) -> vec4<f32> {
    let var_0 = Struct_5(arg_1.b.a, 0i, Struct_4(!(!arg_1.b.c.e.zz), Struct_3(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(11711i, 2653i, -83871i), vec3<i32>(arg_1.b.c.d, arg_1.b.a, 0i), vec3<i32>(arg_1.b.c.d, 0i, arg_1.b.a)), vec3<i32>(12728i, arg_1.b.a, arg_1.b.c.d)), arg_1.b.c.c, Struct_2(arg_1.b.c.b.a.wz, arg_1.b.c.b, arg_1.b.b, ~arg_1.b.c.d, arg_1.b.c.e), arg_1.a.x), vec2<u32>(~(~12736u), u_input.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-304f, -1000f) * arg_1.b.c.c.a.x)));
    var var_1 = var_0.c.b.c;
    return _wgslsmith_div_vec4_f32(arg_1.b.b.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -607f), var_0.c.b.c.b.a.x, -1172f, -899f))));
}

fn func_2() -> Struct_3 {
    var var_0 = 53653u;
    let var_1 = ~abs(-1i);
    var_0 = ~116387u;
    var var_2 = 31233u;
    var_2 = u_input.c;
    return Struct_3(-2147483647i, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(239f, -1941f, 1473f, 1285f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-108f, 1868f, 1166f, 411f))) * _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-177f, 629f) - vec2<f32>(-805f, 1358f)), Struct_4(vec2<bool>(true, false), Struct_3(var_1, Struct_1(vec4<f32>(-914f, 394f, -218f, 1000f)), Struct_2(vec2<f32>(261f, 1620f), Struct_1(vec4<f32>(-1169f, -717f, 154f, -1521f)), Struct_1(vec4<f32>(755f, 195f, -433f, 1005f)), var_1, vec4<bool>(true, true, true, false)), false), vec2<u32>(85930u, u_input.a), -987f))))), Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(626f, -1023f)), vec2<f32>(1176f, -1118f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1000f), vec2<f32>(182f, -2244f))), true)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-944f, -131f, 1000f, 103f))))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(483f, -2219f, 472f, 736f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(205f, -190f, 551f, 241f) + vec4<f32>(-753f, -663f, -1000f, -307f)))), -2596i, vec4<bool>(false, any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), any(vec4<bool>(true, true, false, false)), false)), ~(37719u >> (u_input.a % 32u)) < _wgslsmith_dot_vec3_u32(vec3<u32>(0u << (1u % 32u), u_input.a, _wgslsmith_clamp_u32(u_input.b, 99828u, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.c, 4294967295u) ^ vec3<u32>(0u, u_input.b, 18377u), min(vec3<u32>(47714u, u_input.d.x, 28163u), vec3<u32>(1863u, u_input.d.x, 32474u)))));
}

fn func_4(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(arg_0.c.c.a.x, 654f), Struct_4(arg_0.c.e.zw, arg_0, vec2<u32>(4185u, u_input.d.x), arg_0.c.b.a.x))).x, arg_0.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1905f), _wgslsmith_f_op_f32(min(-1000f, 554f)))))));
    var_0 = arg_0.b;
    var var_1 = vec2<bool>(firstTrailingBit(1u) >= ~u_input.d.x, arg_0.c.e.x & !(_wgslsmith_f_op_f32(f32(-1f) * -1512f) < var_0.a.x));
    var_1 = arg_0.c.e.xw;
    let var_2 = func_2().c;
    return arg_0.c.a.x;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2())) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().c.a.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -763f))))));
    var var_1 = 153f;
    var_1 = _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(exp2(var_0)));
    var_1 = _wgslsmith_f_op_f32(-var_0);
    let var_2 = _wgslsmith_add_vec4_u32(~min(~_wgslsmith_add_vec4_u32(vec4<u32>(93102u, 53068u, 4294967295u, u_input.a), vec4<u32>(u_input.d.x, u_input.b, 4851u, u_input.b)), ~vec4<u32>(0u, 5224u, u_input.d.x, 94127u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a, 1u, u_input.a), vec4<u32>(1u, 77406u, 37268u, 4294967295u), vec4<u32>(u_input.d.x, u_input.b, 33749u, 4294967295u))), abs(select(~(~vec4<u32>(u_input.a, u_input.a, 55910u, 122501u)), firstLeadingBit(vec4<u32>(1u, 1u, u_input.c, 12462u)) >> (abs(vec4<u32>(u_input.b, u_input.a, 28762u, u_input.c)) % vec4<u32>(32u)), !(u_input.a > u_input.b))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -344f, 2109f, var_0)))))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = all(vec3<bool>(all(vec4<bool>(true, false, arg_0.e.x, -1i < arg_0.d)), true & (max(u_input.d.x, 4294967295u) != ~10355u), arg_0.e.x));
    var var_1 = arg_0;
    var_0 = ((arg_2.x >> (_wgslsmith_dot_vec2_u32(countOneBits(u_input.d), ~arg_2.wy) % 32u)) > ~select(u_input.b >> (30961u % 32u), ~u_input.c, arg_0.e.x)) && var_1.e.x;
    let var_2 = var_1.d;
    var var_3 = vec2<i32>(~(var_1.d & var_1.d) | var_1.d, -2147483647i) << (vec2<u32>(~(u_input.d.x << (_wgslsmith_clamp_u32(4294967295u, 1u, 0u) % 32u)), _wgslsmith_add_u32(0u, ~_wgslsmith_mult_u32(46312u, u_input.b))) % vec2<u32>(32u));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2053f, -385f)))), func_1(), func_2().b, -(~(-2147483647i)), func_2().c.e), -744f, max(_wgslsmith_sub_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.d.x, 1u, 52550u, u_input.c)), min(vec4<u32>(4294967295u, u_input.b, 1u, 1u), ~vec4<u32>(u_input.d.x, u_input.a, u_input.d.x, u_input.c))), _wgslsmith_add_vec4_u32(abs(select(vec4<u32>(u_input.d.x, u_input.c, 0u, u_input.b), vec4<u32>(62516u, 15934u, 25666u, u_input.b), false)), firstTrailingBit(vec4<u32>(u_input.a, 28020u, 79339u, 71542u)))));
    let var_1 = 28165i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.c.a.xyz))), u_input.b);
}

