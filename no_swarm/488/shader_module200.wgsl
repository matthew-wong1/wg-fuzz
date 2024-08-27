struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> f32 {
    let var_0 = i32(-1i) * -12329i;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(186f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1340f, -1343f))))), Struct_1(_wgslsmith_f_op_f32(-1f), _wgslsmith_clamp_u32(u_input.c, countOneBits(~0u), firstTrailingBit(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x))), ~69385u & u_input.d.x, select(vec3<bool>(false, true, all(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x))), vec3<bool>(true, any(arg_0.xw), false), vec3<bool>(arg_0.x || arg_0.x, all(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), arg_0.x & arg_0.x)), reverseBits(~u_input.d)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1000f)), -296f)) - -1213f), ~abs(20909u), u_input.d.x, select(vec3<bool>(arg_0.x, select(arg_0.x, arg_0.x, arg_0.x), all(arg_0.xz)), arg_0.zwx, !arg_0.x != !arg_0.x), ~u_input.d));
    var var_2 = Struct_2(525f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.a), _wgslsmith_f_op_f32(sign(-1000f))) + -469f), 1u, abs(u_input.d.x), !arg_0.xyy, (var_1.b.e ^ _wgslsmith_sub_vec2_u32(u_input.d, u_input.d)) | u_input.d), var_1.b);
    var var_3 = Struct_1(var_2.a, ~(~u_input.c), u_input.d.x, !select(vec3<bool>(arg_0.x, true, 4294967295u != var_2.b.b), var_2.b.d, var_1.c.d.x), vec2<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.d), abs(vec2<u32>(var_2.b.e.x, var_2.c.b))), firstLeadingBit(_wgslsmith_sub_u32(65326u, u_input.c | 0u))));
    var_2 = Struct_2(var_3.a, var_2.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_f_op_f32(floor(-968f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-819f)) + _wgslsmith_f_op_f32(min(1052f, var_1.a)))), _wgslsmith_mod_u32(~abs(u_input.d.x), max(29145u, _wgslsmith_div_u32(var_3.e.x, var_2.c.b))), 80711u, select(!var_1.c.d, var_2.c.d, !(arg_0.x && var_3.d.x)), reverseBits(~vec2<u32>(var_2.c.b, 1u))));
    return -1210f;
}

fn func_2() -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, false, false, false), -u_input.b)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-778f, -1736f)), -1085f))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, false, true), u_input.b)), -976f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -589f))))), Struct_1(_wgslsmith_f_op_f32(-425f + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, 1676f)))), ~(_wgslsmith_dot_vec2_u32(u_input.d, u_input.d) ^ u_input.d.x), abs(~4294967295u), !vec3<bool>(false, true, all(vec4<bool>(true, false, true, true))), vec2<u32>(min(~u_input.c, 0u >> (u_input.c % 32u)), ~(~93535u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-825f - -1212f), _wgslsmith_f_op_f32(f32(-1f) * -969f))), ~(~u_input.d.x), 4294967295u, vec3<bool>(true, true, true), countOneBits(u_input.d)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(round(var_0.b.a)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(var_0.b.d.x, false, var_0.b.d.x, false), u_input.b)))), ~(~(~48u)), _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_0.c.e.x, u_input.c), vec3<u32>(65309u, var_0.b.b, u_input.c)), ~vec3<u32>(41659u, u_input.c, 4775u))), vec3<bool>(var_0.b.a >= var_0.a, select(true, false, all(vec3<bool>(false, var_0.b.d.x, true))), _wgslsmith_f_op_f32(max(var_0.a, -130f)) < _wgslsmith_f_op_f32(var_0.c.a - var_0.b.a)), _wgslsmith_mod_vec2_u32(max(~vec2<u32>(4294967295u, 593u), _wgslsmith_mult_vec2_u32(u_input.d, vec2<u32>(u_input.d.x, 78395u))), var_0.b.e)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.c.a + var_0.c.a))), ~0u, ~u_input.d.x, var_0.b.d, u_input.d));
    let var_2 = select(select(!(!var_0.b.d.zx), !(!(!vec2<bool>(false, var_0.c.d.x))), !var_0.b.d.x), select(vec2<bool>(!var_1.b.d.x, var_0.c.d.x), var_1.c.d.yy, any(var_1.b.d.xz)), vec2<bool>(!(var_0.b.d.x != true), false));
    var var_3 = _wgslsmith_f_op_f32(var_0.a + var_0.c.a);
    let var_4 = var_1.c.d.zz;
    return ~(u_input.d.x & countOneBits(var_0.b.b));
}

fn func_1() -> Struct_1 {
    let var_0 = ~(~func_2() ^ 21453u);
    var var_1 = 1i;
    let var_2 = any(vec4<bool>(true, any(vec4<bool>(true, false, false, false)), !all(vec2<bool>(false, false)), false)) || (countOneBits(abs(countOneBits(66964i))) > ~(-_wgslsmith_mult_i32(u_input.a, -1i)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(trunc(-1184f)), _wgslsmith_mult_u32(var_0, u_input.d.x), ~(~47397u), select(vec3<bool>(var_2, !var_2, var_2), vec3<bool>(!var_2, all(vec4<bool>(false, false, var_2, var_2)), var_2), var_2), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, ~58483u), u_input.d, u_input.d));
    var_1 = 1i;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)), u_input.d.x, ~u_input.d.x, !var_3.d, vec2<u32>(var_3.c ^ u_input.d.x, 27226u));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = -(_wgslsmith_mod_i32(-2147483647i, u_input.a) << (1u % 32u));
    let var_1 = func_1();
    let var_2 = !(!(!arg_2.d.xy));
    var var_3 = !(!(!(!arg_2.d.x)));
    var_3 = !(!(!func_1().d.x && true));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-825f, -425f, false)), _wgslsmith_f_op_f32(f32(-1f) * -859f))), _wgslsmith_f_op_f32(-1168f - 595f)))), func_1(), Struct_1(-1000f, u_input.c, ~1u >> ((~u_input.c << (102228u % 32u)) % 32u), select(func_1().d, vec3<bool>(true, all(vec2<bool>(false, true)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, true), func_1().d)), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.c, u_input.d.x), ~u_input.d.x), u_input.c ^ u_input.d.x)), true);
    var var_1 = select(!vec2<bool>(var_0.d.x, !func_4(var_0.a, var_0, var_0, var_0.d.x).d.x), !(!select(!var_0.d.zx, vec2<bool>(false, var_0.d.x), vec2<bool>(true, true))), select(func_4(-317f, func_4(-1882f, Struct_1(-1631f, 17850u, u_input.c, vec3<bool>(var_0.d.x, false, false), u_input.d), var_0, !var_0.d.x), func_4(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.d.x), u_input.b)), func_1(), var_0, false), false).d.xz, vec2<bool>(any(!vec4<bool>(var_0.d.x, var_0.d.x, false, false)), var_0.d.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)), -2147483647i >> ((_wgslsmith_mod_u32(~0u, 50383u & u_input.d.x) >> (reverseBits(u_input.d.x) % 32u)) % 32u), select(vec2<i32>(u_input.b, ~u_input.a) >> (vec2<u32>(var_0.c, 4294967295u) % vec2<u32>(32u)), vec2<i32>(-firstLeadingBit(u_input.b), -_wgslsmith_mult_i32(48141i, u_input.b)), vec2<bool>(var_0.d.x, !(20209u > var_0.c))));
}

