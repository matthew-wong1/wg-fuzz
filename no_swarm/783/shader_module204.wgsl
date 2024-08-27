struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>) -> bool {
    var var_0 = arg_0.c.zz;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_0.d.xz, _wgslsmith_f_op_vec2_f32(vec2<f32>(-224f, -750f) - vec2<f32>(1f, 1f))))));
    var var_1 = arg_1.x || arg_1.x;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.xx * arg_0.d.xy) + vec2<f32>(631f, 792f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(677f, _wgslsmith_f_op_f32(round(-882f))), -710f)));
    let var_2 = arg_0.b;
    return all(vec4<bool>(all(!select(vec2<bool>(arg_1.x, false), arg_1.yy, arg_1.x)), false, arg_1.x, !all(vec4<bool>(arg_1.x, arg_1.x, true, true))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_2(_wgslsmith_add_vec2_u32(countOneBits(u_input.a.ww), vec2<u32>(u_input.a.x, ~57651u)), arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(885f - -1292f), 123f, 1f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1089f), _wgslsmith_f_op_f32(trunc(577f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1261f, -1876f)))), 607f, _wgslsmith_f_op_f32(floor(990f))), ~(_wgslsmith_add_u32(~u_input.a.x, ~arg_0.x) >> (0u % 32u)));
    let var_1 = Struct_2(arg_0.yx, arg_1, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_0.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(var_0.c)), _wgslsmith_f_op_vec3_f32(-var_0.d), any(vec4<bool>(false, false, true, false))))), vec3<f32>(_wgslsmith_f_op_f32(select(-529f, _wgslsmith_f_op_f32(step(var_0.d.x, var_0.c.x)), true)), var_0.c.x, -1298f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.d, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1051f, var_0.d.x, var_0.c.x), vec3<f32>(1544f, -339f, -2136f)))))), arg_1.a | countOneBits(_wgslsmith_dot_vec3_u32(min(arg_0.zxw, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), firstTrailingBit(arg_0.ywx))));
    let var_2 = firstLeadingBit(_wgslsmith_mult_vec2_u32(arg_0.xz, firstLeadingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a.x, 32807u), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.x, 4294967295u), vec2<u32>(48547u, 49168u))))));
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(firstTrailingBit(1i), 13271i, -1i, 72687i)) >> (var_0.b.a % 32u), ~(~1i));
    let var_4 = all(select(select(vec4<bool>(true, true, true, any(vec3<bool>(false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true))), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), all(vec4<bool>(true, true, true, true))));
    return ~abs(_wgslsmith_dot_vec3_u32(select(abs(arg_0.zww), arg_0.yxz, 4294967295u >= u_input.a.x), ~vec3<u32>(5019u, 0u, 1u)));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = reverseBits(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(12263u, 4294967295u), 4294967295u & arg_1.a) & _wgslsmith_mult_u32(~arg_0, u_input.a.x), 60845u, _wgslsmith_add_u32(_wgslsmith_div_u32(abs(4294967295u), max(arg_0, arg_1.a)), ~(arg_0 | 188032u))));
    let var_1 = firstTrailingBit(u_input.a.zwz) >> (~(vec3<u32>(func_3(vec4<u32>(u_input.a.x, 16258u, 89992u, arg_1.a), Struct_1(1u)), min(20411u, 49382u), ~3501u) | vec3<u32>(4294967295u, 27423u, ~1u)) % vec3<u32>(32u));
    var_0 = abs(arg_1.a);
    return _wgslsmith_f_op_f32(round(1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(reverseBits(-firstTrailingBit(_wgslsmith_div_i32(18121i, 1i))), -32824i);
    var_0 = -abs(firstLeadingBit(-(i32(-1i) * -85250i)));
    var var_1 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1598f, 972f, -307f, -792f), vec4<f32>(-1120f, 757f, -296f, 954f), false)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(867f, -1479f, 2467f, 1451f))), func_1(Struct_2(var_1.wy, Struct_1(1u), vec3<f32>(-1000f, -1021f, -583f), vec3<f32>(255f, -1000f, -645f), u_input.a.x), vec3<bool>(false, true, false))))))), vec3<f32>(_wgslsmith_f_op_f32(2378f - _wgslsmith_f_op_f32(func_2(4294967295u, Struct_1(10043u)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.a.x, Struct_1(u_input.a.x))) + 2029f), 560f)), -466f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(1134f - 863f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1158f, -1000f))), -1640f) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1440f, -2010f, 2342f)))))));
}

