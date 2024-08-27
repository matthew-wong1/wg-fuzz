struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = vec3<i32>(firstLeadingBit(_wgslsmith_div_i32(31700i, -(i32(-1i) * -27514i))), -2147483647i, -_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-9981i, 46591i, -1i, 29259i)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 1i, -2147483647i, 25552i), vec4<i32>(-106042i, -2147483647i, 2147483647i, 6017i), vec4<i32>(-58731i, 17502i, -23087i, -1i)), vec4<i32>(0i, 1i, -2147483647i, 1i))));
    var_0 = firstTrailingBit(vec3<i32>(-(~var_0.x), 1i, reverseBits(var_0.x)));
    var_0 = ~select(-(~firstTrailingBit(vec3<i32>(var_0.x, var_0.x, var_0.x))), vec3<i32>(1i, var_0.x, ~(-49179i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)));
    let var_1 = !vec3<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -581f) * _wgslsmith_f_op_f32(f32(-1f) * -164f)) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-268f, -1031f)))), select(!(u_input.a < 4294967295u), true, true));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(ceil(-830f)))))));
    return countOneBits(u_input.a) >> (~(~1u) % 32u);
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    var var_0 = 1u;
    var_0 = ~1u;
    var_0 = _wgslsmith_add_u32(~_wgslsmith_sub_u32(arg_1.a.x, ~0u), ~firstLeadingBit(~u_input.a)) | (func_3() ^ u_input.a);
    let var_1 = _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, _wgslsmith_add_u32(~abs(u_input.a), arg_1.a.x)), reverseBits(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(69631u, 35841u)), vec2<u32>(1u, 19734u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-581f + arg_1.e.a.x) - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.c.a.x, arg_1.e.a.x, false))), _wgslsmith_f_op_f32(-1143f - _wgslsmith_div_f32(341f, arg_1.e.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.e.a.x), _wgslsmith_f_op_f32(-arg_0))))));
    return ~0u;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(18381u, arg_1, u_input.a, arg_1)), firstLeadingBit(vec4<u32>(22923u, 25132u, arg_1, arg_1))), abs(vec4<u32>(59768u, func_2(887f, Struct_2(vec3<u32>(1u, 1u, 88747u), Struct_1(vec3<f32>(940f, 1219f, -1000f), vec2<bool>(false, arg_2)), Struct_1(vec3<f32>(-2418f, -1382f, -1294f), vec2<bool>(false, arg_2)), arg_0.x, Struct_1(vec3<f32>(-357f, -498f, -690f), vec2<bool>(arg_2, arg_2))), Struct_1(vec3<f32>(-1000f, -175f, 1000f), vec2<bool>(true, false)), vec3<bool>(true, false, arg_2)), 69779u, _wgslsmith_sub_u32(1u, 1u)))), func_2(-295f, Struct_2(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 22574u, arg_1), vec3<u32>(8023u, u_input.a, 2691u), vec3<u32>(1u, arg_1, 4294967295u))), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(696f, -1000f, 613f))), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), Struct_1(vec3<f32>(-1792f, 755f, 1108f), !vec2<bool>(false, arg_2)), -2147483647i, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(285f, -1029f, -674f)), !vec2<bool>(false, arg_2))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-428f, 1206f, 1250f) - vec3<f32>(1622f, -899f, -442f)) - vec3<f32>(1000f, -211f, -658f)), !vec2<bool>(arg_2, arg_2)), !select(select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, arg_2, arg_2)), select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_2, true, false)), !arg_2)));
    let var_1 = vec2<u32>(var_0, _wgslsmith_add_u32(~((arg_1 ^ arg_1) ^ u_input.a), 1u));
    var var_2 = -1000f;
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(256f, -745f)))))), -1117f));
    var_2 = _wgslsmith_f_op_f32(755f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1089f - -1000f)))), 133f, any(vec4<bool>(true, arg_2, arg_2, false)) && any(vec4<bool>(true, arg_2, arg_2, true)))));
    return 21294u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a ^ ~(_wgslsmith_add_u32(func_1(vec3<i32>(-1i, 0i, 20905i), u_input.a, true), 1u) ^ 4294967295u);
    let var_1 = select(!(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, false, true, all(vec2<bool>(true, true))), !vec4<bool>(true, false, true, any(vec3<bool>(false, false, false))), !vec4<bool>(false, any(vec2<bool>(true, false)), false, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_2 = var_1.x;
    var_2 = !any(select(select(!var_1, !var_1, !var_1), !(!vec4<bool>(false, false, var_1.x, var_1.x)), vec4<bool>(false, true, var_1.x, select(var_1.x, var_1.x, true))));
    var_2 = var_1.x;
    var_2 = select(true, select(false, !(!all(vec2<bool>(true, false))), _wgslsmith_dot_vec4_i32(vec4<i32>(13964i, -1i, -47529i, 1i), reverseBits(vec4<i32>(39298i, -1194i, 47207i, 1i))) <= 8869i), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i, reverseBits(1i)), var_0, select(_wgslsmith_div_vec2_u32(~firstLeadingBit(vec2<u32>(var_0, 61692u)), vec2<u32>(u_input.a, abs(u_input.a))), _wgslsmith_add_vec2_u32(~vec2<u32>(25148u, var_0), ~(~vec2<u32>(var_0, u_input.a))), var_1.zy), 111f, ~_wgslsmith_add_u32(53049u, _wgslsmith_sub_u32(~u_input.a, var_0)));
}

