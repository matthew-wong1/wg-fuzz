struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    return _wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, arg_0.a.x), -1i) ^ arg_0.a.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = countOneBits(vec2<u32>(firstLeadingBit(arg_1.c ^ ~u_input.a), u_input.a));
    var var_1 = Struct_2(~(~min(vec4<u32>(24722u, u_input.a, 14369u, var_0.x), ~vec4<u32>(121361u, 6800u, 6880u, arg_1.c))), ~arg_1.c, vec2<f32>(-666f, 1755f), Struct_1(-vec4<i32>(arg_1.a.x, ~u_input.b.x, func_3(Struct_1(u_input.b, 98087u, 16195u, arg_1.d), vec2<f32>(arg_0, arg_0), Struct_2(vec4<u32>(var_0.x, 1u, arg_1.b, u_input.a), arg_1.b, vec2<f32>(665f, arg_0), arg_1, 4294967295u), Struct_2(vec4<u32>(u_input.a, 0u, 9016u, 44857u), var_0.x, vec2<f32>(1001f, arg_1.d), arg_1, 0u)), 1i), min(max(min(1650u, u_input.a), 1u), _wgslsmith_div_u32(countOneBits(u_input.a), var_0.x)), 70573u, 320f), 28793u);
    var var_2 = ~(select(_wgslsmith_dot_vec4_u32(~var_1.a, _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b, var_0.x, var_1.b, 0u), var_1.a)), _wgslsmith_div_u32(0u, select(32014u, 26040u, false)), select(-419f < var_1.c.x, 1u != var_0.x, arg_0 != arg_0)) << (var_0.x % 32u));
    var var_3 = !(true | (~countOneBits(arg_1.c) <= ~var_0.x));
    let var_4 = 0u ^ firstLeadingBit(abs(firstLeadingBit(select(4294967295u, var_0.x, true))));
    return arg_1.d;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: u32) -> u32 {
    let var_0 = false;
    var var_1 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3, 1u, ~38179u), ~select(_wgslsmith_mod_vec3_u32(vec3<u32>(9897u, 4294967295u, arg_0.b), vec3<u32>(37769u, 17834u, u_input.a)), firstLeadingBit(vec3<u32>(1u, arg_0.b, arg_0.b)), !vec3<bool>(false, arg_1, false)), countOneBits(vec3<u32>(firstTrailingBit(4294967295u), ~arg_3, 4149u)));
    let var_2 = select(select(vec4<bool>(arg_1, var_0, true, arg_1), vec4<bool>(arg_1, all(vec3<bool>(false, false, false)), u_input.a == ~arg_0.c, var_0), select(vec4<bool>(arg_1, arg_2 > -1058f, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, arg_1, false, var_0), !vec4<bool>(var_0, var_0, arg_1, arg_1)), select(select(vec4<bool>(var_0, false, false, var_0), vec4<bool>(false, true, var_0, true), var_0), vec4<bool>(true, false, var_0, arg_1), select(vec4<bool>(true, false, arg_1, var_0), vec4<bool>(true, var_0, true, false), true)))), !select(vec4<bool>(arg_1, true, any(vec4<bool>(arg_1, var_0, true, var_0)), arg_1), !select(vec4<bool>(var_0, true, true, true), vec4<bool>(false, var_0, var_0, var_0), true), false), !vec4<bool>(_wgslsmith_f_op_f32(sign(-1523f)) > 865f, true, (var_0 | false) || var_0, any(!vec4<bool>(arg_1, false, arg_1, true))));
    var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(min(arg_3 | ~0u, ~_wgslsmith_mod_u32(arg_0.c, arg_0.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, min(var_1.x, arg_3), ~6584u, 1u), select(vec4<u32>(u_input.a, arg_3, 63265u, 15149u), vec4<u32>(0u, 9310u, 0u, 1u), var_2) & _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, var_1.x, 1u), vec4<u32>(arg_0.c, arg_0.c, u_input.a, 12989u))), 0u), vec3<u32>(62544u, 1u, ~_wgslsmith_div_u32(~arg_0.c, _wgslsmith_mult_u32(arg_0.b, var_1.x))), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(countOneBits(abs(vec3<u32>(1u, 0u, 42257u))), max(~vec3<u32>(arg_3, u_input.a, u_input.a), ~vec3<u32>(15822u, 4294967295u, 35170u))), vec3<u32>(~_wgslsmith_mod_u32(arg_0.b, 4294967295u), _wgslsmith_mod_u32(4294967295u, var_1.x), select(arg_0.b, arg_3, var_2.x) | firstLeadingBit(arg_0.b))));
    var_1 = reverseBits(~min(vec3<u32>(0u, 27602u, ~0u), ~(~vec3<u32>(56136u, var_1.x, 72523u))));
    return ~(~36980u);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: i32, arg_3: vec3<i32>) -> u32 {
    return _wgslsmith_clamp_u32(~23582u, func_4(Struct_1(arg_1, arg_0.x, 2859u, _wgslsmith_f_op_f32(max(-1060f, -213f))), !all(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(ceil(-1000f)), Struct_1(vec4<i32>(-1i, arg_2, 2147483647i, 39793i), u_input.a, u_input.a, 766f)))), reverseBits(_wgslsmith_mult_u32(4294967295u << (arg_0.x % 32u), _wgslsmith_add_u32(u_input.a, 101454u)))), countOneBits(19124u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(func_1(firstTrailingBit(~vec4<u32>(107895u, 1u, 0u, 0u)), firstLeadingBit(vec4<i32>(u_input.b.x, 0i, -2147483647i, u_input.b.x)), u_input.b.x, -(~vec3<i32>(2147483647i, u_input.b.x, u_input.b.x))), select(func_4(Struct_1(vec4<i32>(-18300i, 63511i, u_input.b.x, 44689i), 58779u, u_input.a, -1683f), false, _wgslsmith_f_op_f32(-2157f + -2724f), 0u), 1u, 127914u <= select(u_input.a, 0u, true)), func_4(Struct_1(u_input.b, 8701u, ~1u, _wgslsmith_f_op_f32(1728f + 564f)), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(ceil(1158f)), ~(u_input.a >> (u_input.a % 32u))), _wgslsmith_div_u32(min(u_input.a, u_input.a), abs(~u_input.a)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(184f * -726f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-707f + 357f) - 584f), true)))), -2356f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(394f, -168f) * _wgslsmith_f_op_f32(round(-962f))), _wgslsmith_f_op_f32(-831f - _wgslsmith_f_op_f32(-284f - -750f))))));
    var var_2 = any(vec2<bool>(any(vec2<bool>(true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), ~max(-u_input.b.x & _wgslsmith_add_i32(u_input.b.x, u_input.b.x), u_input.b.x), 12436u);
}

