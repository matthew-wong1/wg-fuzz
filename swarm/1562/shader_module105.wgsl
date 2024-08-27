struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1199f + _wgslsmith_f_op_f32(f32(-1f) * -1327f))));
    let var_1 = ~_wgslsmith_div_i32(-47093i, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(1i, 45231i)), -vec2<i32>(1i, 1i)));
    let var_2 = 19184u;
    var var_3 = abs(vec3<i32>(-29395i, ~var_1, 20631i ^ _wgslsmith_div_i32(var_1 << (1581u % 32u), -8168i)));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(112f * -624f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1048f)))))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(exp2(var_0))), Struct_1(0u, _wgslsmith_div_u32(arg_0, arg_0), ~firstLeadingBit(vec4<u32>(0u, 134212u, u_input.a, arg_0))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + -646f))), !arg_1.x)), _wgslsmith_f_op_f32(ceil(var_0))));
    return true;
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = !(!vec3<bool>(true, !func_3(4294967295u, vec2<bool>(true, false)), true));
    let var_1 = 54821u >> (~_wgslsmith_sub_u32(min(~arg_0, 1u), countOneBits(u_input.a)) % 32u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(864f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1016f)), 1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1367f, 149f))))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2082f, -1321f, 653f))), var_0))));
    var var_3 = Struct_2(2288f, _wgslsmith_f_op_f32(trunc(924f)), Struct_1(_wgslsmith_dot_vec3_u32(max(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, 1u, u_input.a), vec3<u32>(21321u, 11342u, arg_0)), firstLeadingBit(vec3<u32>(arg_0, 22322u, 24443u))), ~vec3<u32>(u_input.a, 0u, var_1) >> (~vec3<u32>(var_1, u_input.a, 1u) % vec3<u32>(32u))), ~(~var_1), vec4<u32>(0u, 41344u, reverseBits(u_input.a) << (1u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(45995u, 4294967295u, 20692u) ^ vec3<u32>(var_1, 4294967295u, arg_0), ~vec3<u32>(u_input.a, arg_0, arg_0)))), vec2<f32>(var_2.x, _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(sign(532f))))));
    var var_4 = var_0.yy;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(384f, -172f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_2.x, -378f, var_0.x)), _wgslsmith_f_op_f32(-var_2.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1865f, 1757f)), -418f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -420f), var_3.b, var_4.x))), var_2.x)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: bool) -> vec2<u32> {
    var var_0 = arg_1;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(round(1427f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-948f - -529f)))), Struct_1(~(~firstTrailingBit(5210u)), ~_wgslsmith_sub_u32(countOneBits(u_input.a), _wgslsmith_mult_u32(21114u, 16734u)), ~min(countOneBits(vec4<u32>(30108u, 54932u, 4294967295u, 70735u)), vec4<u32>(24802u, u_input.a, 504u, 0u) >> (vec4<u32>(0u, 0u, 0u, u_input.a) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.zy, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1456f, arg_1.x), var_0.zz)))))));
    var var_2 = ~_wgslsmith_div_u32(_wgslsmith_div_u32(13983u, var_1.c.c.x), _wgslsmith_clamp_u32(1u, ~u_input.a, ~var_1.c.b) & (_wgslsmith_mult_u32(u_input.a, 92684u) | 1u));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -149f))))), _wgslsmith_f_op_f32(-1416f + 3065f), var_1.c, arg_1.wz);
    var var_4 = Struct_2(var_3.d.x, -2192f, Struct_1(abs(0u), ~6236u, var_3.c.c | vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_3.c.c.x), vec2<u32>(0u, 0u)), 4652u, abs(77526u), 1u)), vec2<f32>(333f, 491f));
    return var_4.c.c.zz;
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = vec4<f32>(1582f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1426f * arg_0) + _wgslsmith_f_op_f32(floor(-357f)))), 287f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -175f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -815f)) + 1f), arg_0);
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(488f, _wgslsmith_div_f32(1603f, 359f))), -1815f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-344f - arg_0), _wgslsmith_f_op_f32(floor(arg_0)))))));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.zxy)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(768f * var_0.x), _wgslsmith_f_op_f32(func_2(u_input.a)), _wgslsmith_f_op_f32(-972f + -1000f))))), false);
    let var_2 = select(vec2<bool>(true, true), !(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), false);
    var var_3 = (0u | max(17541u, firstLeadingBit(_wgslsmith_clamp_u32(u_input.a, var_1.x, u_input.a)))) >= u_input.a;
    return -961f < arg_0;
}

fn func_5(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> StorageBuffer {
    let var_0 = arg_2.c.a;
    let var_1 = Struct_1(~abs(arg_2.c.c.x), 6990u, vec4<u32>(21374u, ~(_wgslsmith_add_u32(arg_2.c.b, arg_2.c.c.x) ^ 8930u), u_input.a, var_0));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1324f * _wgslsmith_f_op_f32(abs(arg_2.a))))));
    var_2 = -341f;
    var_2 = -1000f;
    return StorageBuffer(_wgslsmith_f_op_f32(arg_2.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))), -vec4<i32>(1i, 1i, 1i, 1i), arg_2.c.c.x, -(~(-359i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1745f, -1592f, 1533f, 162f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1551f, -1099f, 1565f, 938f), vec4<f32>(2110f, 1323f, -783f, -1007f)), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1592f, 1000f, -1000f, 216f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1502f, 675f, -1296f, 1569f), vec4<f32>(637f, 105f, 668f, 1572f), false))))))));
    var var_1 = max(firstLeadingBit(-18888i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(~(-1i), 1i, abs(0i), firstLeadingBit(-11784i)), vec4<i32>(-1i) * -vec4<i32>(-75992i, -3421i, -21824i, 6118i)));
    let var_2 = u_input.a;
    var var_3 = vec3<bool>(true, abs(firstLeadingBit(u_input.a)) <= ~firstTrailingBit(1u ^ var_2), true);
    let var_4 = !(!vec3<bool>(any(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x)) & true, var_3.x, true));
    var_1 = ~(-33468i);
    var_3 = select(var_4, !(!(!(!var_4))), select(var_4, var_4, !select(var_4, vec3<bool>(true, var_3.x, var_4.x), true)));
    var_3 = vec3<bool>(var_3.x, true, var_4.x);
    let x = u_input.a;
    s_output = func_5(select(vec3<bool>(true, true, !var_4.x), vec3<bool>(func_1(var_0.x), false, true), var_4.x), ~var_2, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, var_0.x)))), -1137f, Struct_1(~(var_2 & var_2), 0u, reverseBits(~vec4<u32>(68833u, 6283u, u_input.a, u_input.a))), var_0.ww), _wgslsmith_f_op_f32(abs(-108f)));
}

