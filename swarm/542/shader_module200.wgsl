struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(select(firstTrailingBit(vec4<u32>(u_input.b.x, 104992u, u_input.b.x, u_input.c.x)), vec4<u32>(u_input.b.x, 4294967295u, u_input.e, u_input.d.x), true), ~vec4<u32>(0u, 53940u, ~0u, min(u_input.e, 0u)), ~((vec4<u32>(60848u, u_input.e, 18042u, 4294967295u) | vec4<u32>(4294967295u, u_input.b.x, u_input.e, u_input.d.x)) | abs(vec4<u32>(u_input.d.x, u_input.b.x, u_input.b.x, 4294967295u)))), ~(~(~(vec4<u32>(u_input.e, 4294967295u, 31906u, u_input.e) | vec4<u32>(u_input.e, 28521u, 1u, u_input.e)))));
    return ~(~(-max(min(u_input.a.x, 1i), u_input.a.x << (34451u % 32u))));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_0.yzw);
    let var_1 = Struct_1(vec3<u32>(~arg_1, (u_input.c.x >> (~42483u % 32u)) ^ 0u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), ((u_input.a.x | func_3()) ^ ~(-u_input.a.x)) >> (u_input.e % 32u));
    let var_2 = var_1;
    let var_3 = var_1;
    let var_4 = _wgslsmith_f_op_vec2_f32(arg_0.zw * vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.x)), 137f, select(true, any(vec3<bool>(false, true, true)), select(false, true, true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2524f)))))));
    return var_2;
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-759f, -180f)), _wgslsmith_f_op_f32(max(-1391f, 1314f)), _wgslsmith_f_op_f32(-282f + -140f), _wgslsmith_f_op_f32(f32(-1f) * -1045f)) * vec4<f32>(-420f, _wgslsmith_f_op_f32(177f * -932f), _wgslsmith_f_op_f32(-260f * 1000f), _wgslsmith_div_f32(-243f, 191f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(223f, -422f, 1108f, -1349f), _wgslsmith_f_op_vec4_f32(vec4<f32>(701f, -138f, -613f, -1406f) + vec4<f32>(330f, -1440f, -932f, -173f))))), ~4294967295u);
    var var_1 = vec2<u32>(arg_0.a.x, u_input.c.x);
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -576f, _wgslsmith_f_op_f32(sign(533f)), _wgslsmith_f_op_f32(f32(-1f) * -538f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1500f, -1775f, -1316f, -1508f)) - vec4<f32>(870f, 441f, -666f, 521f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1399f, 525f, 455f, 929f) + vec4<f32>(335f, -1194f, 1192f, 786f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(727f, -497f, -267f, -555f) - vec4<f32>(315f, -1000f, 2149f, -518f))))), _wgslsmith_mult_u32(6005u, 1u));
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(201f, 2122f, -1000f, -1356f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(803f, -123f, -1380f, 1328f)))) - vec4<f32>(1f, 1f, 1f, 1f))), 46808u | u_input.b.x);
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2442f, 719f), -494f)) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(982f, 793f), _wgslsmith_f_op_f32(828f + 382f)))))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(abs(-443f)), 304f, _wgslsmith_f_op_f32(sign(-1122f))))) + vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1552f) * _wgslsmith_f_op_f32(f32(-1f) * -1331f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-241f - 833f) * _wgslsmith_f_op_f32(abs(382f))))), vec3<f32>(_wgslsmith_f_op_f32(min(-764f, -1638f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(321f + -861f)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: f32) -> vec2<bool> {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(313f, arg_1, arg_1, -690f)), select(100046u, 3969u, true) >> ((u_input.b.x ^ u_input.d.x) % 32u)))));
    let var_2 = Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, firstTrailingBit(arg_0.x)), arg_0.yyy), firstTrailingBit(~arg_0.wxw)), -10311i);
    return select(select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(true, true), true), vec2<bool>(true, true), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true))))), vec2<bool>(all(vec4<bool>(true, all(vec4<bool>(true, true, false, false)), any(vec3<bool>(true, true, false)), true)), func_2(vec4<f32>(1971f, -825f, -1045f, arg_2), 4294967295u).b < var_2.b), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(false, false)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), true), vec2<bool>(true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = !all(!select(select(vec2<bool>(false, var_0), vec2<bool>(true, false), vec2<bool>(var_0, var_0)), func_1(vec4<u32>(u_input.b.x, 88010u, u_input.b.x, u_input.e), 343f, 2300f), !var_0));
    let var_2 = select(select(!vec3<bool>(any(vec4<bool>(var_0, false, var_0, true)), var_0, false & var_0), select(select(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, var_0, true), vec3<bool>(false, true, false)), true), vec3<bool>(!var_0, true, true & var_0), vec3<bool>(all(vec4<bool>(var_0, var_0, true, false)), any(vec3<bool>(false, var_0, var_0)), true == var_0)), !select(select(vec3<bool>(true, false, var_0), vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, var_0)), !vec3<bool>(false, var_0, false), any(vec3<bool>(false, var_0, false)))), select(select(select(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, var_0, var_0), true), vec3<bool>(true, var_0, true), true), select(select(vec3<bool>(true, true, var_0), vec3<bool>(var_0, true, true), vec3<bool>(var_0, var_0, true)), select(vec3<bool>(var_0, var_0, true), vec3<bool>(false, var_0, var_0), vec3<bool>(false, var_0, var_0)), vec3<bool>(var_0, var_0, var_0)), select(select(vec3<bool>(true, true, var_0), vec3<bool>(false, var_0, var_0), var_0), vec3<bool>(var_0, var_0, var_0), !vec3<bool>(var_0, true, var_0))), !select(vec3<bool>(var_0, false, true), vec3<bool>(false, false, true), !vec3<bool>(var_0, true, false)), vec3<bool>(all(select(vec4<bool>(var_0, false, var_0, false), vec4<bool>(true, true, false, false), var_0)), 1342f > _wgslsmith_f_op_f32(step(490f, -111f)), u_input.a.x <= func_3())), false);
    var_1 = func_1(~vec4<u32>(1u, 1u, u_input.b.x, _wgslsmith_add_u32(u_input.b.x, _wgslsmith_mult_u32(u_input.e, 20718u))), 228f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1799f)))).x;
    let var_3 = func_1(_wgslsmith_mult_vec4_u32(abs(~firstTrailingBit(vec4<u32>(u_input.b.x, u_input.e, 1u, 1u))), ~vec4<u32>(u_input.c.x, 10991u, 13836u >> (u_input.d.x % 32u), 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-377f, -2446f)) - _wgslsmith_f_op_f32(172f + -855f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1076f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2002f + _wgslsmith_f_op_f32(f32(-1f) * -453f)) + 312f)))).x;
    let var_4 = select(var_2, var_2, var_2.x & any(vec4<bool>(var_2.x, var_2.x, any(vec2<bool>(false, false)), var_2.x)));
    var var_5 = ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_mult_u32(3204u, 1u)), 47170u), u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1667f - 1f), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d, vec2<u32>(u_input.e, 48537u)) >> (u_input.d % vec2<u32>(32u)), u_input.d), ~u_input.d | max(vec2<u32>(1u, u_input.e), u_input.d)), 4294967295u);
}

