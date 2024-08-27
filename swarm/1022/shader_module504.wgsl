struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = ~vec4<i32>(-(~abs(u_input.b.x)), _wgslsmith_clamp_i32(u_input.b.x << ((21693u >> (0u % 32u)) % 32u), select(~16917i, -2147483647i, true), _wgslsmith_div_i32(u_input.b.x, -2147483647i) << ((43029u & u_input.c.x) % 32u)), u_input.b.x >> (~reverseBits(47566u) % 32u), firstTrailingBit(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, u_input.a.x)), u_input.a.zw ^ u_input.b.yz)));
    var_0 = vec4<i32>(firstTrailingBit(5094i), var_0.x, -u_input.a.x >> (u_input.c.x % 32u), _wgslsmith_mod_i32(-1i, min(~(u_input.a.x ^ -44991i), -1i)));
    var var_1 = ~(-(~_wgslsmith_add_i32(var_0.x, reverseBits(u_input.a.x))));
    var_1 = -20851i;
    var var_2 = Struct_1(u_input.a.x, u_input.c.x ^ 0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1712f, 245f, 686f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2236f, -180f, 638f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -339f, 785f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(970f, 488f, -140f)))))), var_0.x, !vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), any(vec4<bool>(true, true, true, true))));
    return _wgslsmith_f_op_f32(1609f + _wgslsmith_f_op_f32(ceil(var_2.c.x)));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.c.xwx)))));
    let var_1 = Struct_1(-29005i, u_input.c.x, vec3<f32>(-635f, -458f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-656f * -1070f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(925f))))), u_input.b.x, !arg_0);
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -967f) + -474f)));
    var var_2 = false;
    let var_3 = vec4<bool>(false, false, !(!all(vec3<bool>(true, true, false))) || all(!select(vec4<bool>(true, var_1.e.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, var_1.e.x, var_1.e.x, var_1.e.x), false)), var_1.c.x <= -719f);
    return -1756f;
}

fn func_1() -> StorageBuffer {
    let var_0 = !(false || !any(vec4<bool>(true, false, false, true)));
    var var_1 = _wgslsmith_f_op_f32(func_2(!(!(!select(vec2<bool>(true, true), vec2<bool>(var_0, true), false)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1594f, -1127f)));
    var_1 = 1893f;
    var var_2 = u_input.c.x;
    return StorageBuffer(-2147483647i, ~(vec3<i32>(-54397i, -7530i, u_input.b.x) & (-vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) >> (vec3<u32>(1u, 0u, 31892u) % vec3<u32>(32u)))), -694f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

