struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec4<i32>,
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: f32) -> f32 {
    var var_0 = all(!(!vec3<bool>(arg_2.x, true, true)));
    let var_1 = false;
    var_0 = all(!vec3<bool>(!(arg_3 <= -264f), true, var_1));
    let var_2 = vec3<bool>(arg_3 > -790f, firstLeadingBit(~_wgslsmith_clamp_i32(-4115i, u_input.d, 0i)) <= -16721i, true);
    var var_3 = Struct_3(_wgslsmith_mod_i32(1i, -(~(~2147483647i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-614f, _wgslsmith_f_op_f32(trunc(377f)), -536f, _wgslsmith_f_op_f32(floor(arg_3))) + _wgslsmith_f_op_vec4_f32(-arg_0))));
    return -518f;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1411f))));
    let var_1 = Struct_1(-211f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 - arg_1.x))));
    let var_2 = false;
    var var_3 = countOneBits(88393u);
    var_3 = _wgslsmith_add_u32(~firstLeadingBit(173698u), ~firstLeadingBit(21526u & ~u_input.c));
    return _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-884f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(237f, 1939f, -276f, 979f), vec4<f32>(468f, -1071f, arg_1.x, -297f))), firstTrailingBit(vec4<i32>(u_input.e.x, u_input.d, 13620i, -2147483647i)), select(vec4<bool>(arg_0.x, var_2, true, arg_0.x), vec4<bool>(true, var_2, false, true), arg_0.x), arg_1.x)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(func_2(vec3<bool>(false, true, false), vec2<f32>(-1556f, 772f))), 303f, -149f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -360f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(ceil(-339f))))))), 1431f);
    let var_2 = u_input.d;
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(203f, var_1.a, var_1.a, 1317f), vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1548f, var_1.a, var_1.a, 1370f))) - vec4<f32>(_wgslsmith_f_op_f32(-766f + var_1.b), _wgslsmith_f_op_f32(var_1.b - var_1.a), _wgslsmith_f_op_f32(1124f - var_1.b), var_1.b)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(199f, -1861f, -1425f, var_1.a)) * _wgslsmith_f_op_vec4_f32(func_1(vec4<u32>(66098u, u_input.c, u_input.c, 1u), u_input.e.x))), vec4<f32>(_wgslsmith_div_f32(var_1.a, -929f), _wgslsmith_div_f32(1000f, var_1.b), -1401f, _wgslsmith_f_op_f32(473f * var_1.a)), false)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(func_1(~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(max(vec4<u32>(80309u, 15963u, 4294967295u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), reverseBits(vec4<u32>(u_input.c, u_input.c, 1u, 1u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.c, u_input.c, u_input.c), vec4<u32>(11654u, u_input.c, 4294967295u, u_input.c))), u_input.b)).xxz;
    var var_5 = var_1;
    var var_6 = _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(1031i, 351i, u_input.e.x, 0i) ^ vec4<i32>(var_2, 1i, var_2, -27904i), vec4<i32>(var_0.x, 1i, _wgslsmith_mult_i32(0i, var_2), -17222i))), min(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 2147483647i, var_0.x, var_0.x), vec4<i32>(-2147483647i, var_2, var_0.x, -2068i)), u_input.a.x), ~select(vec2<i32>(-2147483647i, 28104i), ~u_input.e, all(vec4<bool>(false, false, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, var_2 & 15540i, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -416f), -2753f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_4.x * var_5.a)))))), reverseBits(vec4<i32>(var_2 | 1i, -8674i << (u_input.c % 32u), var_0.x, -50239i)) | vec4<i32>(1i ^ min(var_2, -6320i), _wgslsmith_div_i32(-26820i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, var_2), vec3<i32>(var_2, u_input.a.x, var_2))), min(var_0.x, var_2), 51575i));
}

