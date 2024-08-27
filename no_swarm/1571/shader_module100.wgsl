struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.zzz));
    var var_2 = 986f;
    var_0 = Struct_1(vec3<i32>(-285i, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-55403i, countOneBits(2147483647i), arg_0.a.x, ~arg_1.a.x), vec4<i32>(arg_2.a.x, 46745i, 1i, arg_0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-961f - var_1.x)), arg_2.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-146f)))), var_1.x)), 649f, var_0.b.x);
    let var_3 = firstTrailingBit(~(-arg_1.a.x)) & -1i;
    return ~u_input.a.x | ~0u;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_clamp_i32(-firstLeadingBit(~(-2147483647i | u_input.b)), u_input.b >> ((55066u & func_3(Struct_1(vec3<i32>(u_input.b, u_input.b, 16889i), vec4<f32>(1835f, 170f, 2042f, -751f), 263f, 235f), Struct_1(vec3<i32>(u_input.b, -1i, u_input.b), vec4<f32>(-862f, 1131f, 1189f, -1147f), -1007f, -1398f), Struct_1(vec3<i32>(0i, u_input.b, 2147483647i), vec4<f32>(-248f, 173f, -801f, 1849f), 318f, 636f), vec4<f32>(-268f, 915f, -721f, 1028f))) % 32u), 1i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(673f)), 1832f, -321f, -929f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-373f, -104f, -481f, 2054f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-474f, 2177f, -806f, -1755f))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-853f, -1000f, 195f, 150f)), vec4<f32>(711f, 1633f, -1958f, -1197f)))))));
    var_0 = u_input.b;
    var_0 = 21125i & u_input.b;
    let var_2 = Struct_1(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, u_input.b, 1i) | vec4<i32>(1i, -1i, u_input.b, -8149i), vec4<i32>(u_input.b, -2147483647i, u_input.b, 2147483647i)), select(0i, ~2147483647i, all(vec2<bool>(true, false))), -_wgslsmith_add_i32(6833i, 1i)), vec4<f32>(_wgslsmith_div_f32(var_1.x, 937f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) - _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-var_1.x), -895f), var_1.x, -131f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1467f))));
}

fn func_1() -> u32 {
    let var_0 = Struct_1(-vec3<i32>(10276i, -firstTrailingBit(u_input.b), u_input.b), vec4<f32>(363f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1720f)))), 414f, 523f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2()))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-732f, _wgslsmith_f_op_f32(f32(-1f) * -964f)))))), 527f);
    var var_1 = Struct_1((~var_0.a ^ firstTrailingBit(var_0.a)) >> (u_input.a % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_0.b), _wgslsmith_f_op_vec4_f32(ceil(var_0.b)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_0.b)), var_0.b)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1608f, var_0.c)) - _wgslsmith_f_op_f32(max(var_0.c, var_0.c))), var_0.b.x, -831f, _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(269f * -1782f)))), 106f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -382f)))));
    var_1 = var_0;
    let var_2 = var_0;
    let var_3 = ~(~firstLeadingBit(firstTrailingBit(~u_input.a)));
    return 1u ^ u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~u_input.a.zz << ((~vec2<u32>(0u, u_input.a.x) << (vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(4294967295u, u_input.a.x)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(u_input.a.x, func_1()), vec2<bool>(~(~u_input.b) < 1i, !(!all(vec2<bool>(true, true)))));
    var_0 = max(u_input.a.xy, max(_wgslsmith_mod_vec2_u32(u_input.a.yx, ~(~u_input.a.zx)), u_input.a.zy));
    var var_1 = vec4<bool>(!((-u_input.b ^ u_input.b) < 1i), all(vec4<bool>(true, true, true, true)), true, true);
    var_1 = select(!select(!(!vec4<bool>(false, false, true, var_1.x)), !(!vec4<bool>(false, true, var_1.x, false)), !(!vec4<bool>(var_1.x, var_1.x, false, var_1.x))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.b < u_input.b, true, false, var_1.x | var_1.x), !select(vec4<bool>(var_1.x, false, true, true), vec4<bool>(var_1.x, true, var_1.x, false), var_1.x)), !(!(!vec4<bool>(var_1.x, false, true, true))), select(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, true)), !select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<bool>(-2147483647i > u_input.b, !var_1.x, true, false))), var_1.x);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1229f - _wgslsmith_f_op_f32(-1382f + 793f)), -675f) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-374f, -481f)))))), vec2<f32>(_wgslsmith_f_op_f32(-177f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -587f) * _wgslsmith_f_op_f32(f32(-1f) * -652f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1530f * -977f) + -312f))));
    var_1 = vec4<bool>(!var_1.x, all(var_1.yzy), false && var_1.x, any(!select(vec4<bool>(false, false, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), !var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(816f);
}

