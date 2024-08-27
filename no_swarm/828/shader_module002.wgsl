struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2() -> bool {
    var var_0 = ~abs(~_wgslsmith_mod_i32(-41902i, u_input.a.x)) != u_input.c.x;
    var_0 = (_wgslsmith_sub_u32(14446u, u_input.b) << (0u % 32u)) >= u_input.b;
    var_0 = !any(vec4<bool>(true, true, true, true));
    var_0 = true;
    let var_1 = 1i;
    return !any(vec2<bool>(_wgslsmith_f_op_f32(floor(1287f)) <= _wgslsmith_div_f32(1040f, 716f), abs(u_input.d) != 1u));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<u32>, arg_3: bool) -> bool {
    let var_0 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, -1608i, -2147483647i), vec4<i32>(u_input.a.x, -1i, 1i, -32374i))), -55338i) << (1u % 32u));
    var var_1 = min(vec3<i32>(-23884i, -1i, ~reverseBits(var_0.a)), _wgslsmith_div_vec3_i32(vec3<i32>(-19630i, -abs(-1i), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(0i, u_input.c.x)))), ~(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, u_input.a.x), vec3<i32>(11816i, -2147483647i, var_0.a), u_input.c) << (vec3<u32>(0u, 0u, 0u) % vec3<u32>(32u)))));
    var_1 = vec3<i32>(~var_1.x >> (~arg_2.x % 32u), var_0.a << (arg_2.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(~_wgslsmith_add_i32(4627i, var_1.x), 2147483647i), ~vec2<i32>(var_1.x & u_input.c.x, 2147483647i)));
    return !((arg_2.x ^ ~(~u_input.d)) < 14420u);
}

fn func_1() -> vec4<bool> {
    var var_0 = vec2<bool>(func_2(), all(vec3<bool>(select(true, true, true), firstLeadingBit(u_input.c.x) != 0i, !func_3(vec4<f32>(1082f, -1147f, -285f, -1000f), true, vec3<u32>(u_input.d, u_input.b, 43920u), true))));
    var var_1 = Struct_4(Struct_3(vec4<u32>(min(_wgslsmith_mult_u32(u_input.b, u_input.d), ~14205u), u_input.d, min(u_input.d, 1u), _wgslsmith_add_u32(u_input.b, 0u >> (u_input.d % 32u))), 0i, vec4<bool>(func_3(vec4<f32>(1f, 1f, 1f, 1f), false | var_0.x, abs(vec3<u32>(0u, u_input.d, u_input.b)), false), true, true, var_0.x)), Struct_2(u_input.c.x), 0u);
    var var_2 = var_1.a.a << (var_1.a.a % vec4<u32>(32u));
    var_1 = Struct_4(var_1.a, Struct_2(_wgslsmith_mult_i32(28093i, ~40136i)), var_2.x);
    var_0 = select(var_1.a.c.wx, select(select(var_1.a.c.ww, !(!var_1.a.c.wx), !select(vec2<bool>(false, var_0.x), vec2<bool>(var_1.a.c.x, false), var_1.a.c.wy)), select(select(!vec2<bool>(var_1.a.c.x, var_1.a.c.x), select(var_1.a.c.yy, vec2<bool>(var_0.x, true), vec2<bool>(true, true)), !var_1.a.c.xy), var_1.a.c.zz, true), select(all(vec3<bool>(var_0.x, var_1.a.c.x, var_0.x)), !all(var_1.a.c.yzw), func_2())), var_0.x & !(!var_0.x != var_1.a.c.x));
    return var_1.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -11893i;
    let var_1 = Struct_1(u_input.d > _wgslsmith_dot_vec2_u32(abs(vec2<u32>(21742u, u_input.d) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), vec2<u32>(~67074u, ~u_input.b)), !select(vec4<bool>(true, true, all(vec2<bool>(true, false)), all(vec2<bool>(true, false))), vec4<bool>(all(vec3<bool>(false, false, true)), true, 13838u < u_input.b, 12347u == u_input.b), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true))), vec4<i32>(5260i, u_input.a.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a.zwy, u_input.a.wzx), -1i), ~(-u_input.c.x)) << ((vec4<u32>(45602u, ~u_input.b, _wgslsmith_mod_u32(14018u, 28595u), u_input.d) << (((vec4<u32>(u_input.d, u_input.b, 56966u, u_input.d) | vec4<u32>(53900u, u_input.d, 1u, u_input.b)) ^ ~vec4<u32>(1u, 4294967295u, u_input.b, 51699u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = Struct_5(Struct_3(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(0u, u_input.b, u_input.b, 0u)), (vec4<u32>(0u, u_input.b, 0u, 1u) | vec4<u32>(31048u, 1u, u_input.d, 0u)) >> (~vec4<u32>(8477u, 4294967295u, u_input.d, 4294967295u) % vec4<u32>(32u))), var_1.c.x, func_1()), vec2<u32>(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.d, u_input.d), vec3<u32>(u_input.d, 37223u, u_input.b))), _wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.d, u_input.d, 0u)), vec3<u32>(49392u, 81038u, 0u))), u_input.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-2817f)))))));
    let var_3 = select(~(~(var_2.b.x << (u_input.d % 32u)) ^ ~(~var_2.b.x)), var_2.b.x, var_1.a);
    var_0 = -1i;
    var_0 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(var_1.c.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a.x, 83276i), var_2.a.b)), min(-max(-1i, 18275i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, var_1.c.x, var_2.a.b), vec4<i32>(11133i, -2147483647i, -1i, -2147483647i)))), _wgslsmith_sub_i32(firstTrailingBit(min(-58782i, 0i)), select(var_1.c.x, var_2.a.b, false) | 13036i) ^ 0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1429f - 897f), _wgslsmith_mult_i32(var_2.a.b, 1i), vec4<f32>(var_2.c, _wgslsmith_f_op_f32(step(var_2.c, var_2.c)), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c - var_2.c))), var_2.a.b, firstLeadingBit(_wgslsmith_mult_u32(89945u, ~(~u_input.d))));
}

