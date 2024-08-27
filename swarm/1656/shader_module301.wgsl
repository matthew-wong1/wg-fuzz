struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1646f)))), 518f, _wgslsmith_f_op_f32(f32(-1f) * -496f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(557f - -349f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-849f, _wgslsmith_f_op_f32(1381f + -1810f), _wgslsmith_f_op_f32(max(-569f, 1017f)), -1336f))))), !vec2<bool>(!all(vec2<bool>(true, true)), any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))), Struct_1(firstTrailingBit(~abs(vec3<i32>(61784i, -37197i, arg_0))), vec3<u32>(31516u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.b.x, u_input.b.x, 49970u), vec4<u32>(u_input.d.x, 4509u, u_input.b.x, 37678u)) | 4294967295u, _wgslsmith_dot_vec2_u32(u_input.d.xx, vec2<u32>(u_input.b.x, 21287u)) | 1u), _wgslsmith_dot_vec2_i32(max(vec2<i32>(2597i, 0i), vec2<i32>(arg_0, arg_0)) & (vec2<i32>(u_input.a, -14474i) & vec2<i32>(2147483647i, -27877i)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 50229i), vec2<i32>(arg_0, -2147483647i)))), max(reverseBits(59946i), arg_0 & -1i));
    var var_1 = Struct_2(var_0.a.xx, vec2<i32>(var_0.c.a.x, (i32(-1i) * -38573i) << (0u % 32u)), var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, var_0.a.x, -415f), vec3<f32>(var_0.a.x, 1000f, var_0.a.x), vec3<bool>(false, var_0.b.x, var_0.b.x))) - var_0.a.wyy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-var_0.a.x)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(626f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))) - _wgslsmith_f_op_f32(-var_0.a.x))));
    return ~var_0.c.b.x;
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(186f, -445f), vec2<f32>(698f, 180f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-180f, 236f))))), -vec2<i32>(-(~u_input.a), 46856i), Struct_1(vec3<i32>(-14318i, u_input.a, 2147483647i), vec3<u32>(func_3(abs(u_input.c)), ~u_input.b.x & 4294967295u, u_input.b.x), 1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(535f + 1697f), _wgslsmith_f_op_f32(650f + 275f), false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-522f + -1260f))), -635f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1043f)), _wgslsmith_f_op_f32(step(1000f, 591f)), _wgslsmith_f_op_f32(-190f - 454f)))), -523f);
    let var_1 = var_0.c;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(121f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1768f, 246f))))), var_0.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -1012f), -1656f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.d.x, var_0.e))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(913f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.x), 3079f));
    var_3 = -574f;
    return select(!select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), true), vec4<bool>(true, true, true, true), true), !(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false))), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true))), vec4<bool>(true, true, all(vec2<bool>(false, true)), any(vec4<bool>(false, true, false, false))), true & all(vec2<bool>(true, true))), vec4<bool>(true, false, all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), all(vec3<bool>(true, true, false)) | true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)))));
}

fn func_1() -> Struct_1 {
    var var_0 = 1638i;
    var var_1 = ~vec2<i32>(0i, -2147483647i);
    var var_2 = !vec4<bool>(false, true, !all(vec2<bool>(true, true)), (true & (0i < u_input.a)) | !all(vec2<bool>(false, false)));
    var_2 = !select(!vec4<bool>(var_2.x, true, !var_2.x, !var_2.x), select(func_2(), !vec4<bool>(var_2.x, var_2.x, false, true), !select(var_2.x, false, var_2.x)), !(!vec4<bool>(false, var_2.x, false, var_2.x)));
    return Struct_1(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -1i, var_1.x), vec3<i32>(u_input.a, -53109i, u_input.a)), vec3<i32>(u_input.a, u_input.c, -19373i)), vec3<u32>(_wgslsmith_mod_u32(1u, ~0u), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.d.x, 4294967295u), ~u_input.b.x), _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, u_input.d.x))) & u_input.d, max(reverseBits(2893i), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~20616u;
    var var_1 = vec2<bool>(!any(vec2<bool>(false, true)) && false, false);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(818f, -665f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-780f, -804f))))), -vec2<i32>(select(~u_input.a, abs(u_input.c), true), _wgslsmith_sub_i32(1i, ~(-17622i))), func_1(), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -574f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(757f))), _wgslsmith_f_op_f32(-778f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -608f), -172f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(floor(873f)))) * _wgslsmith_f_op_f32(-1588f * 1817f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1584f - -758f) + _wgslsmith_f_op_f32(ceil(365f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1577f, 557f) + _wgslsmith_f_op_f32(576f * 2616f))))));
    var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-238f, var_2.a.x) + var_2.a))), _wgslsmith_sub_vec2_i32(~var_2.c.a.yx, -min(vec2<i32>(var_2.c.a.x, u_input.a), var_2.c.a.yz) | vec2<i32>(abs(-1i), countOneBits(-2147483647i))), var_2.c, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_2.a.x)), _wgslsmith_f_op_f32(step(-524f, var_2.a.x)), true)))), var_2.d.x, 1f), _wgslsmith_f_op_f32(-var_2.e));
    let var_3 = select(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(75128u, var_2.c.b.x, 4294967295u, 1u), ~vec4<u32>(var_2.c.b.x, 4294967295u, 0u, var_2.c.b.x), ~vec4<u32>(1u, 0u, u_input.b.x, var_2.c.b.x))), ~max(vec4<u32>(6065u, ~u_input.d.x, ~77299u, u_input.b.x), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(37165u, 1u, u_input.d.x, 1u), vec4<u32>(var_2.c.b.x, u_input.b.x, 103278u, var_2.c.b.x)), ~vec4<u32>(var_2.c.b.x, var_2.c.b.x, 95009u, 39434u))), !(!(!var_1.x)));
    var var_4 = var_2.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(11218u, ~_wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(func_1().b.x, ~66370u, _wgslsmith_add_u32(2002u, var_3.x))), ~(~_wgslsmith_mod_u32(1u, ~var_3.x)));
}

