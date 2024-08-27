struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<u32>) -> vec3<u32> {
    return vec3<u32>(1u & ~reverseBits(_wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(arg_0.a, 109603u))), ~min(max(arg_2.x, ~0u), 4294967295u), arg_2.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = abs(u_input.c);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(1240f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1606f)) + _wgslsmith_f_op_f32(round(-283f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2834f)) * _wgslsmith_f_op_f32(trunc(-1033f))))), 910f);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1079f);
    let var_3 = -2147483647i;
    let var_4 = Struct_1(abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), abs(vec3<u32>(4294967295u, u_input.b, u_input.b)), func_3(Struct_2(34018u), vec4<bool>(arg_2.x, false, arg_2.x, false), vec2<u32>(9036u, 0u))), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<u32>(1u, u_input.c, 1u)), vec3<u32>(~1u, ~21379u, 0u))), 6469u, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), var_1.x);
    return arg_2;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = arg_0;
    var_0 = Struct_2(~(~u_input.a));
    var var_1 = !select(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), func_2(vec4<bool>(false, false, true, false), -vec2<i32>(u_input.d, u_input.d), vec3<bool>(true, true, true)), true), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true), vec3<bool>(!all(vec3<bool>(true, true, true)), true, true));
    var_1 = !vec3<bool>(!var_1.x && (!var_1.x || false), false, all(vec3<bool>(!var_1.x, false, true)));
    var var_2 = Struct_2(_wgslsmith_div_u32(abs(arg_1.x), u_input.b));
    return ~arg_1;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec4<u32>) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, arg_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) - _wgslsmith_f_op_f32(arg_0.x * 505f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -296f))));
    var var_1 = arg_2;
    let var_2 = u_input.d;
    var var_3 = Struct_1(~(~(vec3<u32>(u_input.c, var_1.a, arg_2.a) | arg_3.wxw)) >> (arg_3.zzw % vec3<u32>(32u)), reverseBits(_wgslsmith_add_u32(abs(4294967295u), (arg_2.a >> (var_1.a % 32u)) >> (~arg_3.x % 32u))), reverseBits(-vec2<i32>(0i, u_input.d)) | (~(-vec2<i32>(var_2, var_2)) & (vec2<i32>(-1i) * -vec2<i32>(62414i, 0i))), -651f, _wgslsmith_f_op_f32(-1417f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * var_0.x))))));
    var var_4 = Struct_2(u_input.a);
    return false;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = select(select(select(select(vec2<bool>(arg_1, true), select(vec2<bool>(true, arg_1), vec2<bool>(true, arg_1), arg_1), true), select(!vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1), select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), false)), !(!vec2<bool>(false, arg_1))), vec2<bool>(!any(vec2<bool>(true, arg_1)), all(!vec4<bool>(false, arg_1, arg_1, false))), all(!func_2(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec2<i32>(0i, u_input.d), vec3<bool>(arg_1, false, arg_1)))), !func_2(select(select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), !vec4<bool>(false, arg_1, arg_1, true), false), select(vec2<i32>(u_input.d, -27341i) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~vec2<i32>(u_input.d, 21100i), vec2<bool>(arg_1, arg_1)), select(!vec3<bool>(arg_1, true, true), func_2(vec4<bool>(true, arg_1, arg_1, arg_1), vec2<i32>(u_input.d, 1i), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, arg_1), vec3<bool>(arg_1, arg_1, false), arg_1))).xy, select(!select(vec2<bool>(true, true), !vec2<bool>(arg_1, false), true), !(!select(vec2<bool>(true, true), vec2<bool>(false, arg_1), arg_1)), vec2<bool>(arg_1, true)));
    var_0 = !func_2(!(!(!vec4<bool>(true, false, true, var_0.x))), vec2<i32>(1i | u_input.d, -71189i) << (vec2<u32>(~arg_2.a, ~u_input.c) % vec2<u32>(32u)), vec3<bool>(true, !var_0.x, var_0.x)).yz;
    var_0 = !func_2(!(!select(vec4<bool>(true, true, var_0.x, true), vec4<bool>(arg_1, var_0.x, false, false), vec4<bool>(false, false, false, false))), vec2<i32>(-1i) * -vec2<i32>(-1i, -2147483647i), !vec3<bool>(true, any(vec4<bool>(false, var_0.x, false, true)), false)).zy;
    let var_1 = arg_0;
    var_0 = select(!vec2<bool>(_wgslsmith_f_op_f32(step(-2023f, -667f)) > _wgslsmith_f_op_f32(round(-1513f)), arg_1), select(vec2<bool>(true, true), select(func_2(vec4<bool>(arg_1, arg_1, arg_1, false), vec2<i32>(u_input.d, 0i), !vec3<bool>(arg_1, arg_1, false)).zy, vec2<bool>(!arg_1, arg_1), true), select(vec2<bool>(all(vec3<bool>(var_0.x, true, true)), false), vec2<bool>(arg_1, false), !(!vec2<bool>(var_0.x, var_0.x)))), vec2<bool>(true && !arg_1, u_input.d >= ~u_input.d));
    return ~reverseBits(vec3<u32>((55492u & arg_0.a) | 0u, 0u, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(((u_input.c ^ 6361u) << (u_input.b % 32u)) & 0u), func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1572f, 577f, -966f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(107f, 114f, -625f)))), vec3<f32>(_wgslsmith_f_op_f32(select(107f, -653f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1277f), _wgslsmith_f_op_f32(f32(-1f) * -261f)))), vec4<bool>(all(vec2<bool>(true, true)), true, true, false), Struct_2(firstLeadingBit(~1564u)), select(vec4<u32>(u_input.a, u_input.b, 4294967295u, 38831u) | firstLeadingBit(vec4<u32>(4248u, u_input.b, u_input.b, 8525u)), ~func_1(Struct_2(122778u), vec4<u32>(u_input.a, 730u, 4294967295u, 385u)), !any(vec3<bool>(false, true, false)))), Struct_2(u_input.a));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2791f, _wgslsmith_f_op_f32(round(446f)), _wgslsmith_mod_i32(u_input.d, 0i) >= -25384i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -300f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(534f * -256f)))) + -324f));
    let var_2 = Struct_2(~firstLeadingBit(_wgslsmith_add_u32(2311u, var_0.x)));
    var_0 = _wgslsmith_div_vec3_u32(max(~_wgslsmith_mod_vec3_u32(func_3(Struct_2(u_input.a), vec4<bool>(true, false, true, true), var_0.xz), vec3<u32>(60737u, var_2.a, 36954u)), ~vec3<u32>(var_0.x, 1u, func_3(var_2, vec4<bool>(true, true, true, false), var_0.xy).x)), vec3<u32>(~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.c, 1u, 4294967295u), vec4<u32>(u_input.b, 0u, var_2.a, 1038u))), ~6576u, u_input.a));
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(71316u, _wgslsmith_add_u32(abs(u_input.c), var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1334f + _wgslsmith_f_op_f32(-669f + -574f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(409f, -2761f))))), select(vec4<u32>(~1u, func_5(var_2, true, Struct_2(1u)).x, 6175u, ~u_input.c), firstLeadingBit(~(vec4<u32>(55448u, 14573u, var_0.x, var_3.a) ^ vec4<u32>(var_0.x, 0u, 20627u, var_3.a))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, false, var_3.a != u_input.b), true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(59899u, 0u, 61844u, 31488u), vec4<u32>(88318u, 0u, 0u, abs(var_2.a)), vec4<u32>(var_2.a & 4294967295u, _wgslsmith_mod_u32(26577u, 1u), _wgslsmith_mult_u32(max(var_3.a, var_2.a), var_0.x), min(~9071u, u_input.b))));
}

