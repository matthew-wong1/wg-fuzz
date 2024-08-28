struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = !vec2<bool>(arg_3.a.x, arg_3.a.x);
    return _wgslsmith_div_vec4_i32(~vec4<i32>(arg_3.c.x, -2036i, 1i, _wgslsmith_mod_i32(~(-13593i), -2821i)), firstTrailingBit(vec4<i32>(arg_3.c.x, 1i, firstTrailingBit(-1i), arg_3.c.x >> (3899u % 32u)) >> (((vec4<u32>(45141u, 11369u, arg_0, 0u) >> (vec4<u32>(u_input.b.x, 42795u, u_input.b.x, 6885u) % vec4<u32>(32u))) << (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec3<bool>, arg_3: vec4<i32>) -> vec4<f32> {
    var var_0 = Struct_1(select(vec3<bool>(true, arg_2.x | false, !(arg_0 == -220f)), arg_2, arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_0, -142f)))) - 353f)), ~vec4<i32>(arg_3.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_3.x, -2147483647i), firstLeadingBit(arg_3.wy)), -_wgslsmith_sub_i32(1i, arg_3.x), arg_3.x));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(755f + arg_0) - _wgslsmith_f_op_f32(-518f * var_0.b)))), var_0.c);
    let var_1 = Struct_1(!vec3<bool>(false, any(!vec2<bool>(false, arg_2.x)), _wgslsmith_f_op_f32(abs(-1692f)) < _wgslsmith_div_f32(var_0.b, -882f)), -2834f, min(_wgslsmith_sub_vec4_i32(vec4<i32>(5651i, var_0.c.x, -14606i, arg_3.x), ~var_0.c) & vec4<i32>(reverseBits(-33357i), _wgslsmith_mod_i32(arg_3.x, var_0.c.x), -12573i, arg_1 >> (34078u % 32u)), func_3(_wgslsmith_mod_u32(37705u, _wgslsmith_sub_u32(1u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-971f, 1339f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(280f, 1352f, arg_0)), Struct_1(select(vec3<bool>(var_0.a.x, true, false), var_0.a, arg_2.x), _wgslsmith_f_op_f32(-456f - 110f), ~arg_3))));
    let var_2 = var_1;
    var_0 = Struct_1(!select(!select(var_2.a, vec3<bool>(false, true, var_0.a.x), var_0.a.x), vec3<bool>(!var_0.a.x, var_1.a.x, var_0.a.x), !var_0.a), 775f, vec4<i32>(_wgslsmith_div_i32(-arg_1, var_1.c.x), _wgslsmith_mod_i32(arg_1, (1i & var_1.c.x) | (53483i >> (u_input.b.x % 32u))), _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(var_1.c.wyz, vec3<i32>(var_1.c.x, -26842i, arg_3.x)), _wgslsmith_sub_i32(var_1.c.x, u_input.c)), var_1.c.x));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, _wgslsmith_f_op_f32(var_0.b * -1000f), var_1.b, 1192f))));
}

fn func_1(arg_0: i32, arg_1: u32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))) + _wgslsmith_f_op_vec4_f32(func_2(-122f, _wgslsmith_sub_i32(-1i, ~(~arg_0)), select(vec3<bool>(false, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), all(vec4<bool>(true, true, true, true))), vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, arg_0, u_input.c), vec4<i32>(u_input.c, arg_0, -2147483647i, -1i)), -21448i, ~(-7654i), u_input.c))));
    return _wgslsmith_sub_vec2_i32(vec2<i32>(select(-932i, u_input.c, false), _wgslsmith_div_i32(2147483647i, 22961i)) | ~select(vec2<i32>(11945i, u_input.a), vec2<i32>(arg_0, u_input.c), vec2<bool>(false, true)), _wgslsmith_mod_vec2_i32(max(-vec2<i32>(-2147483647i, -31228i), vec2<i32>(-18897i, -6818i) ^ vec2<i32>(2147483647i, arg_0)), reverseBits(~vec2<i32>(0i, arg_0)))) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b.x), u_input.b.xz) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min((vec2<i32>(countOneBits(u_input.c), 0i) | (func_1(u_input.a, 3490u) & func_3(u_input.b.x, -1537f, vec3<f32>(-1010f, -358f, -765f), Struct_1(vec3<bool>(true, true, true), 1124f, vec4<i32>(0i, u_input.c, u_input.c, u_input.a))).yz)) | _wgslsmith_mod_vec2_i32(vec2<i32>(-u_input.c, abs(-1i)), -vec2<i32>(u_input.c, u_input.c) | func_1(u_input.c, u_input.b.x)), ~vec2<i32>(_wgslsmith_add_i32(u_input.a, -1i), max(19300i, u_input.a)) ^ -(vec2<i32>(u_input.c, u_input.c) | vec2<i32>(-44544i, u_input.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(137f, 203f)))))));
    let var_2 = u_input.b.zxy;
    let var_3 = var_0.x < abs(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(20917u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2696f, var_1.x, var_1.x, -937f), vec4<f32>(-1458f, 110f, 401f, -1000f), false))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(var_1.x, var_0.x, vec3<bool>(var_3, false, var_3), vec4<i32>(-1i, var_0.x, u_input.a, u_input.a)))))), reverseBits(u_input.b.x) >> (10004u % 32u));
}

