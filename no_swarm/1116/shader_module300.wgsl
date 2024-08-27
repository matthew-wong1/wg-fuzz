struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 7>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>) -> i32 {
    global1 = array<Struct_2, 7>();
    global1 = array<Struct_2, 7>();
    var var_0 = Struct_1(271f, true);
    let var_1 = vec4<u32>(78655u, 4294967295u, 4294967295u, 14384u);
    global0 = var_1.x;
    return ~(-arg_0.x);
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: f32) -> i32 {
    let var_0 = countOneBits(min(vec4<i32>(func_3(vec3<i32>(u_input.a, -47838i, -17964i), vec3<i32>(1i, u_input.a, u_input.a)), u_input.a, i32(-1i) * -24641i, ~u_input.a), ~(vec4<i32>(u_input.a, u_input.a, 0i, 1i) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)))) << (min(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, 77064u, 2912u, arg_0) << (vec4<u32>(arg_2.x, 4294967295u, arg_2.x, arg_2.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, arg_0), vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<u32>(arg_0, 59278u, arg_2.x, 66668u))) | ~vec4<u32>(4294967295u, 10913u, arg_2.x, 4294967295u), vec4<u32>(countOneBits(_wgslsmith_mod_u32(4294967295u, arg_2.x)), _wgslsmith_sub_u32(countOneBits(arg_2.x), arg_2.x), firstLeadingBit(~arg_2.x), arg_0)) % vec4<u32>(32u));
    var var_1 = 29899i;
    global1 = array<Struct_2, 7>();
    let var_2 = Struct_2(Struct_1(arg_3, arg_1.x), false, 29048u, min(~var_0.wzz, ~(~vec3<i32>(u_input.a, 2147483647i, var_0.x))), Struct_1(arg_3, true));
    var var_3 = Struct_3(false, u_input.a, ~(~vec4<u32>(arg_0, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c, 4294967295u, 0u), vec3<u32>(var_2.c, 7315u, arg_2.x)), arg_2.x)));
    return var_2.d.x;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = abs(abs(vec3<i32>(u_input.a, func_2(11940u, arg_0.zyz, vec2<u32>(4294967295u, 30278u), 509f) ^ u_input.a, -150i)));
    var var_1 = !vec2<bool>(!(!arg_0.x), false);
    var var_2 = 1i | u_input.a;
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-452f * _wgslsmith_f_op_f32(f32(-1f) * -326f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-163f + 1083f))), 350f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(859f, -477f, 824f))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(581f, -1528f, -1000f) + vec3<f32>(-719f, -764f, -882f)), vec3<f32>(392f, -1936f, -628f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1146f, -627f, -583f)) - vec3<f32>(_wgslsmith_f_op_f32(2046f + -1000f), -1415f, _wgslsmith_f_op_f32(round(-144f)))))));
    global0 = _wgslsmith_mod_u32(_wgslsmith_div_u32(min(_wgslsmith_div_u32(33891u, 1u), firstTrailingBit(54859u)) & 0u, _wgslsmith_mult_u32(_wgslsmith_add_u32(firstLeadingBit(147036u), 20676u), _wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 14671u), vec2<u32>(19333u, 76083u))))), _wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(countOneBits(~1u), 24206u)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(-897f + var_3.x))))), all(vec3<bool>(!any(vec3<bool>(arg_0.x, var_1.x, arg_0.x)), (i32(-1i) * -45700i) > (u_input.a | var_0.x), var_1.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1748f, -840f, arg_1.a)), vec3<f32>(-891f, 375f, arg_1.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.a, arg_1.a, arg_1.a))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -784f, arg_1.a)))), vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1312f) + _wgslsmith_f_op_f32(max(-511f, arg_1.a))), 1000f)));
    let var_1 = arg_2;
    var var_2 = select(!any(vec4<bool>(any(vec4<bool>(false, true, var_1.a, var_1.a)), false, any(vec2<bool>(arg_2.a, arg_2.a)), all(vec2<bool>(var_1.a, var_1.a)))), func_1(!(!vec4<bool>(arg_2.a, var_1.a, arg_1.b, false))).b && select(var_1.a || false, true, !(!var_1.a)), _wgslsmith_f_op_f32(exp2(var_0.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + arg_1.a)))));
    let var_3 = vec3<u32>(_wgslsmith_div_u32(7980u, _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(~var_1.c.x, _wgslsmith_div_u32(arg_0.x, arg_2.c.x)))), reverseBits(_wgslsmith_mult_u32(var_1.c.x, ~arg_0.x)), var_1.c.x);
    global1 = array<Struct_2, 7>();
    return _wgslsmith_add_u32(abs(var_1.c.x), 23161u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = reverseBits(~_wgslsmith_add_u32(~(~8680u), 0u << (min(1u, 3365u) % 32u)));
    let var_0 = ~(~vec3<u32>(_wgslsmith_sub_u32(~57222u, abs(84458u)), 28690u, 1u));
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.x << (4294967295u % 32u), 83246u, 4294967295u, _wgslsmith_mod_u32(0u, 4294967295u)) & vec4<u32>(func_4(vec4<u32>(4294967295u, var_0.x, 31738u, var_0.x), func_1(vec4<bool>(false, true, true, false)), Struct_3(true, 0i, vec4<u32>(4294967295u, 4294967295u, var_0.x, var_0.x))), 6626u, ~abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(9042u, var_0.x, var_0.x, var_0.x), ~vec4<u32>(1u, 1u, var_0.x, 6732u))), ~(~(~vec4<u32>(var_0.x, var_0.x, 34349u, 1u))));
    global0 = 54542u;
    global1 = array<Struct_2, 7>();
    global1 = array<Struct_2, 7>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1156f, -979f)) + _wgslsmith_f_op_f32(max(2164f, _wgslsmith_f_op_f32(f32(-1f) * -174f)))))), all(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(min(reverseBits(max(vec2<i32>(u_input.a, 1523i), vec2<i32>(u_input.a, 0i))), vec2<i32>(1i, u_input.a)) & ((~vec2<i32>(u_input.a, -11863i) | ~vec2<i32>(u_input.a, u_input.a)) | max(-vec2<i32>(u_input.a, 86836i), max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 2147483647i)))), _wgslsmith_mult_i32(29737i, u_input.a));
}

