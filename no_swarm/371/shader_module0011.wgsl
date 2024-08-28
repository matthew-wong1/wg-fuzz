struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: u32) -> f32 {
    let var_0 = true;
    var var_1 = ~(~u_input.e.x);
    let var_2 = !vec4<bool>(all(!select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, var_0, var_0), vec3<bool>(false, true, var_0))), select(var_0, any(vec2<bool>(var_0, true)) || any(vec4<bool>(false, var_0, var_0, true)), true), false, var_0);
    var_1 = ~4294967295u;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(-576f)));
    return var_3.a;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(~(-u_input.a.x), u_input.e.x)), -1940f));
    return select(arg_1, !arg_1, false);
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = select(vec4<bool>(_wgslsmith_mod_i32(u_input.a.x, 25921i >> (0u % 32u)) >= u_input.a.x, false, false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1630f * 1308f), _wgslsmith_f_op_f32(round(-1289f)), true)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-776f + -1514f))), !(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)))), func_2(~(-31310i), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true))));
    var var_1 = Struct_1(757f);
    let var_2 = vec2<bool>(true, var_0.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -1100f, var_1.a, var_1.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -702f, var_1.a, var_1.a)))) - vec4<f32>(var_1.a, var_1.a, -710f, 1544f)))));
    var var_4 = Struct_2(var_3, var_3.wy, ~(~(u_input.a & max(vec3<i32>(59476i, u_input.a.x, -2147483647i), u_input.a))), _wgslsmith_add_i32(max(_wgslsmith_add_i32(u_input.b >> (1u % 32u), u_input.b), _wgslsmith_sub_i32(u_input.a.x, 1i)), u_input.a.x | u_input.a.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1458f, var_1.a, all(var_0.zw))))));
    return Struct_2(vec4<f32>(-648f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -716f))), var_3.x, -497f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_3.xy))) * _wgslsmith_f_op_vec2_f32(var_3.xx - var_4.a.wz))), _wgslsmith_mod_vec3_i32(select(-var_4.c >> (min(u_input.e, vec3<u32>(u_input.c.x, u_input.c.x, 1u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(~var_4.c, _wgslsmith_mod_vec3_i32(var_4.c, var_4.c)), var_0.ywx), ~vec3<i32>(u_input.a.x, -352i, ~u_input.b)), -22468i, Struct_1(1951f));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_3.c.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.e.a, arg_1.x)), arg_1.x), _wgslsmith_f_op_f32(-arg_3.b.x))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(6589i, 4294967295u)) - -163f), _wgslsmith_div_f32(func_1(vec3<u32>(u_input.d, 63296u, 95243u)).b.x, arg_0.a.x), _wgslsmith_f_op_f32(step(533f, _wgslsmith_f_op_f32(min(-551f, arg_3.b.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_vec4_f32(round(arg_3.a)), vec4<bool>(false, !arg_2.x, func_2(arg_3.d, vec4<bool>(arg_2.x, arg_2.x, false, false)).x, true))), vec2<f32>(_wgslsmith_f_op_f32(func_3(abs(-arg_3.d), max(_wgslsmith_sub_u32(0u, u_input.e.x), u_input.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -892f) + arg_0.b.x)), vec3<i32>(48925i, _wgslsmith_add_i32(-(~(-2147483647i)), var_0), min(u_input.b, arg_3.c.x)), firstTrailingBit(38828i), arg_3.e);
    let var_3 = _wgslsmith_mod_vec2_i32(arg_3.c.zy, -_wgslsmith_clamp_vec2_i32(u_input.a.yy, arg_0.c.yz, vec2<i32>(~var_2.c.x, select(var_0, -1i, false))));
    let var_4 = true;
    return func_1(vec3<u32>(u_input.c.x, 0u, abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, u_input.e.x), vec4<u32>(48168u, 53629u, 4294967295u, u_input.d)), ~vec4<u32>(1u, u_input.c.x, 115284u, u_input.d))))).e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(27118u, _wgslsmith_div_u32(~u_input.e.x, _wgslsmith_add_u32(0u, u_input.c.x | ~1u)));
    var var_1 = Struct_1(-1277f);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, _wgslsmith_f_op_f32(-var_1.a)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1130f))), var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))));
    var_1 = func_4(func_1(firstLeadingBit(abs(min(vec3<u32>(u_input.e.x, u_input.c.x, u_input.d), vec3<u32>(u_input.e.x, 1u, 1u))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(1187f - var_2.x), _wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(-1000f * 157f))))), func_2(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_add_i32(-5802i, min(62961i, u_input.b)), firstLeadingBit(33388i)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2(u_input.a.x, vec4<bool>(true, false, true, true)))).yxw, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(163f, _wgslsmith_f_op_f32(select(var_1.a, -729f, false)), _wgslsmith_f_op_f32(round(182f)), 610f)), _wgslsmith_f_op_vec2_f32(-var_2.yy), -(~u_input.a), (max(u_input.a.x, 5898i) ^ _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)) ^ u_input.b, func_1(vec3<u32>(var_0.x | 4294967295u, 4294967295u, var_0.x)).e));
    var var_3 = !select(30414u >= var_0.x, false, !(!any(vec3<bool>(false, true, true))));
    let var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(i32(-1i) * -(i32(-1i) * -493i)), 46585u, vec2<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, -38959i), -2310i)), _wgslsmith_mult_i32(-u_input.b, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, 2147483647i, 49510i, u_input.a.x), vec4<i32>(1i, 1i, u_input.a.x, -1i)))));
}

