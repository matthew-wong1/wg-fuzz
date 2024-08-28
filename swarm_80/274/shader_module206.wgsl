struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(arg_3 - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3 * arg_3) + _wgslsmith_f_op_vec3_f32(-arg_3)))))));
    let var_1 = Struct_1(~(-1i), ~0u, select(vec4<bool>(arg_2.c.x, arg_2.c.x, true, true), select(arg_2.c, arg_2.c, select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, arg_2.c.x, true, true), arg_2.c), vec4<bool>(true, arg_2.c.x, arg_2.c.x, arg_2.c.x), all(arg_2.c))), arg_2.c.x), _wgslsmith_f_op_f32(floor(145f)));
    var var_2 = countOneBits(_wgslsmith_add_vec4_u32(~(~(~vec4<u32>(arg_2.b, var_1.b, 14851u, 21130u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 4294967295u, u_input.a.x, 60233u), vec4<u32>(4294967295u, arg_2.b, 5983u, select(4294967295u, var_1.b, true)), vec4<u32>(4294967295u, var_1.b, ~28678u, u_input.a.x))));
    var var_3 = ~(var_2.x | firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.b, 1u, 50940u, 4294967295u), select(vec4<u32>(var_1.b, var_1.b, 6038u, 53488u), vec4<u32>(1u, 4784u, 1u, 1u), true))));
    var_2 = ~reverseBits(select(firstTrailingBit(vec4<u32>(u_input.a.x, var_2.x, 132875u, arg_2.b)), firstLeadingBit(~vec4<u32>(arg_2.b, 0u, u_input.a.x, var_1.b)), !select(vec4<bool>(var_1.c.x, arg_2.c.x, true, arg_2.c.x), arg_2.c, vec4<bool>(arg_2.c.x, var_1.c.x, var_1.c.x, arg_2.c.x))));
    return any(vec4<bool>(var_1.c.x, arg_2.c.x, all(vec2<bool>(false, var_1.c.x)) & false, arg_2.c.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec2<f32>) -> f32 {
    var var_0 = 1i;
    var_0 = -select(_wgslsmith_clamp_i32(select(1i, 2147483647i, select(true, true, true)), ~_wgslsmith_mod_i32(-3901i, 18728i), 1i), reverseBits(~abs(1i)), select(select(func_3(vec4<i32>(-15923i, 2147483647i, 32556i, -2147483647i), -44310i, Struct_1(2147483647i, 94121u, vec4<bool>(true, true, true, false), arg_2.x), vec3<f32>(arg_2.x, 225f, 1153f)), true, true), select(false, true, true), _wgslsmith_clamp_i32(-1i, -35485i, -26762i) < 5935i));
    var_0 = -27397i;
    var var_1 = -2405f;
    let var_2 = Struct_1(min(~(~0i), -22860i), 4294967295u, select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), !select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true), false), vec4<bool>(true, false, _wgslsmith_f_op_f32(-1428f - 1601f) < arg_2.x, true)), -102f);
    return _wgslsmith_f_op_f32(abs(-1000f));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(-36909i, abs(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x), u_input.a.x)), !select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), true), vec4<bool>(true, true, true, true), any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a.yy, vec4<f32>(-941f, 119f, 138f, -1175f), vec2<f32>(2219f, 980f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-196f - -999f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.a.yy, vec4<f32>(506f, -2806f, 179f, -918f), vec2<f32>(2715f, -908f))), _wgslsmith_f_op_f32(sign(101f))))));
    var var_1 = var_0.d;
    var_1 = var_0.d;
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(f32(-1f) * -752f)) + 822f)), _wgslsmith_f_op_f32(662f + var_0.d), !any(var_0.c)));
    return Struct_1(-1i, ~u_input.a.x, var_0.c, var_0.d);
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = ~(~(~(~u_input.a.x) & _wgslsmith_add_u32(arg_0.b, abs(u_input.a.x))));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-arg_1);
    let var_3 = 2147483647i;
    let var_4 = vec3<i32>(_wgslsmith_clamp_i32(~max(0i, arg_0.a), var_3, 2147483647i) >> ((u_input.a.x << (20780u % 32u)) % 32u), -45819i, -(~16274i));
    return _wgslsmith_mod_u32(~firstLeadingBit(min(abs(4294967295u), select(38649u, u_input.a.x, arg_0.c.x))), ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = func_4(func_1(), _wgslsmith_f_op_f32(max(-2071f, _wgslsmith_f_op_f32(min(404f, -860f))))) >= 1u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1777f), _wgslsmith_f_op_f32(trunc(-2730f)), _wgslsmith_f_op_f32(ceil(242f)), _wgslsmith_f_op_f32(floor(-793f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-956f, 224f, 194f, 809f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(449f, 1163f, 1000f, 704f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(577f, 832f, -473f, 797f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-701f, 913f, 1607f, -353f) - vec4<f32>(887f, -984f, -1000f, 430f)), vec4<bool>(false, true, false, false))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-604f, 508f, 1000f, 231f)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1709f, -874f)) - -133f));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, var_1.x))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(794f, -1335f)))))) * var_2), var_2);
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(636f * 211f)), _wgslsmith_f_op_f32(func_1().d - _wgslsmith_f_op_f32(abs(var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -196f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1317f - 386f), var_2, -1399f, _wgslsmith_f_op_f32(floor(511f))) + vec4<f32>(_wgslsmith_f_op_f32(var_1.x + 934f), -758f, _wgslsmith_div_f32(-1922f, var_1.x), _wgslsmith_f_op_f32(round(var_1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-635f, 328f, var_2, var_1.x), vec4<f32>(451f, var_1.x, 654f, -744f)))))), vec4<bool>(func_1().c.x || true, any(vec3<bool>(true, true, any(vec3<bool>(false, true, false)))), var_2 < _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2, var_2))), all(vec3<bool>(true, true, true)) & !(var_2 >= 623f))));
    let var_3 = func_1();
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(var_3.d)), _wgslsmith_f_op_f32(640f + _wgslsmith_f_op_f32(var_1.x * -471f)), var_2, var_3.d);
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1327f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_1.xxx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_1().d, func_1().d)) - -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2))), firstTrailingBit(_wgslsmith_dot_vec3_u32(reverseBits(select(vec3<u32>(u_input.a.x, 1u, var_3.b), vec3<u32>(var_3.b, 4294967295u, u_input.a.x), var_3.c.x)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 60405u, u_input.a.x, 27285u), vec4<u32>(u_input.a.x, var_3.b, 1u, var_3.b)), 0u, 84692u))), var_3.a);
}

