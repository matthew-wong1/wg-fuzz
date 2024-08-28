struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>) -> bool {
    var var_0 = Struct_1(u_input.a, -firstTrailingBit(arg_0.x), vec2<bool>(any(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), all(vec4<bool>(true, any(vec3<bool>(false, false, true)), any(vec4<bool>(true, true, true, true)), true))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, 755f), _wgslsmith_f_op_f32(619f + -625f), var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1247f + _wgslsmith_f_op_f32(trunc(-734f))), _wgslsmith_div_f32(-1927f, -915f)), -586f), -2046f);
    var var_2 = _wgslsmith_sub_u32(abs(~1u), 0u);
    var_2 = _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(4294967295u, 1u), ~_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(38134u, 13016u), 1u), select(0u, 1u, var_0.c.x) << (1u % 32u)));
    var var_3 = Struct_1(-1i, var_0.a, var_0.c);
    return !(!(!all(select(vec4<bool>(false, true, var_3.c.x, true), vec4<bool>(var_0.c.x, true, var_0.c.x, var_3.c.x), var_0.c.x))));
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<bool>(any(vec4<bool>(false, !func_3(vec3<i32>(-17321i, u_input.a, u_input.b)), any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)))), all(vec4<bool>(true, true, true, true)), false, true);
    let var_1 = !(!(!(!(!var_0.x))));
    var var_2 = Struct_1(~9243i, countOneBits(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(-34290i, 208i, -5265i), vec3<i32>(u_input.b, 1i, 15974i)))), var_0.xz);
    let var_3 = Struct_1(-_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b, var_2.b) & ~2147483647i, -u_input.a), -1i, !vec2<bool>(!var_1, false));
    var_0 = select(select(vec4<bool>(any(select(vec2<bool>(true, var_2.c.x), vec2<bool>(true, var_1), var_2.c)), true, true, true), select(select(select(vec4<bool>(var_1, false, false, false), vec4<bool>(true, false, var_2.c.x, var_1), true), select(vec4<bool>(false, false, var_1, true), vec4<bool>(false, false, true, false), vec4<bool>(var_3.c.x, var_2.c.x, true, false)), select(vec4<bool>(var_0.x, var_3.c.x, var_2.c.x, var_3.c.x), vec4<bool>(false, var_1, var_2.c.x, false), true)), select(vec4<bool>(true, var_0.x, var_2.c.x, var_3.c.x), vec4<bool>(var_0.x, var_2.c.x, var_1, var_1), select(vec4<bool>(var_1, var_1, false, var_0.x), vec4<bool>(true, var_3.c.x, false, false), var_0.x)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(var_1, false, false, var_1), var_1), !vec4<bool>(var_1, var_3.c.x, true, var_1), select(vec4<bool>(false, true, false, true), vec4<bool>(var_3.c.x, false, true, var_1), var_2.c.x))), false), !select(!(!vec4<bool>(var_2.c.x, false, true, false)), vec4<bool>(all(var_0.zzw), all(vec4<bool>(var_1, false, var_0.x, true)), var_1, var_2.c.x), true), all(select(vec2<bool>(var_3.c.x, false), var_3.c, true)));
    return Struct_1(var_2.a, -_wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a, -40003i, 0i, 27093i), vec4<i32>(-39772i, var_3.b, 12965i, 2147483647i)), _wgslsmith_mod_i32(u_input.b, var_2.b ^ -44707i)), vec2<bool>(!var_3.c.x, true));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(76572u, 30471u, 114752u, 0u), any(!vec4<bool>(false, arg_0.c.x, true, arg_0.c.x))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -638f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -158f) + _wgslsmith_f_op_f32(-182f - -1000f)), 689f)))) - arg_3.x);
    var var_2 = arg_1;
    var var_3 = reverseBits(var_0.zxw);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_3.x)), 1000f), -2152f, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x * -126f), arg_3.x), _wgslsmith_f_op_f32(-var_1))), -221f);
    return Struct_1(_wgslsmith_dot_vec2_i32(max(_wgslsmith_mod_vec2_i32(min(vec2<i32>(-3994i, 12109i), vec2<i32>(21574i, u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, arg_0.a), vec2<i32>(arg_0.a, 0i))), vec2<i32>(firstTrailingBit(u_input.a), 28078i)), vec2<i32>(u_input.a, max(-1i, -2147483647i))), _wgslsmith_sub_i32(arg_2.b, firstTrailingBit(abs(i32(-1i) * -28009i))), arg_0.c);
}

fn func_1() -> i32 {
    let var_0 = func_4(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -675f), _wgslsmith_f_op_f32(round(2001f))), -232f, u_input.b != (i32(-1i) * -65384i))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(103f - _wgslsmith_f_op_f32(846f - 1254f)))), Struct_1(_wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, -32218i, -1421i), vec4<i32>(21051i, u_input.a, -2147483647i, -26599i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, u_input.a), select(vec2<i32>(u_input.a, u_input.b), vec2<i32>(u_input.b, u_input.b), vec2<bool>(true, true)))), u_input.b, select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-693f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-563f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-390f)), -1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1845f * -294f))), _wgslsmith_f_op_f32(max(498f, 1f)))));
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(369f, -746f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_3 = var_0;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-181f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1622f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -380f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-554f)))))));
    return ~_wgslsmith_mult_i32(func_4(func_2(), 1037f, Struct_1(1i, var_1.b, func_2().c), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -920f), _wgslsmith_f_op_f32(259f + 636f), -166f)).a, var_0.b ^ ~_wgslsmith_clamp_i32(var_3.b, var_0.a, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(vec3<i32>(-57397i, reverseBits(-27250i), func_1()));
    let var_1 = 2147483647i;
    var var_2 = func_2();
    var_2 = func_2();
    let var_3 = 1u;
    var_2 = func_2();
    var var_4 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(9484u, ~var_3, countOneBits(var_3), firstTrailingBit(10006u)) >> (vec4<u32>(var_3, _wgslsmith_clamp_u32(1u, var_3, var_3), abs(var_3), var_3) % vec4<u32>(32u)), ~(~(vec4<u32>(0u, 13136u, 43438u, 61906u) & vec4<u32>(170u, var_3, 49145u, 770u)))), select(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(var_3, 15270u), abs(var_3), ~0u, abs(var_3)), vec4<u32>(var_3, var_3, 1u, 76612u) ^ _wgslsmith_add_vec4_u32(vec4<u32>(var_3, 66153u, var_3, 47082u), vec4<u32>(4294967295u, var_3, 0u, 41876u))), ~(~(~vec4<u32>(1u, var_3, var_3, 2899u))), select(vec4<bool>(true, !var_2.c.x, !var_2.c.x, false), vec4<bool>(var_2.c.x, select(var_2.c.x, var_2.c.x, var_2.c.x), var_2.c.x, true), select(select(vec4<bool>(false, var_2.c.x, var_2.c.x, true), vec4<bool>(var_2.c.x, true, var_2.c.x, var_2.c.x), true), select(vec4<bool>(false, false, false, var_2.c.x), vec4<bool>(true, true, false, var_2.c.x), vec4<bool>(false, false, true, var_2.c.x)), true))));
    let var_5 = true;
    let var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, select(vec4<u32>(var_6, var_3, countOneBits(4294967295u), ~firstLeadingBit(var_6)), vec4<u32>(37191u, 4294967295u, var_6, 46519u), vec4<bool>(true, (u_input.a ^ var_0.x) >= 1i, true, var_2.c.x)), ~(~min(1u, reverseBits(var_3))));
}

