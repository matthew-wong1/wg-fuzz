struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 333f;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> i32 {
    return ~(~u_input.b.x) | -_wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b.x), u_input.b)), -1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 1i), vec3<i32>(559i, 20222i, u_input.b.x)), ~u_input.b.x));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = ~func_3(_wgslsmith_f_op_f32(select(-1000f, 1632f, true)));
    let var_1 = Struct_4(vec4<i32>(func_3(arg_0), _wgslsmith_mod_i32(-41947i, 1i) << (arg_3.c.x % 32u), -1i, -1i), any(vec2<bool>(arg_3.b < u_input.b.x, !(!arg_3.d.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1 + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_1, vec4<f32>(arg_2, arg_1.x, arg_1.x, arg_2)), arg_1, !vec4<bool>(true, false, arg_3.d.x, false)))) - vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(527f - arg_2))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1622f)), arg_2)), _wgslsmith_f_op_f32(min(-891f, _wgslsmith_f_op_f32(127f - arg_0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_1.x, arg_0)))))));
    let var_2 = _wgslsmith_mod_vec3_i32(~(-_wgslsmith_sub_vec3_i32(var_1.a.xwy, vec3<i32>(arg_3.b, arg_3.b, arg_3.b))), vec3<i32>(2147483647i, (_wgslsmith_div_i32(arg_3.b, arg_3.b) ^ firstLeadingBit(0i)) ^ ~(-16112i), reverseBits(-19820i)));
    var var_3 = Struct_2(~arg_3.c.yz);
    var var_4 = Struct_2(_wgslsmith_sub_vec2_u32(~firstLeadingBit(_wgslsmith_div_vec2_u32(var_3.a, arg_3.a.zx)), select(vec2<u32>(_wgslsmith_div_u32(101303u, var_3.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.c.x, var_3.a.x, 21903u, 1u), vec4<u32>(u_input.a, 4294967295u, 0u, 4294967295u))), arg_3.a.xx, var_1.b)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2), -550f, any(arg_3.d.xy))), _wgslsmith_f_op_f32(369f + _wgslsmith_f_op_f32(-arg_2)))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(990f)))), _wgslsmith_f_op_f32(-arg_1.x)) * 1000f));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32) -> f32 {
    global0 = arg_1;
    var var_0 = Struct_2(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(1067u, 0u)), ~(~vec2<u32>(19503u, u_input.a) & _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 23114u)))));
    return -472f;
}

fn func_1(arg_0: u32) -> f32 {
    global0 = 1146f;
    global0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2701f, -263f, -344f, 942f), vec4<f32>(-1474f, -948f, -1057f, 393f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-979f - 199f), -220f)) + _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(1535f + -629f), vec4<f32>(-1489f, 769f, -216f, -1000f), -593f, Struct_1(vec3<u32>(101173u, 1u, u_input.a), -1i, vec3<u32>(96232u, arg_0, u_input.a), vec3<bool>(false, false, true))))))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2620f, 1974f, -694f, 725f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-603f, -636f, 1625f, 189f) + vec4<f32>(393f, 385f, -1000f, -131f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(217f, -107f, -1000f, -1466f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(308f, -1679f, -717f, -529f), vec4<f32>(853f, 1012f, 791f, 1165f))))) + vec4<f32>(1f, 1f, 1f, 1f)));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x + 595f)));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(0u)) + -560f);
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), -2308f)), -238f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-444f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = Struct_4(~firstLeadingBit(-(~vec4<i32>(-1i, u_input.b.x, 2147483647i, 0i))), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(653f, 117f, var_0.x, 1000f), vec4<f32>(-1060f, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, false, true)))) - vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), -1000f, -668f, _wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = vec2<u32>(_wgslsmith_div_u32(u_input.a, 90024u), select(_wgslsmith_mult_u32(u_input.a, _wgslsmith_mod_u32(u_input.a, firstLeadingBit(u_input.a))), min(_wgslsmith_sub_u32(4294967295u, u_input.a) & _wgslsmith_dot_vec4_u32(vec4<u32>(3693u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, 30776u, 4294967295u)), u_input.a), any(select(vec4<bool>(var_1.b, false, false, var_1.b), vec4<bool>(false, true, true, true), false))));
    global0 = _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)) * _wgslsmith_f_op_f32(floor(var_1.c.x)))), all(!(!vec4<bool>(true, var_1.b, var_1.b, true)))));
    var var_3 = _wgslsmith_div_vec3_f32(var_0, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.c.x, var_1.c.x)), _wgslsmith_f_op_f32(step(1086f, 589f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-184f + _wgslsmith_div_f32(142f, 153f)) * _wgslsmith_f_op_f32(min(var_1.c.x, _wgslsmith_f_op_f32(1446f + var_1.c.x)))), var_0.x));
    var var_4 = select(!(!vec3<bool>(var_1.b, var_1.b, true)), !select(!select(vec3<bool>(false, var_1.b, var_1.b), vec3<bool>(true, true, var_1.b), vec3<bool>(var_1.b, false, var_1.b)), select(!vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(true, true, true), vec3<bool>(false, var_1.b, var_1.b)), var_1.b), false);
    let x = u_input.a;
    s_output = StorageBuffer(select(1u, countOneBits(32149u), all(!select(vec4<bool>(var_1.b, true, false, var_1.b), vec4<bool>(var_1.b, true, var_4.x, true), false))), firstLeadingBit(~(~(vec2<u32>(30300u, u_input.a) ^ vec2<u32>(0u, 12658u)))), ~abs(~(u_input.a ^ u_input.a)));
}

