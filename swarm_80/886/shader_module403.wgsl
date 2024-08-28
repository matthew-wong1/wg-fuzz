struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_2((~56983u < arg_1.d.x) | all(vec3<bool>(true, true, false)), false, 1096f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(572f, _wgslsmith_f_op_f32(floor(-638f)), !arg_1.a)) * _wgslsmith_f_op_f32(select(-1493f, -1593f, true))));
    var_0 = Struct_2(_wgslsmith_mod_u32(1u, 66657u) < abs(~_wgslsmith_add_u32(arg_1.d.x, arg_1.d.x)), any(select(!(!vec4<bool>(var_0.c, arg_0, var_0.c, var_0.c)), vec4<bool>(false, select(true, false, arg_1.a), var_0.c, any(vec2<bool>(true, false))), vec4<bool>(arg_0, !var_0.c, arg_0, true))), !(-58115i <= u_input.a));
    var_0 = Struct_2(!(!arg_1.a), !all(select(vec2<bool>(arg_0, arg_0), !vec2<bool>(true, arg_0), true)), all(!vec3<bool>(arg_1.a, true, true)));
    let var_1 = select(vec3<bool>(arg_1.a, false, ((arg_1.d.x | arg_1.d.x) ^ 1u) == ~(~arg_1.d.x)), select(vec3<bool>(arg_1.c < arg_1.c, var_0.a, !var_0.a), vec3<bool>(arg_1.a, var_0.c, var_0.b), !select(vec3<bool>(arg_0, var_0.b, var_0.b), !vec3<bool>(true, var_0.b, arg_0), true)), arg_0);
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(893f, -750f, -465f, -2578f) - vec4<f32>(867f, -138f, -956f, 448f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-669f, 1405f, -1792f, -873f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1049f, 1117f, 631f, -895f) + vec4<f32>(161f, -1388f, -648f, -1375f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-134f, -1000f, 1396f, 657f))))))));
    return _wgslsmith_mod_u32(_wgslsmith_add_u32(~arg_1.d.x & arg_1.d.x, arg_1.d.x >> (4294967295u % 32u)), reverseBits(abs(0u))) >> (arg_1.d.x % 32u);
}

fn func_2(arg_0: vec2<f32>) -> vec4<i32> {
    var var_0 = !select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, false, true), true, true)), vec4<bool>(func_3(false, Struct_1(true, u_input.b.x, u_input.b.x, vec3<u32>(0u, 31207u, 22916u))) > _wgslsmith_mult_u32(0u, 4294967295u), true, all(vec3<bool>(true, true, false)), true), vec4<bool>(true, !any(vec4<bool>(true, false, true, false)), true, select(true, false, false)));
    return vec4<i32>(_wgslsmith_add_i32(~_wgslsmith_sub_i32(~(-1i), 2147483647i | u_input.a), i32(-1i) * -5925i), ~_wgslsmith_div_i32(~(-18623i), u_input.b.x), abs(u_input.b.x), min(~7936i, _wgslsmith_add_i32(~54628i & u_input.a, _wgslsmith_mod_i32(5211i ^ u_input.b.x, -47591i))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec4_i32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-797f, _wgslsmith_f_op_f32(step(-228f, -790f))))), vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(1i, 1i, firstLeadingBit(arg_0.b)), ~firstLeadingBit(_wgslsmith_sub_i32(arg_0.c, 37039i)), _wgslsmith_add_i32(~u_input.b.x >> (21058u % 32u), firstTrailingBit(arg_0.c))));
    let var_1 = !vec4<bool>(all(vec3<bool>(arg_1, true, false)) || arg_0.a, all(!select(vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, arg_1), vec2<bool>(arg_1, false))), 82654i > select(_wgslsmith_dot_vec3_i32(var_0.yxw, var_0.wyz), var_0.x, arg_1), arg_0.a);
    var var_2 = !(!var_1.yy);
    var var_3 = arg_0.c;
    let var_4 = var_1.zxz;
    return Struct_1(var_2.x, -(var_0.x << (~(~arg_0.d.x) % 32u)), _wgslsmith_clamp_i32(select(select(arg_0.c, ~arg_0.b, true), ~arg_0.b, any(!vec3<bool>(true, true, arg_0.a))), firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, arg_0.c, var_0.x, arg_0.c), vec4<i32>(-2147483647i, arg_0.b, -1i, 2147483647i)), 1i)), var_0.x), vec3<u32>(arg_0.d.x, 42763u, _wgslsmith_div_u32(abs(arg_0.d.x ^ arg_0.d.x), ~1u | arg_0.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1107f;
    var var_1 = func_1(Struct_1(false, ~_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), vec4<i32>(u_input.a, 7579i, 27304i, 0i) | vec4<i32>(-2147483647i, u_input.a, 0i, -11272i)), 2147483647i, vec3<u32>(1u, 1u, 1u)), !any(vec3<bool>(false, true, true)) | all(vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(783f, -963f) - vec2<f32>(1574f, var_0)), vec2<f32>(var_0, 1225f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1374f, -780f)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-192f, 749f) - vec2<f32>(-1661f, 829f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1036f, var_0)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1038f, -332f, var_0) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1530f, var_0, 999f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1196f, -709f)))))), ~(-vec4<i32>(~1i, _wgslsmith_mult_i32(1i, 4515i), -var_1.b, _wgslsmith_sub_i32(u_input.b.x, 2147483647i))), ~_wgslsmith_add_vec4_i32(-(~vec4<i32>(u_input.b.x, u_input.a, 0i, var_1.b)), -_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.b, var_1.b, u_input.b.x, var_1.c), vec4<i32>(36952i, var_1.b, 0i, u_input.b.x))), _wgslsmith_f_op_f32(abs(-381f)));
}

