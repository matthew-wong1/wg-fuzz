struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(arg_3.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_div_f32(arg_3.a.x, _wgslsmith_f_op_f32(-arg_3.a.x)))) >= -1167f);
    let var_1 = arg_3;
    let var_2 = arg_3.b;
    var var_3 = _wgslsmith_f_op_f32(-466f * -1727f);
    var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0, -1000f))), 237f);
    return any(select(select(!vec2<bool>(var_1.b, var_1.b), select(vec2<bool>(false, true), !vec2<bool>(false, arg_3.b), select(vec2<bool>(var_1.b, true), vec2<bool>(true, false), vec2<bool>(false, var_0.b))), !select(vec2<bool>(true, true), vec2<bool>(var_0.b, true), true)), select(!vec2<bool>(var_0.b, var_1.b), vec2<bool>(u_input.c.x != u_input.c.x, var_2), true), true));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.c;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-694f, 1421f)) + -319f), 110f, -565f)), !func_3(_wgslsmith_f_op_f32(-1084f - -998f), select(vec4<u32>(u_input.d, u_input.e, u_input.a, u_input.d), vec4<u32>(4294967295u, u_input.a, u_input.d, u_input.e), true), -1113f, Struct_1(vec3<f32>(-1100f, -2084f, -1025f), true)) | (!all(vec2<bool>(false, false)) && select(true, u_input.d > 49925u, true)));
    var var_2 = vec3<u32>(~u_input.a, 4294967295u, u_input.a);
    var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(~var_2.x, _wgslsmith_add_u32(~var_2.x, _wgslsmith_clamp_u32(var_2.x, ~u_input.a, 14735u)), ~abs(u_input.e) | _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.x, u_input.d, var_2.x, var_2.x), vec4<u32>(10799u, u_input.e, 0u, u_input.a))), vec3<u32>(var_2.x, ~max(abs(19024u), _wgslsmith_div_u32(25335u, 1u)), _wgslsmith_div_u32(max(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.x, var_2.x, u_input.d), vec4<u32>(4294967295u, 11897u, u_input.e, u_input.a))), 12269u)));
    var_2 = vec3<u32>(var_2.x, ~firstLeadingBit(1u), max(1u, 1u));
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a), var_1.a), _wgslsmith_f_op_vec3_f32(floor(var_1.a))), true);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~vec2<u32>(countOneBits(~u_input.e) ^ ~_wgslsmith_sub_u32(4294967295u, u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(29846u, 0u, u_input.d, u_input.e), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(35017u, u_input.e, u_input.e, u_input.e), vec4<u32>(4294967295u, 4294967295u, u_input.e, u_input.a)), reverseBits(vec4<u32>(13329u, u_input.e, 6695u, 1u)))));
    let var_1 = -vec2<i32>(u_input.b.x, -6514i);
    let var_2 = func_2();
    let var_3 = Struct_1(arg_1.a, arg_1.b);
    let var_4 = ~reverseBits(var_0);
    return func_2();
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = func_2();
    let var_1 = arg_1.a.yx;
    var var_2 = arg_3;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(trunc(1000f)), arg_3.a.x))), true);
    var var_4 = func_4(arg_0, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(arg_1.a)), _wgslsmith_div_vec3_f32(var_2.a, arg_3.a), true))), true));
    return -407f;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(_wgslsmith_mod_vec2_i32(u_input.c.zy, u_input.c.zx), arg_0, func_4(_wgslsmith_sub_vec2_i32(vec2<i32>(6914i, arg_1), vec2<i32>(arg_2, 0i)), func_2()), arg_0))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)) + _wgslsmith_f_op_f32(-arg_0.a.x));
    let var_1 = u_input.e;
    var var_2 = vec2<i32>(-_wgslsmith_sub_i32(select(arg_2, 7782i, arg_0.b), -arg_2), abs(43731i)) & u_input.c.xz;
    var var_3 = -(~(~reverseBits(u_input.c) << (vec3<u32>(u_input.d, var_1 << (35236u % 32u), _wgslsmith_sub_u32(4294967295u, 0u)) % vec3<u32>(32u))));
    var_3 = vec3<i32>(arg_2, _wgslsmith_div_i32(max(-var_2.x, arg_1 & 15787i) << (_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, 26113u), ~4294967295u) % 32u), abs(select(select(9280i, var_3.x, true), _wgslsmith_mult_i32(arg_2, 2147483647i), arg_1 <= arg_2))), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(arg_1, arg_2, var_2.x)), vec3<i32>(~var_2.x, u_input.c.x, arg_1 ^ -u_input.c.x)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -721f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2081f, 127f) + _wgslsmith_f_op_f32(144f * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(889f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec3<f32>(938f, 325f, 786f), true), reverseBits(u_input.c.x), -53376i)))), func_4(u_input.c.yy, Struct_1(func_2().a, true)).b)), true);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1314f), var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x)) * vec3<f32>(1f, var_0.a.x, _wgslsmith_f_op_f32(ceil(var_0.a.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(step(-1089f, var_0.a.x)), var_0.a.x))), var_0.b);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_1.a.x, var_1.a.x, var_1.a.x) + vec4<f32>(var_0.a.x, -1539f, 1291f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.x, 2420f, 1457f, var_0.a.x)))))))));
    var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_0.a.x, -206f, var_2.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-490f, -579f, 496f, -418f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1797f, 1000f, var_2.x, 1368f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, 773f, var_1.a.x, 1000f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_1.a.x, 2606f, -572f) + vec4<f32>(var_2.x, 455f, 1000f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_0.a.x, -1003f, -2679f)), true))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(var_1.a.x - -387f), _wgslsmith_f_op_f32(var_2.x + var_2.x), -1423f, _wgslsmith_f_op_f32(-var_1.a.x))))));
    var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 1135f, -1000f, var_0.a.x) + vec4<f32>(var_2.x, -473f, var_2.x, -386f))) + vec4<f32>(var_0.a.x, var_2.x, _wgslsmith_f_op_f32(var_2.x + 270f), _wgslsmith_f_op_f32(ceil(863f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a.x, -1867f, var_1.a.x, 1713f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-499f, var_2.x, var_2.x, -2377f), vec4<f32>(var_2.x, var_1.a.x, var_2.x, var_2.x)) * vec4<f32>(var_1.a.x, var_0.a.x, -671f, var_2.x))), !(!select(vec4<bool>(var_0.b, var_1.b, var_0.b, var_1.b), vec4<bool>(var_0.b, false, var_1.b, var_0.b), false)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-840f, func_4(u_input.c.xy, Struct_1(var_0.a, var_0.b)).a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_2.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -1000f, -342f, var_2.x) - vec4<f32>(var_0.a.x, -1315f, 1000f, 1452f)))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, 1175f, var_2.x) * vec3<f32>(_wgslsmith_f_op_f32(-1911f - var_1.a.x), _wgslsmith_f_op_f32(-2066f + var_1.a.x), -868f)), true);
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, -499f, var_2.x, 3173f)) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-472f, 881f, -319f, -819f), vec4<f32>(-2540f, -709f, var_0.a.x, 1062f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.x, 435f, -1342f, -615f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(176f, -1031f, 1397f, -279f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1168f, var_0.a.x, 1868f, -662f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(949f, -174f, var_1.a.x, -649f)))))) + vec4<f32>(-1302f, var_3.a.x, _wgslsmith_f_op_f32(1258f * var_0.a.x), 1486f)));
    let var_4 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

