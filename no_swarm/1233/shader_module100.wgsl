struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = 2091f;
    return all(select(vec2<bool>(u_input.a > (u_input.a ^ u_input.a), all(vec2<bool>(true, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(false, false))), false));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(true, false || func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 824f, 654f, 846f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(444f, -1266f, -443f, 1391f) - vec4<f32>(518f, -1000f, -1118f, 551f)))), max(26578u, ~1u));
    let var_1 = vec2<u32>(firstLeadingBit(var_0.c >> ((min(5552u, 79460u) << (1u % 32u)) % 32u)), 1u);
    var var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(7322i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(82552i, u_input.a, -4918i), vec3<i32>(36230i, u_input.a, u_input.a))), ~(-37026i)), vec2<i32>(_wgslsmith_clamp_i32((u_input.a >> (4294967295u % 32u)) | ~u_input.a, 31543i, -2147483647i & u_input.a), -_wgslsmith_dot_vec2_i32(select(vec2<i32>(2147483647i, 40403i), vec2<i32>(u_input.a, u_input.a), false), vec2<i32>(-50645i, -1i))));
    var_0 = Struct_1(var_0.a, !var_0.b, 0u);
    var var_3 = var_2.x;
    return Struct_1(true, var_0.b, 1u);
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(950f + _wgslsmith_f_op_f32(step(170f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1510f - -787f)))))));
    var var_0 = (-_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, u_input.a, 0i), vec4<i32>(0i, u_input.a, -2279i, 58533i)), -24858i) == u_input.a) & true;
    var_0 = select(any(vec2<bool>(true, true)) | all(vec3<bool>(any(vec2<bool>(true, true)), true, true)), true, false);
    var var_1 = func_2();
    let var_2 = abs(~(vec2<i32>(1i, i32(-1i) * -5462i) ^ select(vec2<i32>(-71285i, -51436i), abs(vec2<i32>(-963i, u_input.a)), select(vec2<bool>(var_1.b, var_1.a), vec2<bool>(true, var_1.a), false))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(376f * _wgslsmith_f_op_f32(abs(360f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1585f)))), -1029f, 613f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(773f)) + 917f)))));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 578f));
    let var_1 = _wgslsmith_add_u32(1u, reverseBits(~(~1u)));
    var var_2 = vec4<u32>(1u, abs(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_1, 4294967295u), ~0u, var_1 ^ 6624u)), _wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_sub_u32(~0u, ~62192u)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 40269u, var_1, 15058u) ^ vec4<u32>(1u, 1u, 38649u, 64223u), ~vec4<u32>(var_1, 4294967295u, var_1, var_1))), abs(_wgslsmith_clamp_u32(var_1, var_1, var_1) & var_1)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(1u, var_1), ~var_1, 0u | var_1), ~(vec3<u32>(var_1, 4294967295u, var_1) & vec3<u32>(66535u, 0u, 61823u))));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + _wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-716f)))) - var_0.x)), var_0.x);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(315f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -856f)))), var_0.x, -1678f, 701f);
    global0 = var_0.x;
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yy, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-744f, var_0.x)), _wgslsmith_f_op_f32(-var_0.x), !var_3.a)), 321f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(select(var_0.x, -373f, false))) - 1382f))));
}

