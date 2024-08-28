struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1310f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(1000f - -655f)))));
    var var_1 = arg_1;
    return vec4<bool>(all(!vec3<bool>(true, var_1.d == var_1.d, arg_1.d)), any(select(!vec2<bool>(true, var_1.d), select(vec2<bool>(var_1.d, arg_1.b), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, arg_1.b), vec2<bool>(true, var_1.b), var_1.d))) || any(select(!vec3<bool>(true, arg_1.d, var_1.b), select(vec3<bool>(arg_1.d, arg_1.b, arg_1.d), vec3<bool>(true, var_1.b, arg_1.d), true), !vec3<bool>(arg_1.b, false, false))), all(select(select(vec3<bool>(false, var_1.d, arg_1.b), vec3<bool>(arg_1.d, var_1.b, false), vec3<bool>(true, var_1.b, arg_1.b)), vec3<bool>(arg_1.b, var_1.b, arg_1.b), !var_1.d)) | true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(443f)))) < arg_1.a);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> vec2<bool> {
    var var_0 = ~countOneBits(select(countOneBits(vec4<u32>(56802u, u_input.a.x, u_input.d, 4294967295u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_1.x, u_input.a.x, u_input.c.x), vec4<u32>(arg_1.x, u_input.b, arg_1.x, u_input.c.x)), !func_3(0u, Struct_1(-1335f, false, vec2<u32>(1u, arg_1.x), false))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1202f) * -1015f);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(var_1, var_1, arg_0)), select(!(!arg_0), _wgslsmith_sub_i32(0i, 1i) != _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(1934i, 81441i)), true) & (-511f == _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1, var_1)))), vec2<u32>(1u, firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(1u, 43924u)))), false);
    var_0 = vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4140u, 17945u, u_input.d) & vec4<u32>(var_0.x, 0u, arg_1.x, var_2.c.x), vec4<u32>(0u, u_input.d, var_0.x, arg_1.x)), ~(countOneBits(vec4<u32>(0u, 0u, u_input.b, 3065u)) >> (reverseBits(vec4<u32>(u_input.b, arg_1.x, 4294967295u, var_2.c.x)) % vec4<u32>(32u)))), ~25434u, ~_wgslsmith_mod_u32(min(firstTrailingBit(var_2.c.x), var_0.x << (var_0.x % 32u)), 73475u));
    var var_3 = Struct_1(var_2.a, !arg_0, ~firstLeadingBit(vec2<u32>(var_2.c.x, ~var_0.x)), false);
    return vec2<bool>(any(!func_3(u_input.c.x, Struct_1(var_2.a, true, var_0.zw, arg_0)).zzz), !(var_3.b | true));
}

fn func_1() -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(1386f)), !(_wgslsmith_mult_i32(0i, firstTrailingBit(-19605i)) > -14513i), vec2<u32>(min(u_input.c.x, u_input.a.x), _wgslsmith_mult_u32(62644u, ~(~u_input.a.x))), any(func_2(false, ~(~vec3<u32>(0u, u_input.a.x, u_input.c.x)))));
    let var_1 = vec2<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-12720i, 2147483647i, 1i), vec3<i32>(-2147483647i, -2147483647i, -7225i), vec3<i32>(-43242i, 1i, 18455i))) ^ countOneBits(select(vec3<i32>(-1i, -1i, 20115i), vec3<i32>(2147483647i, -4837i, 0i), vec3<bool>(false, true, false))), (_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(-2147483647i, 19101i, 549i), vec3<i32>(2147483647i, -1i, -53183i)) | vec3<i32>(1i, 1i, 1i)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 33254i, 1i), ~vec3<i32>(1i, -18038i, 34971i), ~vec3<i32>(0i, 1i, 1i))));
    var var_2 = var_0;
    var_2 = Struct_1(_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -178f))), var_0.b, ~min(vec2<u32>(abs(u_input.a.x), 4294967295u >> (var_2.c.x % 32u)), _wgslsmith_add_vec2_u32(u_input.c.zx, ~vec2<u32>(14581u, 8259u))), 1u >= u_input.d);
    var var_3 = vec4<bool>(true, any(vec2<bool>(true, all(vec2<bool>(var_2.d, false)))), func_2(func_3(~34552u, Struct_1(-1371f, !var_0.d, abs(vec2<u32>(u_input.a.x, 18883u)), false)).x, _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, var_2.c.x, var_0.c.x) & vec3<u32>(1u, 71347u, var_0.c.x), countOneBits(~u_input.c))).x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.c.x), firstLeadingBit(vec2<u32>(15322u, u_input.d))) < _wgslsmith_add_u32(1u, 12296u));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.a, -1651f))) + vec2<f32>(var_2.a, 1000f)))))) * vec2<f32>(var_0.a, -1259f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1733f, 1f), vec2<f32>(-559f, 1f)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-831f, -930f)))))));
    let var_1 = true;
    var var_2 = max(~(-16791i), -_wgslsmith_sub_i32(1i, 20108i));
    var var_3 = u_input.c.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, 950f), vec3<f32>(var_0.x, 406f, -234f))) + vec3<f32>(var_0.x, var_0.x, -1000f)) + vec3<f32>(1021f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(566f, var_0.x, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(-221f, var_0.x, var_0.x))) + vec3<f32>(-1729f, _wgslsmith_f_op_f32(581f * var_0.x), _wgslsmith_f_op_f32(var_0.x + -143f))))) * vec3<f32>(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -247f), !func_2(var_1, vec3<u32>(83972u, u_input.c.x, u_input.a.x)).x)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_0.x))))), _wgslsmith_f_op_f32(-210f * 305f)));
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_4.x), _wgslsmith_f_op_f32(step(-1950f, _wgslsmith_div_f32(-1212f, 307f))), var_0.x, -735f)) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(select(1707f, _wgslsmith_f_op_f32(var_0.x * var_0.x), false)), var_4.x, var_0.x));
    let var_6 = var_5.x;
    var var_7 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, var_0.x)), var_4.x)), false & !(var_1 | true), ~_wgslsmith_mult_vec2_u32(u_input.c.yz | ~u_input.a.zy, ~firstLeadingBit(vec2<u32>(u_input.d, 56762u))), false);
    let var_8 = ~(~_wgslsmith_add_u32(_wgslsmith_add_u32(var_7.c.x, reverseBits(var_7.c.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, var_7.c.x, u_input.b, var_7.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(var_7.c.x, 3629u, 0u, 1u), vec4<u32>(12587u, u_input.a.x, u_input.c.x, u_input.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(1i, 1i)), 107f, 1i, -2147483647i, _wgslsmith_dot_vec2_u32(u_input.c.zx | _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(var_7.c, vec2<u32>(4294967295u, u_input.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_7.c.x, 75649u), vec2<u32>(1u, var_7.c.x))), _wgslsmith_mod_vec2_u32(~var_7.c, var_7.c) | ~(~var_7.c)));
}

