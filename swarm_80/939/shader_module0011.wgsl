struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec2<i32>) -> bool {
    var var_0 = Struct_2(!vec3<bool>(2147483647i > ~u_input.c.x, any(vec3<bool>(true, true, true)), !all(vec3<bool>(true, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-740f, 309f, 264f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(913f, -943f, -747f) + vec3<f32>(972f, -1821f, 1765f)))) + vec3<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(-1285f))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -214f))), !select(vec4<bool>(true, all(vec2<bool>(true, arg_0)), 0i <= arg_2.x, arg_1), vec4<bool>(arg_1, all(vec4<bool>(true, true, arg_1, false)), u_input.d.x > -31097i, arg_1 && arg_0), select(vec4<bool>(true, arg_0, arg_0, arg_1), select(vec4<bool>(true, arg_1, true, true), vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(false, true, false, true)), !arg_0)));
    var_0 = Struct_2(vec3<bool>(true, arg_1, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1673f, -909f, 372f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, 1000f)))))), vec4<bool>(true, arg_1, false && (34441u <= _wgslsmith_clamp_u32(u_input.e.x, 20170u, 4294967295u)), arg_0));
    let var_1 = Struct_1(~(~(~4294967295u)) << (max(firstLeadingBit(31314u), firstLeadingBit(u_input.a)) % 32u), arg_0, false | arg_1, all(var_0.c.xz));
    var var_2 = 1u;
    let var_3 = 38721i;
    return any(vec2<bool>(all(!select(var_0.c, var_0.c, var_0.c)), true));
}

fn func_2() -> Struct_1 {
    return Struct_1(32742u, true, any(!vec4<bool>(any(vec2<bool>(false, true)), func_3(true, true, vec2<i32>(-2147483647i, 12107i)), select(false, true, false), true)), true);
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> f32 {
    var var_0 = u_input.b;
    var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(~1u, 61138u, 1u), firstLeadingBit(vec3<u32>(~1u, 1u, u_input.b.x)));
    var var_1 = func_2();
    var_1 = Struct_1(u_input.e.x, func_3(var_1.d, var_1.d, u_input.d.xy), var_1.d, (~var_0.x | max(4294967295u, _wgslsmith_mult_u32(65394u, var_0.x))) == 32322u);
    let var_2 = ~1i;
    return _wgslsmith_f_op_f32(step(1838f, _wgslsmith_f_op_f32(-746f * _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(abs(-401f))))));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: i32, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = true;
    var var_1 = _wgslsmith_mod_vec2_u32(u_input.e.yx, firstLeadingBit(vec2<u32>(u_input.b.x, min(~u_input.a, func_2().a))));
    var var_2 = select(u_input.d.x, arg_2, arg_3.x);
    var_1 = vec2<u32>(~(~var_1.x), min(~reverseBits(_wgslsmith_sub_u32(40729u, var_1.x)), ~(~var_1.x)));
    let var_3 = func_2();
    return Struct_2(!vec3<bool>(false, any(arg_1), arg_3.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1013f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1020f))) + vec3<f32>(-178f, arg_0, arg_0)), select(vec4<bool>(false, arg_3.x, false, _wgslsmith_mult_i32(arg_2, -25945i) >= (u_input.c.x & arg_2)), arg_1, select(arg_1, !arg_1, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(6431i, Struct_2(vec3<bool>(true, false, true), vec3<f32>(344f, 321f, 1134f), vec4<bool>(true, false, true, false)))) - -2501f)))), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true), true)), u_input.d.x, vec2<bool>(true && !(1u == u_input.b.x), true));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, -406f)))));
    var var_2 = var_0.a.x;
    var var_3 = vec4<u32>(u_input.b.x & ~u_input.a, 4294967295u, ~_wgslsmith_sub_u32(u_input.a, reverseBits(u_input.b.x)), 37111u);
    let var_4 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-countOneBits(_wgslsmith_clamp_i32(u_input.c.x, -2147483647i, u_input.d.x)), u_input.d.x), ~(~vec2<u32>(79759u, 119213u)), var_0.b.x);
}

