struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true));

var<private> global1: f32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> vec3<bool> {
    global1 = _wgslsmith_div_f32(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-2405f - _wgslsmith_f_op_f32(arg_1 * -1122f)), true)), -1339f));
    let var_0 = vec4<i32>(u_input.c.x, abs(_wgslsmith_sub_i32(u_input.c.x, -u_input.c.x)), u_input.c.x, _wgslsmith_sub_i32((44646i & (u_input.c.x & u_input.c.x)) | 7123i, ~u_input.c.x));
    global1 = arg_1;
    var var_1 = Struct_1(var_0 | _wgslsmith_clamp_vec4_i32(vec4<i32>(~(-19255i), -1i | u_input.c.x, -2147483647i, var_0.x << (4294967295u % 32u)), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.c.x, -460i, var_0.x, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -2147483647i, u_input.c.x, -18389i), var_0)), var_0));
    global0 = array<vec3<bool>, 11>();
    return global0[_wgslsmith_index_u32(~select(abs(43260u), ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a.x, 13940u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.b, 4294967295u), true), vec3<u32>(arg_0.x, 42886u, u_input.b)), true), 11u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_mult_i32(u_input.c.x | arg_2.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(27007i, arg_1.d.a.x), vec2<i32>(1i, 2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -34010i), vec2<i32>(u_input.c.x, -40743i)), 1i), abs(arg_2.xzz)));
    global1 = _wgslsmith_f_op_f32(round(1812f));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.b.x, _wgslsmith_f_op_f32(min(-542f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) * _wgslsmith_f_op_f32(-arg_1.b.x)))))), arg_1.b.x);
}

fn func_2() -> i32 {
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(Struct_2(-2147483647i, -(~vec4<i32>(23431i, -1i, 51447i, 2147483647i)), !(!global0[_wgslsmith_index_u32(u_input.b, 11u)]), -vec2<i32>(u_input.c.x, 5094i)), Struct_3(-u_input.c.x >= u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(101f, -1093f, 1319f) + vec3<f32>(-571f, -131f, 701f))), Struct_2(0i, countOneBits(vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.c.x)), func_3(vec4<u32>(u_input.a.x, u_input.a.x, 14634u, 4294967295u), 780f), u_input.c), Struct_1(firstTrailingBit(vec4<i32>(13073i, u_input.c.x, -2147483647i, -1i))), u_input.c), vec4<i32>(_wgslsmith_add_i32(u_input.c.x & u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -14124i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))), _wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(u_input.c.x, 13885i)), u_input.c.x, u_input.c.x), _wgslsmith_mod_vec3_i32(abs(max(vec3<i32>(-8785i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(1i, 1i, 1i)))))));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(286f, -474f))))))) - vec2<f32>(-525f, _wgslsmith_f_op_f32(1441f * -786f)));
    let var_1 = max(_wgslsmith_mod_vec2_u32(~u_input.a, ~(~u_input.a)), countOneBits(u_input.a ^ u_input.a));
    var var_2 = Struct_3(all(global0[_wgslsmith_index_u32(105166u, 11u)]), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1008f, 1000f, -1138f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 2793f, 1341f) * vec3<f32>(var_0.x, var_0.x, var_0.x))))))), Struct_2(u_input.c.x, vec4<i32>(countOneBits(0i) >> (u_input.b % 32u), 2147483647i, 15173i, -1i), select(vec3<bool>(true, false, func_3(vec4<u32>(var_1.x, 0u, var_1.x, 43161u), var_0.x).x), global0[_wgslsmith_index_u32(1u, 11u)], select(vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(u_input.a.x & var_1.x, 11u)], func_3(vec4<u32>(1u, 930u, 54056u, u_input.b), var_0.x))), -select(abs(vec2<i32>(u_input.c.x, 1i)), vec2<i32>(u_input.c.x, -21530i), vec2<bool>(false, true))), Struct_1(_wgslsmith_mod_vec4_i32(min(vec4<i32>(-24393i, -1i, u_input.c.x, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 62716i, 29032i, 56986i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(-34671i, 17007i, -1i, u_input.c.x))), vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, u_input.c.x) >> (~vec4<u32>(u_input.b, var_1.x, 53715u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(u_input.c.x, -2147483647i)), _wgslsmith_mult_vec2_i32(firstLeadingBit(select(vec2<i32>(-15293i, u_input.c.x), vec2<i32>(u_input.c.x, u_input.c.x), true)), vec2<i32>(u_input.c.x & -20440i, 33569i))));
    global0 = array<vec3<bool>, 11>();
    return i32(-1i) * -20171i;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: bool, arg_3: u32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_mod_i32(u_input.c.x >> (0u % 32u), u_input.c.x), vec4<i32>(-14280i, ~(~(u_input.c.x & u_input.c.x)), 1i, func_2()), !vec3<bool>(true, all(select(vec2<bool>(true, false), arg_0.zz, false)), true), u_input.c);
    var var_1 = false;
    let var_2 = Struct_3(any(var_0.c.xx), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1052f, 1019f))), _wgslsmith_f_op_f32(206f * _wgslsmith_f_op_f32(f32(-1f) * -1561f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-425f - 669f) + -1805f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2497f, -441f, -761f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1973f, 668f, 136f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1128f, -1928f, -1357f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-787f, 677f, 1882f), vec3<f32>(-103f, 1344f, -361f))))))), var_0, Struct_1(var_0.b), countOneBits(-(~var_0.b.xz)));
    var var_3 = 0i;
    var var_4 = Struct_1(var_2.d.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global1 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, true), u_input.a.x, !select(false, true, true), 4294967295u)));
    var var_1 = Struct_1(vec4<i32>(u_input.c.x, abs(abs(-u_input.c.x)), u_input.c.x, -43370i));
    global1 = -1066f;
    var_1 = Struct_1(_wgslsmith_mod_vec4_i32(firstLeadingBit(var_1.a), -vec4<i32>(47172i, -2147483647i, _wgslsmith_dot_vec4_i32(var_1.a, var_1.a), countOneBits(var_1.a.x))));
    global0 = array<vec3<bool>, 11>();
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + 1f)) + -802f);
    var var_4 = vec4<u32>(79275u, firstTrailingBit(~4294967295u), 9056u, 91721u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3, var_2.x, ~select(abs(vec4<i32>(var_1.a.x, -29465i, var_1.a.x, 0i)), var_1.a, true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1280f), _wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, func_3(vec4<u32>(46858u, 0u, 4294967295u, var_4.x), var_3).x, true), _wgslsmith_add_u32(min(4294967295u, var_4.x), u_input.b | 0u), all(vec3<bool>(false, false, false)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_4.x, 45531u, 19908u), 0u))))), firstLeadingBit(countOneBits(~vec4<i32>(-1i, 18709i, u_input.c.x, 124022i))));
}

