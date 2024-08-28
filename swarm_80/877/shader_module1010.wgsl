struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: vec4<i32>,
    d: Struct_3,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3.b >> (~(~4294967295u) % 32u);
    var var_1 = arg_3.a;
    let var_2 = var_0;
    var_1 = _wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -2870f))), _wgslsmith_f_op_f32(arg_2.c + 372f)))));
    var_1 = arg_3.c;
    return _wgslsmith_mult_u32(~arg_3.b & 29809u, ~abs(_wgslsmith_sub_u32(85179u, u_input.a)) & 4294967295u);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> Struct_5 {
    var var_0 = arg_0;
    let var_1 = Struct_2(Struct_1(arg_2.a, 4294967295u, arg_2.c), ~(~(~u_input.a) | reverseBits(_wgslsmith_clamp_u32(30117u, arg_2.b, 18903u))));
    let var_2 = i32(-1i) * -arg_3;
    var var_3 = firstLeadingBit(vec3<i32>(71395i, ~(-11485i), ~abs(30500i)));
    var var_4 = ~min(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.b, var_1.a.b, 7880u, arg_1.a.b), vec4<u32>(1u, 47579u, var_1.b, 48653u)), vec4<u32>(func_3(Struct_3(vec4<bool>(true, false, arg_0, arg_0), 0i, true), arg_0, arg_2, arg_2), 1u, select(u_input.a, 1u, arg_0), ~arg_2.b)) & (vec4<u32>(arg_2.b, ~9127u, ~1u, _wgslsmith_div_u32(~1u, u_input.a)) << (vec4<u32>(~_wgslsmith_sub_u32(arg_1.a.b, arg_1.b), ~var_1.b, 11230u, u_input.a) % vec4<u32>(32u)));
    return Struct_5(true, Struct_3(vec4<bool>(true, true, true, true), -1i, arg_0), ~(~vec4<i32>(firstLeadingBit(var_3.x), ~1i, _wgslsmith_div_i32(u_input.b, -2147483647i), 1i)), Struct_3(select(!select(vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, true, true, false)), vec4<bool>(true, false, !arg_0, all(vec3<bool>(false, true, false))), !arg_0), 60652i, arg_0), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a.c, 545f, -1246f, 459f))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.a, 334f, -1000f, arg_2.a), vec4<f32>(690f, arg_2.a, 2072f, arg_1.a.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-421f, var_1.a.c, -564f, arg_2.a)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2227f), _wgslsmith_f_op_f32(trunc(var_1.a.a)), -328f, _wgslsmith_f_op_f32(ceil(var_1.a.c))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.c, 381f, var_1.a.c, 599f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.c, -1000f, arg_1.a.c, var_1.a.a))), !vec4<bool>(arg_0, arg_0, arg_0, arg_0)))), vec4<bool>(all(vec2<bool>(arg_0, true)), arg_0, arg_0, arg_0))));
}

fn func_4(arg_0: Struct_5, arg_1: bool) -> f32 {
    var var_0 = -_wgslsmith_div_i32(-(~max(-7345i, 17407i)), ~(~max(u_input.b, -1i)));
    let var_1 = Struct_4(all(vec2<bool>(arg_1, arg_0.d.a.x)) | arg_0.d.a.x);
    return 694f;
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(225f, _wgslsmith_div_u32(u_input.a, 74544u), _wgslsmith_f_op_f32(1049f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-594f + 985f))))), ~countOneBits(arg_3));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(func_4(func_2(all(vec2<bool>(arg_1.x, arg_1.x)), Struct_2(var_0.a, u_input.a), var_0.a, arg_2.x), arg_1.x)), 989f, 462f), func_2(any(select(vec4<bool>(true, arg_1.x, arg_1.x, false), vec4<bool>(true, arg_1.x, false, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))) || false, var_0, var_0.a, arg_2.x).e.xyy));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1371f, 985f) - var_1.zy);
    let var_3 = firstTrailingBit(23345u | _wgslsmith_sub_u32(1u, ~_wgslsmith_sub_u32(arg_3, arg_3)));
    var var_4 = Struct_3(vec4<bool>(arg_1.x, ~(~0u) != (var_3 << (firstTrailingBit(0u) % 32u)), true, all(vec2<bool>(arg_1.x & arg_1.x, any(vec2<bool>(true, false))))), -(~(arg_0 << (42475u % 32u)) << (u_input.a % 32u)), false);
    return Struct_1(_wgslsmith_f_op_f32(var_0.a.a + -389f), _wgslsmith_sub_u32(76564u, 1u), _wgslsmith_f_op_f32(round(var_0.a.c)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    let var_0 = 4294967295u;
    let var_1 = -vec2<i32>(_wgslsmith_mult_i32(u_input.b, -u_input.b) & u_input.b, ~1i);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(926f + -740f) * _wgslsmith_f_op_f32(-arg_1.a.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.a))))), 0u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a.c * -1263f), 673f)));
    let var_3 = 464f;
    let var_4 = Struct_4(!any(vec2<bool>(false, false)));
    return Struct_2(var_2, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<u32>(29088u, _wgslsmith_mult_u32(firstTrailingBit(~u_input.a), u_input.a), 27851u), Struct_2(func_1(~(~(-2147483647i)), select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), u_input.a > u_input.a), -vec2<i32>(-2147483647i, 0i), ~u_input.a), 27503u), func_1(~72469i, vec3<bool>(true, true, true), abs(~vec2<i32>(u_input.b, 14192i)), u_input.a));
    var var_1 = vec3<u32>(~var_0.a.b, _wgslsmith_add_u32(max(firstTrailingBit(var_0.a.b << (25312u % 32u)), var_0.b), 0u), var_0.b);
    let var_2 = vec4<u32>(max(77711u, ~(var_0.b >> (_wgslsmith_add_u32(var_1.x, var_0.b) % 32u))), ~1u ^ ~var_1.x, var_0.a.b, ~(~_wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(var_1.x, 4294967295u, 60030u)))));
    var_1 = firstLeadingBit(_wgslsmith_add_vec3_u32(var_2.zyz, ~vec3<u32>(_wgslsmith_sub_u32(var_0.b, var_2.x), reverseBits(var_0.a.b), var_2.x ^ 20591u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(29039i, _wgslsmith_sub_i32(u_input.b, -1i)), -2147483647i), 1944i, 35171i), _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a, 4294967295u, var_1.x) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 33339u, 13423u), var_2.wyx) % vec3<u32>(32u))), var_2.wyw), var_2.x, ~63402u);
}

