struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: vec2<f32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_4) -> vec3<u32> {
    let var_0 = ~firstTrailingBit(~vec2<i32>(0i, min(228i, -2147483647i)));
    let var_1 = firstTrailingBit(~max(1u, 4294967295u));
    let var_2 = vec3<u32>(_wgslsmith_clamp_u32(firstTrailingBit(0u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_0.x, var_1, 147918u)), _wgslsmith_mult_vec3_u32(u_input.c, _wgslsmith_mult_vec3_u32(u_input.d, arg_0))), 0u), ~0u, 22915u);
    let var_3 = Struct_5(vec2<bool>(countOneBits(46390i) < _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_3.a.d, arg_1.b.a), -2147483647i), arg_3.a.a.x));
    var var_4 = Struct_1(~1i, select(select(select(!arg_3.a.a, !arg_1.b.b, all(vec3<bool>(false, false, arg_3.a.b))), !arg_3.a.a, false), !arg_1.b.b, vec3<bool>(arg_1.b.b.x, any(arg_3.a.a.yy), all(select(vec3<bool>(var_3.a.x, arg_2, false), arg_3.a.a, true)))));
    return select(~var_2 >> (_wgslsmith_add_vec3_u32(min(firstLeadingBit(u_input.c), arg_0), vec3<u32>(arg_0.x, 46778u, arg_0.x) << (abs(vec3<u32>(u_input.a.x, u_input.c.x, 24571u)) % vec3<u32>(32u))) % vec3<u32>(32u)), arg_0, select(!(!select(vec3<bool>(var_3.a.x, arg_2, true), arg_3.a.a, arg_1.b.b)), select(select(select(arg_3.a.a, vec3<bool>(var_4.b.x, true, true), arg_2), select(vec3<bool>(var_4.b.x, var_4.b.x, arg_3.a.b), vec3<bool>(true, var_4.b.x, false), arg_3.a.a.x), true), select(!arg_1.b.b, arg_3.a.a, any(vec4<bool>(arg_1.b.b.x, arg_2, arg_1.b.b.x, var_3.a.x))), !any(arg_3.a.a)), !all(!var_4.b)));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<bool>, arg_3: vec3<u32>) -> i32 {
    var var_0 = all(select(arg_0.wyx, arg_0.yyw, select(arg_2.x, true, true)));
    let var_1 = ~min(u_input.a, ~vec3<u32>(~u_input.d.x, 32875u, u_input.c.x));
    var_0 = arg_2.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1091f * -176f)), _wgslsmith_f_op_f32(1459f * -905f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(968f - _wgslsmith_div_f32(-867f, -704f))), 495f)));
    var var_3 = u_input.b.xz;
    return _wgslsmith_div_i32(~2147483647i, ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-9084i, -1i, var_3.x, var_3.x) | vec4<i32>(-1i, -49024i, -2354i, -42393i), vec4<i32>(var_3.x, arg_1, u_input.b.x, u_input.b.x) | vec4<i32>(-33978i, u_input.b.x, 1i, u_input.e))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: f32) -> u32 {
    let var_0 = Struct_2(arg_1.x, Struct_1(-1i, select(vec3<bool>(true, true, true), vec3<bool>(false, arg_0.x < 2147483647i, true), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(305f + arg_1.x), _wgslsmith_f_op_f32(-796f + 427f), -1692f))));
    var var_1 = func_4(!(!select(vec4<bool>(true, false, var_0.b.b.x, var_0.b.b.x), select(vec4<bool>(var_0.b.b.x, var_0.b.b.x, var_0.b.b.x, var_0.b.b.x), vec4<bool>(var_0.b.b.x, false, var_0.b.b.x, var_0.b.b.x), vec4<bool>(var_0.b.b.x, false, false, var_0.b.b.x)), !var_0.b.b.x)), -39773i, vec2<bool>(!(!var_0.b.b.x), false), ~vec3<u32>(u_input.a.x, 1u, u_input.c.x) << (~max(vec3<u32>(4294967295u, 0u, u_input.c.x), func_3(vec3<u32>(u_input.c.x, u_input.d.x, 87421u), Struct_2(126f, Struct_1(arg_0.x, var_0.b.b), vec3<f32>(var_0.a, var_0.a, -1000f)), var_0.b.b.x, Struct_4(Struct_3(vec3<bool>(true, var_0.b.b.x, var_0.b.b.x), var_0.b.b.x, arg_1.zy, u_input.e), u_input.a.x))) % vec3<u32>(32u)));
    var_1 = -1i;
    var_1 = arg_0.x;
    var_1 = abs(-_wgslsmith_div_i32(2147483647i, u_input.b.x));
    return 1u;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<i32>) -> vec4<u32> {
    let var_0 = -u_input.e;
    let var_1 = vec4<bool>(select((all(arg_0.b.b) || any(vec4<bool>(arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x, true))) | (func_2(arg_2, vec4<f32>(-934f, -1694f, -478f, 182f), arg_0.a) < arg_1.x), any(vec4<bool>(arg_0.b.b.x, any(vec4<bool>(arg_0.b.b.x, false, false, arg_0.b.b.x)), false, arg_0.b.b.x)), false), arg_0.b.b.x, arg_0.b.b.x & !any(vec3<bool>(arg_0.b.b.x, false, arg_0.b.b.x)), !(min(arg_1.x, u_input.a.x) < 1u));
    return ~vec4<u32>(4294967295u | arg_1.x, 1u, u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.c, select(~u_input.c, u_input.c << (u_input.c % vec3<u32>(32u)), vec3<bool>(false, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b.x;
    var var_1 = u_input.b.x;
    let var_2 = u_input.c.x;
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, -u_input.b.x, countOneBits(~u_input.e), ((u_input.e & 2147483647i) >> (_wgslsmith_clamp_u32(22887u, 1u, var_2) % 32u)) >> (~u_input.d.x % 32u)), abs(firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.e, u_input.b.x, 2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.e, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 1i, -12905i, -2620i), vec4<i32>(u_input.b.x, -1i, 2147483647i, u_input.b.x))))));
    var var_3 = ~(~max(firstLeadingBit(~4294967295u), _wgslsmith_dot_vec4_u32(func_1(Struct_2(1014f, Struct_1(u_input.b.x, vec3<bool>(true, true, true)), vec3<f32>(-876f, -308f, 1588f)), u_input.a.zz, vec4<i32>(u_input.e, -2147483647i, 0i, u_input.b.x)), select(vec4<u32>(u_input.a.x, 0u, var_2, u_input.a.x), vec4<u32>(u_input.c.x, var_2, 24244u, 4294967295u), false))));
    let var_4 = vec4<bool>(all(vec4<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), any(vec4<bool>(true, true, false, false)) || true, true)), all(select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true), vec2<bool>(true, false), false)), false, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(690f + _wgslsmith_f_op_f32(f32(-1f) * -104f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -607f)))))), u_input.d, u_input.b.x, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(175f + -1139f) * -179f), _wgslsmith_f_op_f32(f32(-1f) * -1300f)))));
}

