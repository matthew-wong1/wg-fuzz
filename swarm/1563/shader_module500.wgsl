struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-305f, -445f, arg_2.c), vec3<f32>(arg_0.c, arg_0.c, arg_2.c), vec3<bool>(arg_0.a, false, true))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.c, arg_2.c, arg_0.c))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1172f, 1000f) - vec3<f32>(arg_0.c, arg_2.c, 1004f)))))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) - arg_0.c), arg_0.c))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2125f, -1160f, -616f) * vec3<f32>(arg_2.c, 1364f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-var_0.x))))));
    var_0 = vec3<f32>(arg_0.c, arg_0.c, 1148f);
    let var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_0.x * 773f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_2.c)), _wgslsmith_f_op_f32(min(var_0.x, -1883f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -128f))))));
    return !select(select(select(!vec4<bool>(true, var_1.a, false, var_1.a), select(vec4<bool>(var_1.a, arg_2.a, true, true), vec4<bool>(arg_2.a, arg_2.a, false, arg_0.a), false), select(vec4<bool>(arg_2.a, var_1.a, false, false), vec4<bool>(false, false, true, arg_2.a), false)), vec4<bool>(true, u_input.d > u_input.d, true, !arg_0.a), !(!var_1.a)), select(!select(vec4<bool>(arg_2.a, arg_2.a, arg_2.a, true), vec4<bool>(true, arg_2.a, arg_0.a, arg_0.a), vec4<bool>(false, true, true, var_1.a)), vec4<bool>(false, !arg_0.a, false, !var_1.a), vec4<bool>(true, arg_2.a && false, arg_0.a, !arg_2.a)), select(select(select(vec4<bool>(false, arg_2.a, arg_0.a, var_1.a), vec4<bool>(false, arg_0.a, false, arg_0.a), false), select(vec4<bool>(false, false, arg_0.a, false), vec4<bool>(arg_2.a, arg_2.a, true, false), arg_2.a), any(vec2<bool>(arg_2.a, arg_2.a))), !select(vec4<bool>(var_1.a, arg_0.a, var_1.a, arg_0.a), vec4<bool>(arg_2.a, var_1.a, false, false), vec4<bool>(true, arg_2.a, true, arg_0.a)), true));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = max(_wgslsmith_mod_vec4_u32((vec4<u32>(0u, 14226u, 22537u, arg_2.a) | vec4<u32>(1u, 86040u, u_input.d, arg_2.a)) | vec4<u32>(76133u, 43484u, 23230u, arg_2.a), firstTrailingBit(~vec4<u32>(arg_2.a, 69357u, arg_2.a, 19521u))) >> (max(~(~vec4<u32>(0u, arg_2.a, 19006u, u_input.b)), abs(vec4<u32>(arg_2.a, 4294967295u, arg_2.a, 4105u))) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_2.a, 13244u, u_input.d), ~vec4<u32>(8471u, 4294967295u, u_input.b, arg_2.a), ~vec4<u32>(arg_2.a, u_input.d, 4294967295u, arg_2.a))) >> ((~(~vec4<u32>(u_input.b, u_input.d, 56317u, 8744u)) << (~countOneBits(vec4<u32>(190u, u_input.d, 61337u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = arg_2;
    let var_2 = countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, firstTrailingBit(arg_2.a), 11438u), ~vec3<u32>(var_1.a, 4294967295u, 17011u)));
    var var_3 = !arg_1;
    var_1 = Struct_2(~20256u);
    return ~(~(~(1u << (firstTrailingBit(var_1.a) % 32u))));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_add_u32(func_4(u_input.c, !(!func_3(Struct_1(true, u_input.a.zzx, -1582f), u_input.a.zw, Struct_1(false, u_input.a.xzw, -1350f))), Struct_2(~u_input.d)), min(reverseBits(func_4(u_input.c, vec4<bool>(true, false, false, true), Struct_2(24612u))) ^ u_input.b, max(~(~31231u), u_input.b)));
    var var_1 = vec3<bool>(func_3(Struct_1(true, u_input.a.yyx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-739f * 1548f) - -467f)), abs(vec2<i32>(min(-2147483647i, u_input.a.x), ~31012i)), Struct_1(true, reverseBits(u_input.a.zyx), 1000f)).x, false, false);
    var_1 = vec3<bool>(false, true, any(select(select(func_3(Struct_1(true, vec3<i32>(-2147483647i, -2147483647i, -27760i), -355f), vec2<i32>(-65109i, u_input.c), Struct_1(true, u_input.a.wxy, -169f)).yx, !var_1.zy, any(vec3<bool>(var_1.x, var_1.x, var_1.x))), select(vec2<bool>(true, var_1.x), !var_1.zx, any(vec3<bool>(var_1.x, false, var_1.x))), true)));
    var_1 = vec3<bool>(false, var_1.x, var_1.x);
    var_1 = vec3<bool>(true, var_1.x, true);
    return u_input.d;
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    let var_0 = ~_wgslsmith_add_vec4_u32(~countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, 0u, u_input.d), vec4<u32>(u_input.d, u_input.b, 15190u, 4294967295u))), vec4<u32>(0u, _wgslsmith_mult_u32(u_input.d, 75905u) >> (0u % 32u), u_input.d ^ 1u, ~func_2()));
    var var_1 = 133f;
    var_1 = _wgslsmith_f_op_f32(abs(-1221f));
    let var_2 = Struct_2(~1u);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1059f, -154f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-342f, 905f) + vec2<f32>(1000f, 997f)), arg_0.zx)) - vec2<f32>(-891f, -3167f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -312f), _wgslsmith_div_f32(626f, 1365f))))));
    return _wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(trunc(-1000f)), true == arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-180f, 645f, false)) * _wgslsmith_f_op_f32(func_1(vec3<bool>(false, false, true)))))) * -854f)));
    let x = u_input.a;
    s_output = StorageBuffer(15959u);
}

