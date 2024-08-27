struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<f32>) -> u32 {
    return _wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.c.x, 37362u), ~_wgslsmith_mult_u32(max(u_input.c.x, u_input.c.x) >> (~2095u % 32u), _wgslsmith_clamp_u32(~u_input.c.x, 64199u, u_input.c.x)));
}

fn func_3() -> u32 {
    var var_0 = Struct_5(Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-363f * 1000f) - _wgslsmith_f_op_f32(337f + -1283f)))), ~_wgslsmith_div_u32(select(u_input.c.x, 0u, false), u_input.c.x), Struct_1(~vec4<u32>(7237u, u_input.c.x, u_input.c.x, u_input.c.x) & (vec4<u32>(1u, u_input.c.x, 0u, 1u) << (vec4<u32>(69545u, 0u, u_input.c.x, 107057u) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1477f, 1020f, 1313f), vec3<f32>(1704f, 147f, -198f))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -120f, 1533f)))), ~(u_input.c.x & 15811u), -1726f), any(select(vec2<bool>(true, true), vec2<bool>(true, true), -1i < u_input.a.x)), !(4294967295u == u_input.c.x)), select(select(vec4<bool>(all(vec3<bool>(true, true, false)), true, false, u_input.c.x > 32266u), vec4<bool>(true, true, true, true), vec4<bool>(true, -2147483647i != u_input.a.x, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(!(88185u != u_input.c.x), all(vec3<bool>(true, true, true)), select(any(vec3<bool>(true, true, false)), true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1128f, 1477f), -475f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-653f)), 1126f))));
    let var_1 = _wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(var_0.a.c.a.zwx, var_0.a.c.a.ywz), vec3<u32>(~1u, u_input.c.x, 35118u));
    let var_2 = reverseBits(vec3<i32>(firstTrailingBit(u_input.a.x), u_input.a.x ^ -_wgslsmith_mult_i32(1i, -57202i), 0i ^ (u_input.a.x << (1u % 32u))));
    let var_3 = u_input.a;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.c.b.xz)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c, var_0.c), vec2<f32>(_wgslsmith_f_op_f32(round(669f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.d))), var_0.b.xz)));
    return 33620u;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3480f * -799f) + -362f), min(firstLeadingBit(4294967295u), func_2(any(vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec2<f32>(_wgslsmith_f_op_f32(max(563f, -1000f)), _wgslsmith_f_op_f32(152f + 853f)))), Struct_1(vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, 23746u), func_3(), 4294967295u, max(45993u << (1u % 32u), max(13297u, 1u))), vec3<f32>(-1177f, -529f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1346f))))), reverseBits(~(~u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(625f, -2404f))) - -802f)), countOneBits(func_3() << (countOneBits(19716u) % 32u)) < _wgslsmith_add_u32(4294967295u, (u_input.c.x >> (16507u % 32u)) ^ max(4294967295u, 0u)), true);
    var var_1 = Struct_4(1071f, vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), min(_wgslsmith_div_i32(u_input.a.x, u_input.b), -1i)), !vec4<bool>(true, _wgslsmith_f_op_f32(trunc(var_0.a)) == -249f, var_0.d, var_0.d));
    let var_2 = vec4<i32>(u_input.a.x | ~_wgslsmith_dot_vec2_i32(min(vec2<i32>(-36129i, 2147483647i), u_input.a), u_input.a & u_input.a), _wgslsmith_add_i32(max(2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(9412i, u_input.a.x, -2147483647i), vec3<i32>(var_1.b.x, u_input.a.x, u_input.a.x)), _wgslsmith_mod_i32(u_input.a.x, 2147483647i))), -25742i), u_input.b, 1i);
    var_1 = Struct_4(1000f, var_1.b, select(select(var_1.c, select(!vec4<bool>(true, false, true, var_1.c.x), !vec4<bool>(var_0.d, var_0.d, false, var_0.d), var_1.c), var_1.c), select(select(vec4<bool>(var_1.c.x, false, var_1.c.x, var_0.d), !var_1.c, !var_1.c.x), var_1.c, vec4<bool>(var_0.d, false, var_0.d, true)), !any(vec4<bool>(true, var_1.c.x, true, var_1.c.x))));
    var_1 = Struct_4(-124f, vec2<i32>(min(abs(~(-11641i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-49653i, -22591i, 15538i), -vec3<i32>(var_1.b.x, 1i, -5064i))), _wgslsmith_clamp_i32(var_2.x, -31323i, ~(-37507i))), select(select(var_1.c, vec4<bool>(false || var_1.c.x, true, !var_0.d, true), !var_0.e), vec4<bool>(any(vec3<bool>(var_1.c.x, false, true)), var_0.e, var_0.e, var_0.e), all(var_1.c.www)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_div_vec2_i32(~max(u_input.a, u_input.a), firstTrailingBit(~u_input.a))), ~(-(u_input.b & 1i)), -_wgslsmith_add_i32(u_input.b, -1i));
    let var_1 = func_1();
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - -928f)))), -827f));
    let var_4 = var_1.c;
    var_0 = vec4<i32>(var_0.x, _wgslsmith_mod_i32(-1087i, -19141i), 0i, -6608i);
    var var_5 = any(select(!select(select(vec3<bool>(false, var_1.e, false), vec3<bool>(var_1.d, var_1.e, var_1.e), var_1.d), select(vec3<bool>(var_1.e, false, false), vec3<bool>(var_1.e, var_1.e, true), var_1.d), !vec3<bool>(var_1.d, true, true)), !select(select(vec3<bool>(false, var_1.e, true), vec3<bool>(false, false, var_1.e), vec3<bool>(true, var_1.d, var_1.e)), !vec3<bool>(true, var_1.d, var_1.d), select(vec3<bool>(true, false, true), vec3<bool>(false, var_1.d, true), vec3<bool>(var_1.d, false, var_1.e))), 0i < _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, var_0.x, 1i), -vec3<i32>(2147483647i, -2147483647i, 21049i))));
    var var_6 = true;
    var var_7 = vec4<bool>(true, false, any(select(vec3<bool>(true, all(vec2<bool>(var_1.e, false)), var_1.d || var_1.d), select(!vec3<bool>(var_1.d, true, var_1.d), select(vec3<bool>(var_1.e, var_1.d, true), vec3<bool>(true, true, true), false), true), any(vec2<bool>(true, true)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.wyz, 1i, vec2<i32>(~countOneBits(_wgslsmith_mod_i32(u_input.a.x, -1410i)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a.x, 6037i), var_0.x), _wgslsmith_mod_i32(u_input.b, var_0.x) | max(22578i, u_input.a.x), min(_wgslsmith_mult_i32(var_0.x, -2147483647i), abs(var_0.x)))));
}

