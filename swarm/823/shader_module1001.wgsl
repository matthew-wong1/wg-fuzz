struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(!select(vec3<bool>(select(false, true, true), all(vec3<bool>(true, false, false)), true), vec3<bool>(true, true, true), false), select(vec3<i32>(-_wgslsmith_mult_i32(u_input.a, -1i), i32(-1i) * -2147483647i, 2147483647i), vec3<i32>(~u_input.a, ~u_input.a, -2147483647i), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false))), _wgslsmith_dot_vec2_u32(vec2<u32>(~abs(u_input.b.x), 8333u), abs(~vec2<u32>(4294967295u, u_input.b.x))), vec2<u32>(~0u, ~u_input.b.x >> (52891u % 32u)) << ((abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(50030u, u_input.b.x))) | u_input.b.zz) % vec2<u32>(32u)), !vec4<bool>(all(vec3<bool>(true, true, true)), true, _wgslsmith_f_op_f32(ceil(-1554f)) >= _wgslsmith_f_op_f32(select(474f, -1742f, false)), !any(vec2<bool>(false, false))));
    var var_1 = countOneBits(vec4<i32>(_wgslsmith_add_i32(var_0.b.x, ~1i), ~firstTrailingBit(u_input.a), 1i, firstLeadingBit(select(0i, u_input.a, true))) | min(max(vec4<i32>(-10811i, 1i, u_input.a, u_input.a), firstLeadingBit(vec4<i32>(var_0.b.x, u_input.a, -8916i, var_0.b.x))), vec4<i32>(-var_0.b.x, var_0.b.x << (4294967295u % 32u), -u_input.a, u_input.a)));
    var var_2 = Struct_2(Struct_1(select(select(!var_0.e.xyy, !vec3<bool>(false, var_0.a.x, var_0.a.x), select(var_0.e.xyw, var_0.e.zyy, var_0.e.x)), vec3<bool>(false, true, true), vec3<bool>(true, true, !var_0.e.x)), abs(vec3<i32>(u_input.a ^ var_0.b.x, ~u_input.a, var_1.x)), firstTrailingBit(114219u), vec2<u32>(_wgslsmith_add_u32(19813u, var_0.d.x), abs(_wgslsmith_mult_u32(var_0.d.x, u_input.b.x))), select(var_0.e, var_0.e, !(!var_0.e))), 23930i, !vec3<bool>(true, var_0.a.x, true));
    var var_3 = Struct_2(var_0, _wgslsmith_add_i32(44480i, var_2.b), vec3<bool>(true, true, true));
    var var_4 = select(vec2<bool>(!(!all(var_3.a.e)), false), vec2<bool>(true, any(select(!var_2.a.a, vec3<bool>(true, false, var_3.a.e.x), !vec3<bool>(var_3.c.x, true, var_0.e.x)))), var_3.a.c >= 7078u);
    return 1u << (_wgslsmith_dot_vec4_u32(((vec4<u32>(var_2.a.d.x, 4294967295u, 4294967295u, var_2.a.d.x) | vec4<u32>(var_2.a.c, 0u, 0u, 0u)) | max(vec4<u32>(var_3.a.d.x, var_2.a.c, 1u, var_3.a.c), vec4<u32>(87723u, 41074u, 0u, 4294967295u))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, var_0.c) | vec4<u32>(25035u, var_0.c, u_input.b.x, var_2.a.c), vec4<u32>(var_2.a.d.x, var_2.a.d.x, 1u, var_2.a.d.x)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(0u, ~4294967295u), ~min(14332u, var_0.d.x), max(1u, var_2.a.c), 1u)) % 32u);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_mult_i32((~abs(18802i) << (arg_2.a.d.x % 32u)) << (func_3() % 32u), 1i ^ select(0i, select(_wgslsmith_sub_i32(u_input.a, u_input.a), 69769i, arg_1), all(!vec3<bool>(arg_1, true, arg_1))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(729f, 1040f)));
    var var_2 = !(-71635i < ~(~(arg_2.b | 2147483647i)));
    var var_3 = _wgslsmith_add_u32(~(~_wgslsmith_div_u32(arg_2.a.c, 1u)), arg_0) | ~6035u;
    var var_4 = arg_2.a;
    return select(arg_2.a.a, vec3<bool>(!(!arg_2.c.x), arg_2.a.e.x, arg_1), arg_2.c.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<f32>) -> StorageBuffer {
    let var_0 = Struct_2(Struct_1(vec3<bool>(true, true, true), countOneBits(~vec3<i32>(u_input.a, 1i, arg_0.x)), ~(~u_input.b.x), ~vec2<u32>(u_input.b.x, 4294967295u), vec4<bool>(any(vec2<bool>(false, false)) && true, true, true, (arg_1.x != 1000f) & all(vec4<bool>(false, false, false, true)))), ~u_input.a, !select(vec3<bool>(true, true, true), func_2(_wgslsmith_sub_u32(u_input.b.x, 0u), true, Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<i32>(11445i, 0i, arg_0.x), u_input.b.x, vec2<u32>(u_input.b.x, 14614u), vec4<bool>(false, false, true, true)), arg_0.x, vec3<bool>(false, true, true))), !func_2(5254u, false, Struct_2(Struct_1(vec3<bool>(true, true, false), arg_0.wxy, 15039u, vec2<u32>(6642u, 4294967295u), vec4<bool>(false, false, false, false)), u_input.a, vec3<bool>(true, true, false))).x));
    var var_1 = 423f;
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x));
    var var_2 = ~_wgslsmith_dot_vec3_u32(~u_input.b, ~vec3<u32>(_wgslsmith_clamp_u32(17730u, u_input.b.x, 4294967295u), u_input.b.x, 0u & var_0.a.c));
    var_1 = _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -129f))), arg_1.x))));
    return StorageBuffer(-var_0.b, ~(((var_0.a.b.yy << (vec2<u32>(var_0.a.c, 31024u) % vec2<u32>(32u))) ^ ~var_0.a.b.yz) & _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.a.b.yz, vec2<i32>(arg_0.x, arg_0.x)), -arg_0.wy)), abs(var_0.a.d));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(~vec4<i32>(-5590i & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 64246i, -1i, 2147483647i), vec4<i32>(u_input.a, -5331i, u_input.a, u_input.a)), u_input.a, 5274i, u_input.a << (30148u % 32u)), vec4<f32>(1f, 1f, 1f, 1f));
}

