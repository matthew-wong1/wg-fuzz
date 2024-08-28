struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<bool>) -> f32 {
    let var_0 = Struct_1(select(arg_1.ww, arg_1.zz, !(firstTrailingBit(1u) > u_input.d)), !arg_2.x, 1000f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(687f, 118f, -981f, -2022f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1477f, -1240f, -1000f, 352f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(919f, 1247f, -503f, -834f), vec4<f32>(-1322f, 1269f, 670f, 1728f), arg_2.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(225f, 1495f, -333f, 454f), vec4<f32>(-2363f, -820f, -567f, 282f), arg_1.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -468f, -588f, 1915f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(851f, -232f, -237f, 613f)))))));
    var var_1 = var_0;
    var_1 = var_0;
    var_1 = var_0;
    var var_2 = ~3666u;
    return var_0.d.x;
}

fn func_2() -> i32 {
    let var_0 = Struct_1(select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), false), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true), any(vec3<bool>(false, all(vec4<bool>(true, true, false, true)), true))), any(vec4<bool>(true, any(vec2<bool>(false, false)), true, true)), 552f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(23665i, vec4<bool>(true, true, false, true), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1464f, -513f)) - _wgslsmith_f_op_f32(min(103f, -1568f))), _wgslsmith_f_op_f32(f32(-1f) * -951f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(641f)) + _wgslsmith_f_op_f32(1369f + -392f))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-393f * -891f)), _wgslsmith_f_op_f32(round(791f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-126f * -988f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(-12950i, vec4<bool>(false, false, false, false), vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(min(779f, -281f))))));
    let var_1 = var_0;
    let var_2 = u_input.b.x;
    let var_3 = u_input.c.xxx;
    let var_4 = var_0;
    return _wgslsmith_mod_i32(reverseBits(-2147483647i), firstLeadingBit(1i));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> f32 {
    let var_0 = ~(~abs(_wgslsmith_mod_vec2_u32(u_input.b.yz, u_input.a.xy)));
    let var_1 = select(!vec4<bool>(all(!arg_1.a), !arg_1.a.x, arg_3.a.x, arg_3.a.x), vec4<bool>(select(false, false, true) | true, arg_1.a.x != arg_3.a.x, all(vec3<bool>(true, false, true != arg_3.b)), !all(!vec3<bool>(arg_1.a.x, false, true))), !select(vec4<bool>(all(vec4<bool>(true, false, arg_3.a.x, true)), true, !arg_3.b, arg_3.a.x && arg_3.a.x), vec4<bool>(u_input.c.x < var_0.x, false, arg_3.a.x, true), false));
    var var_2 = arg_2;
    let var_3 = select(~(vec3<u32>(u_input.d, u_input.b.x, _wgslsmith_div_u32(4294967295u, 23803u)) | max(firstLeadingBit(vec3<u32>(4294967295u, 0u, 11841u)), vec3<u32>(973u, var_0.x, u_input.a.x))), ~(~firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.c.x))) >> (vec3<u32>(_wgslsmith_mod_u32(u_input.b.x & var_0.x, max(u_input.b.x, u_input.c.x)), abs(23999u ^ u_input.d), 4294967295u) % vec3<u32>(32u)), !var_1.xzy);
    var var_4 = Struct_1(!vec2<bool>(_wgslsmith_mod_i32(-1i, arg_2) == firstTrailingBit(-26454i), true), var_1.x && var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.c))))), arg_1.d);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-389f * 2352f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3.d.x, arg_1.c)) * _wgslsmith_f_op_f32(1497f * 339f))) * arg_1.d.x)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> vec4<f32> {
    let var_0 = arg_1.d;
    let var_1 = 352f;
    let var_2 = _wgslsmith_f_op_vec4_f32(arg_1.d * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(f32(-1f) * -1562f)), 935f)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(40818i, Struct_1(vec2<bool>(arg_1.a.x, false), arg_1.a.x, -784f, vec4<f32>(var_2.x, arg_2, -1000f, -2195f)), func_2(), Struct_1(arg_1.a, true, -1581f, vec4<f32>(-1704f, var_2.x, var_2.x, var_1))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_0.x)))), var_0.x))));
    var var_4 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, -205f, -2049f, 1281f)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1985f, -478f, var_0.x, arg_1.d.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(vec2<bool>(true & arg_0.a.x, -968f != arg_2.x), all(arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, -1000f, arg_0.d.x) - arg_0.d)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_3(select(min(0i, -2147483647i), _wgslsmith_sub_i32(2147483647i, 5659i), true), !(!(!vec4<bool>(var_0.a.x, arg_1.x, false, false))), arg_1)), -920f);
    let var_2 = !any(!arg_1);
    let var_3 = select(-2147483647i, reverseBits(-19909i), arg_0.b);
    let var_4 = reverseBits(~vec2<i32>(~(-25560i), var_3));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(vec2<bool>(!all(vec3<bool>(false, true, false)), true), true, 169f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1224f, -1083f, -1000f, 854f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(-1000f, -177f, 399f), Struct_1(vec2<bool>(false, true), true, -1002f, vec4<f32>(-1304f, -1308f, 669f, -248f)), 1565f))))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)), vec3<bool>(true, select(true, true, true), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), any(vec2<bool>(true, true)) || true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-228f, _wgslsmith_f_op_f32(ceil(-483f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-268f))))));
    let var_1 = 0i;
    var var_2 = ~max(u_input.a.x, ~(~(~1u)));
    var_2 = abs(firstTrailingBit(0u));
    var_2 = min(u_input.a.x, u_input.c.x);
    let var_3 = vec4<bool>(true, !(!(all(vec4<bool>(false, true, true, var_0.a.x)) | (false == var_0.b))), var_0.b, false);
    var_2 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -1064f))) - _wgslsmith_f_op_vec2_f32(ceil(var_0.d.yx))), 1350f, u_input.c >> (vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b.x, 73421u, 14132u), u_input.a.x), 4294967295u, ~u_input.d ^ 44693u, _wgslsmith_mult_u32(u_input.d, _wgslsmith_div_u32(1u, u_input.d))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(sign(676f)));
}

