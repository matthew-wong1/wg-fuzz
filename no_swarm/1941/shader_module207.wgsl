struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 0u, 1u, 2460u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<f32> {
    global0 = ~(~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, global0.x, 0u, arg_3.a.x), vec4<u32>(global0.x, global0.x, global0.x, arg_0) & vec4<u32>(global0.x, arg_3.c, u_input.c, global0.x)) << ((select(vec4<u32>(arg_3.c, arg_0, u_input.c, 4294967295u), vec4<u32>(4294967295u, 1u, 16769u, 38873u), vec4<bool>(true, true, true, false)) & min(vec4<u32>(42610u, 1u, arg_0, 1u), vec4<u32>(1u, u_input.c, u_input.c, arg_0))) % vec4<u32>(32u))));
    var var_0 = Struct_4(-u_input.a.x, reverseBits(arg_0), Struct_2(!all(vec2<bool>(false, false)), arg_2, 1000f, vec4<i32>(arg_3.b.x, _wgslsmith_mult_i32(arg_1.x ^ arg_3.b.x, -u_input.b.x), ~_wgslsmith_sub_i32(-62685i, u_input.b.x), arg_3.b.x), select(~min(vec2<i32>(-1i, -36831i), vec2<i32>(-2147483647i, arg_1.x)), reverseBits(~arg_1.zw), true)), Struct_2(true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2)), arg_2, _wgslsmith_f_op_f32(step(arg_2.x, -914f)) < _wgslsmith_f_op_f32(ceil(arg_2.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_3.d, 1409f, true)), arg_3.d), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1312f)))))), vec4<i32>(~(~arg_1.x), u_input.a.x, u_input.b.x, arg_3.b.x), vec2<i32>(_wgslsmith_mod_i32(countOneBits(u_input.b.x), countOneBits(arg_3.b.x)), max(4232i, -10823i) | -arg_3.b.x)));
    global0 = max(vec4<u32>(_wgslsmith_dot_vec4_u32(select(abs(vec4<u32>(1u, u_input.c, 22628u, 0u)), ~vec4<u32>(408u, 4294967295u, 30684u, 4294967295u), var_0.d.a), ~(~vec4<u32>(global0.x, 4294967295u, 56999u, global0.x))), global0.x, arg_3.a.x, 0u), ~(~select(vec4<u32>(var_0.b, 0u, 23204u, 80433u) ^ vec4<u32>(arg_0, 0u, 115261u, 21840u), abs(vec4<u32>(1u, 1u, global0.x, global0.x)), vec4<bool>(var_0.c.a, true, var_0.d.a, false))));
    global0 = abs(max(_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.c, 28080u, u_input.c, 4294967295u), vec4<u32>(u_input.c, arg_3.c, 16706u, global0.x), vec4<bool>(var_0.c.a, var_0.c.a, false, var_0.c.a)) ^ (vec4<u32>(arg_0, 44647u, 60048u, global0.x) >> (vec4<u32>(global0.x, 0u, arg_0, var_0.b) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, arg_3.c, arg_3.c), ~vec4<u32>(84037u, 21709u, arg_3.c, u_input.c))), ~(~reverseBits(vec4<u32>(global0.x, 4294967295u, u_input.c, 64393u)))));
    let var_1 = 4294967295u;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, 312f, arg_3.d, 1739f), vec4<f32>(-1000f, 222f, 110f, arg_3.d))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(470f, arg_3.d, arg_3.d, 755f) * vec4<f32>(var_0.c.b.x, arg_2.x, arg_2.x, 909f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(875f, -354f, arg_2.x, 1881f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-716f, var_0.d.c, 1000f, arg_2.x)), vec4<f32>(var_0.c.c, 1000f, 1346f, 747f), 15845u == global0.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.d, arg_2.x, arg_2.x, arg_3.d), vec4<f32>(648f, arg_3.d, -1640f, -1120f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(712f, var_0.d.b.x, -500f, 500f))) + vec4<f32>(_wgslsmith_f_op_f32(-376f + arg_2.x), 411f, _wgslsmith_f_op_f32(f32(-1f) * -1601f), 1239f)), vec4<f32>(833f, arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.c), var_0.c.b.x), arg_2.x)));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_3(arg_1);
    global0 = ~(~firstLeadingBit(firstTrailingBit(vec4<u32>(47077u, u_input.c, u_input.c, global0.x)) >> (vec4<u32>(u_input.c, global0.x, global0.x, 79754u) % vec4<u32>(32u))));
    var var_1 = 371f;
    let var_2 = u_input.a.wyw;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-288f, arg_1, var_0.a, arg_1), vec4<f32>(arg_1, arg_1, arg_1, -1833f), vec4<bool>(false, true, true, false)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(4294967295u, u_input.a, vec2<f32>(430f, -158f), Struct_1(global0.zww, vec3<i32>(u_input.b.x, var_2.x, 1i), global0.x, 771f))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, -1146f, arg_1), vec4<f32>(-817f, arg_1, arg_1, arg_1)), any(vec4<bool>(false, false, false, false)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))), var_0.a, _wgslsmith_f_op_f32(step(var_0.a, -1381f)), 1000f)));
    return Struct_2(false, var_3.yw, _wgslsmith_f_op_f32(f32(-1f) * -626f), (vec4<i32>(2147483647i, _wgslsmith_add_i32(var_2.x, arg_0), firstLeadingBit(u_input.b.x), abs(u_input.a.x)) & select(~u_input.a, ~u_input.a, true)) << (vec4<u32>(~(~54688u), _wgslsmith_clamp_u32(96039u, 1u, 42756u) ^ 4294967295u, max(_wgslsmith_add_u32(u_input.c, u_input.c), firstTrailingBit(global0.x)), 55026u) % vec4<u32>(32u)), select(~max(select(vec2<i32>(var_2.x, var_2.x), vec2<i32>(1i, 2147483647i), vec2<bool>(false, true)), u_input.b ^ var_2.zx), u_input.b, select(-var_2.x < -1i, all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec3<f32>) -> i32 {
    var var_0 = func_2(-(~arg_1), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - arg_2.x), arg_0), _wgslsmith_f_op_f32(f32(-1f) * -406f)));
    var var_1 = reverseBits(global0.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1125f, 1447f)) + -110f), _wgslsmith_f_op_f32(-arg_2.x)), arg_2.x)) * _wgslsmith_f_op_f32(round(-308f)));
    global0 = vec4<u32>(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(26296u, _wgslsmith_mult_u32(4294967295u, u_input.c), abs(global0.x), 1u), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(global0.x, 4294967295u, 4399u, global0.x)), ~vec4<u32>(24568u, global0.x, 61812u, 4294967295u))) ^ (firstLeadingBit(global0.x) & ~(~4294967295u)), 20366u, firstLeadingBit(4294967295u));
    let var_3 = var_0.a;
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-329f, -343f, 503f, -1864f), vec4<f32>(1801f, 315f, -1788f, 170f), vec4<bool>(true, false, true, true))))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)))));
    var var_2 = ~(u_input.c | (~0u ^ _wgslsmith_clamp_u32(firstLeadingBit(0u), 62101u, 44060u)));
    global0 = vec4<u32>(31567u, global0.x | 1679u, global0.x, 58393u);
    var_2 = 0u;
    let var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), u_input.a.x >> (58629u % 32u), vec3<f32>(246f, _wgslsmith_div_f32(-1000f, 216f), -462f)) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, ~u_input.b.x, -22533i, min(0i, u_input.b.x)), firstLeadingBit(u_input.a) ^ ~u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, 566f, var_0.x), vec4<f32>(var_0.x, var_0.x, -2426f, 1108f), vec4<bool>(true, true, true, true))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-507f, var_0.x, var_0.x, var_0.x) - vec4<f32>(-471f, 1808f, -1519f, var_0.x))))), vec2<u32>(global0.x, ~global0.x) << (reverseBits(vec2<u32>(u_input.c, _wgslsmith_mult_u32(var_3, 33863u))) % vec2<u32>(32u)), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x << (4294967295u % 32u), u_input.b.x), _wgslsmith_sub_vec2_i32(u_input.b, -u_input.a.wx)));
}

