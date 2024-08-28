struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(select(1346f, 1000f, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 24572u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.c.x, 4294967295u, 29451u), vec4<u32>(u_input.c.x, u_input.b, u_input.b, 0u))) != 16228u));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -885f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-344f, -874f), -167f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1872f)) - _wgslsmith_div_f32(2795f, -656f)))))));
    var var_1 = select(!select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), false), vec4<bool>(select(true, true, true), true, true, all(vec3<bool>(false, true, true))), true), !select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true), true), vec4<bool>(true, all(vec4<bool>(false, false, false, true)), true, any(vec2<bool>(false, false)))), false);
    var var_2 = all(vec4<bool>(var_1.x, false, firstLeadingBit(max(u_input.a.x, -22547i)) == -1i, var_1.x));
    let var_3 = var_1.x;
    return -1312f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>) -> vec3<bool> {
    global0 = !(u_input.a.x < -1i) && true;
    global0 = _wgslsmith_f_op_f32(func_3()) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(534f - -510f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -161f) * 1f));
    var var_0 = vec3<u32>(~(~abs(19946u)), _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(0u, 1u), 11029u, ~arg_1.x), u_input.b);
    var var_1 = Struct_1(-u_input.a.x, _wgslsmith_add_u32(arg_0.x, countOneBits(u_input.b)), firstTrailingBit(var_0.x), -115f, arg_1.x);
    let var_2 = Struct_1(~u_input.a.x & 0i, countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 0u, var_0.x), ~arg_1), _wgslsmith_sub_vec3_u32(arg_1, arg_1))), reverseBits(22145u), _wgslsmith_f_op_f32(-1303f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.d, -1297f)) * _wgslsmith_f_op_f32(-1393f + _wgslsmith_f_op_f32(max(var_1.d, var_1.d))))), ~_wgslsmith_clamp_u32(select(arg_0.x, _wgslsmith_mult_u32(arg_1.x, 42719u), true), u_input.c.x, ~4294967295u));
    return vec3<bool>(false, select(false, false, true), -687f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_1.d, var_1.d))))));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: i32) -> u32 {
    global0 = arg_1.x;
    let var_0 = Struct_2(~(~vec4<u32>(countOneBits(1009u), firstTrailingBit(8080u), _wgslsmith_div_u32(4294967295u, 4294967295u), 0u)), !vec3<bool>(arg_0, !arg_0, true), Struct_1(arg_3, u_input.b, u_input.b, -592f, _wgslsmith_mult_u32(countOneBits(~u_input.b), ~(~10954u))), -136f, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(21757u, u_input.b) << (u_input.c % vec2<u32>(32u)), vec2<u32>(u_input.b, 1u)) | min(5923u, 49480u)));
    return var_0.a.x;
}

fn func_1() -> u32 {
    let var_0 = vec3<i32>(~(~6072i), u_input.a.x, reverseBits(-_wgslsmith_mod_i32(u_input.a.x, ~5729i)));
    var var_1 = Struct_1(u_input.a.x, func_4(true, func_2(u_input.c, select(vec3<u32>(4294967295u, 24523u, u_input.c.x), ~vec3<u32>(u_input.c.x, u_input.c.x, 41099u), vec3<bool>(true, true, true))), firstTrailingBit(select(vec3<i32>(-2147483647i, var_0.x, var_0.x), vec3<i32>(-35597i, 2147483647i, var_0.x), vec3<bool>(false, false, false)) ^ _wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(-36090i, var_0.x, var_0.x))), 9124i), select(_wgslsmith_div_u32(~_wgslsmith_sub_u32(114867u, u_input.c.x), u_input.c.x & ~4294967295u), reverseBits(u_input.b), true), -1597f, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x & u_input.b, u_input.c.x), vec2<u32>(34145u, 24796u) << (u_input.c % vec2<u32>(32u))) & countOneBits(_wgslsmith_mult_u32(40673u, _wgslsmith_add_u32(u_input.c.x, 69521u))));
    var var_2 = 6267u;
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.d, -143f, var_1.d), vec3<f32>(var_1.d, -1000f, 1160f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, var_1.d, -1900f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, -258f, 1483f) + vec3<f32>(var_1.d, -853f, 546f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-515f, -956f, -167f) + vec3<f32>(var_1.d, var_1.d, 1000f))))), vec3<f32>(_wgslsmith_f_op_f32(func_3()), var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))))));
    var_2 = ~(~(~(~_wgslsmith_mult_u32(87080u, 33131u))));
    return _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_1.c, ~(u_input.c.x ^ ~58252u), ~30176u), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(~u_input.c.x, func_1(), _wgslsmith_add_u32(select(0u, 1u, true), ~(~u_input.b)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-329f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1257f))))) - 364f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-571f, 645f))), _wgslsmith_f_op_f32(f32(-1f) * -1395f))), 398f)));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -719f)))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), -746f), vec2<f32>(var_1.x, -1918f)));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(283f, var_1.x), vec2<f32>(var_1.x, -1649f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-294f, var_1.x)))))))));
    let var_2 = Struct_2(abs(abs(vec4<u32>(firstTrailingBit(1u), min(89180u, 0u), 56844u << (var_0.x % 32u), u_input.c.x))), vec3<bool>(true, select(any(vec2<bool>(true, false)) | all(vec2<bool>(true, false)), true, all(vec3<bool>(true, true, true))), any(vec2<bool>(var_1.x == -539f, true))), Struct_1(51079i, var_0.x, _wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.c.x, 1u)), firstTrailingBit(_wgslsmith_add_vec2_u32(var_0.zx, u_input.c))), -656f, ~u_input.b), var_1.x, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.a);
}

