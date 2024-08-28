struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(820f, -566f, -865f, arg_1.b.b.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b) + vec4<f32>(arg_1.b.b.x, var_0.x, -340f, -606f)), vec4<f32>(1638f, 213f, _wgslsmith_f_op_f32(min(var_0.x, arg_1.b.b.x)), 1795f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_0.b * vec4<f32>(var_0.x, -1265f, 463f, var_0.x)))))), vec4<f32>(1f, _wgslsmith_f_op_f32(arg_1.b.b.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(953f, 377f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_div_f32(1701f, -365f), true && (arg_3 > 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2720f)))), (~select(1u, 4294967295u, true) <= abs(abs(arg_1.b.a.x))) || false));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_div_f32(arg_0.b.x, arg_1.b.b.x), true)) * arg_1.b.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-993f - var_0.x), var_0.x) + -206f), -473f));
    var_0 = arg_1.b.b;
    return -u_input.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = Struct_3(arg_0.a, Struct_2(arg_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(241f - 1110f), _wgslsmith_f_op_f32(step(984f, 356f)), -624f, _wgslsmith_f_op_f32(618f * 965f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1335f, -250f, -1073f, -397f) * vec4<f32>(1f, 1f, 1f, 1f))), arg_0, arg_0), arg_0);
    let var_1 = _wgslsmith_div_u32(1u, 1u);
    var var_2 = false;
    var var_3 = abs(~min(u_input.a, -(vec4<i32>(var_0.a, var_0.a, u_input.a.x, arg_0.a) | u_input.a)));
    let var_4 = var_1;
    return ~var_0.b.a;
}

fn func_2() -> u32 {
    let var_0 = Struct_2(func_4(Struct_1(func_3(Struct_2(vec4<u32>(1u, 112799u, 1u, 4294967295u), vec4<f32>(237f, -512f, 2213f, 990f), Struct_1(-12009i), Struct_1(37924i)), Struct_3(u_input.a.x, Struct_2(vec4<u32>(0u, 101425u, 7835u, 14601u), vec4<f32>(-581f, -211f, -869f, 1000f), Struct_1(u_input.a.x), Struct_1(u_input.a.x)), Struct_1(u_input.a.x)), Struct_1(u_input.a.x), -1i)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))) | (vec4<u32>(countOneBits(0u), _wgslsmith_mult_u32(25626u, 5309u), reverseBits(4294967295u), ~1u) | (func_4(Struct_1(u_input.a.x), vec4<u32>(9318u, 4294967295u, 4294967295u, 4294967295u)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1131f, -342f, -1449f, -696f), vec4<f32>(158f, 1000f, -635f, 573f))), vec4<f32>(1f, 1f, 1f, 1f), vec4<bool>(true, all(vec4<bool>(true, true, false, true)), select(false, false, true), true)))), Struct_1(max((u_input.a.x >> (1u % 32u)) | 1i, _wgslsmith_mod_i32(~(-1i), 34842i))), Struct_1(u_input.a.x));
    let var_1 = select(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true))), !vec4<bool>(true & any(vec4<bool>(true, false, true, true)), true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, !any(vec2<bool>(false, true)), true | (var_0.b.x == var_0.b.x), !(var_0.d.a == var_0.d.a)), true));
    return select(~(0u >> (_wgslsmith_mult_u32(var_0.a.x ^ var_0.a.x, var_0.a.x) % 32u)), _wgslsmith_mod_u32(4294967295u, 1u) & (0u | var_0.a.x), _wgslsmith_div_f32(-800f, _wgslsmith_f_op_f32(sign(var_0.b.x))) > 2522f);
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec2_i32(u_input.a.zy, -(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), u_input.a.xz) | vec2<i32>(22845i, 11801i)) & max(abs(u_input.a.yy ^ u_input.a.xw), vec2<i32>(1i, u_input.a.x)), _wgslsmith_clamp_vec2_i32(u_input.a.xz, u_input.a.wz, (-u_input.a.ww | u_input.a.zy) | u_input.a.xz));
    var var_1 = -1017f;
    let var_2 = min(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(61619u, 1u, 57991u, 1u)), func_2()), countOneBits(~16504u)), ~(~32712u));
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(161f)) - _wgslsmith_f_op_f32(-221f - -2290f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -793f) + 428f))), -155f, -675f, 850f);
    let var_4 = _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), ~reverseBits(~select(vec2<u32>(var_2, var_2), vec2<u32>(11311u, var_2), false)));
    return Struct_1(min(-78421i, countOneBits(-1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<bool>(true, true));
    let var_1 = true & all(select(vec4<bool>(true, all(vec3<bool>(false, false, true)), true, all(vec2<bool>(true, true))), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), _wgslsmith_dot_vec2_i32(vec2<i32>(-16580i, 2147483647i), vec2<i32>(var_0.a, var_0.a)) > u_input.a.x));
    let var_2 = 52373u;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-409f)), -519f)), vec2<f32>(_wgslsmith_f_op_f32(abs(-462f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1374f * -286f))))));
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.x, -163f), vec2<f32>(var_3.x, -136f), true)))))));
    var var_4 = Struct_2(~vec4<u32>(~var_2, 0u, var_2, 21975u) | (countOneBits(vec4<u32>(1u, 4294967295u, 1u, 0u)) ^ max(select(vec4<u32>(var_2, var_2, 34938u, var_2), vec4<u32>(var_2, var_2, var_2, 65964u), vec4<bool>(var_1, false, var_1, false)), countOneBits(vec4<u32>(16757u, var_2, 1u, var_2)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, -546f, 1065f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1588f, 184f, 780f, 142f) - vec4<f32>(var_3.x, -590f, var_3.x, 326f))), var_1)))), var_0, Struct_1(func_3(Struct_2(select(vec4<u32>(16090u, var_2, var_2, 66011u), vec4<u32>(var_2, 7152u, 4294967295u, 0u), var_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-462f, -1000f, -421f, var_3.x)), var_0, Struct_1(-13894i)), Struct_3(u_input.a.x, Struct_2(vec4<u32>(1u, var_2, 0u, 4595u), vec4<f32>(-837f, -1096f, -630f, 453f), var_0, Struct_1(0i)), func_1(vec2<bool>(var_1, false))), var_0, u_input.a.x)));
    var var_5 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(f32(-1f) * -1161f)))) + _wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.x - 261f), -427f))))), _wgslsmith_f_op_f32(round(131f))));
    var_4 = Struct_2(~var_4.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -773f)), 1571f, _wgslsmith_f_op_f32(450f + var_4.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-644f + var_4.b.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_4.b.x, var_4.b.x, var_4.b.x, 176f), vec4<f32>(var_4.b.x, 218f, -1015f, var_4.b.x))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.x, var_4.b.x, var_3.x, 1000f))))))), func_1(!select(select(vec2<bool>(var_1, true), vec2<bool>(var_1, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, var_1), vec2<bool>(var_1, true)), any(vec3<bool>(true, var_1, false)))), Struct_1(-12731i));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(~(~var_4.c.a), var_4.c.a, 43264i, _wgslsmith_sub_i32(-2147483647i, var_4.d.a))), -17309i, u_input.a.www, _wgslsmith_f_op_f32(floor(422f)), -vec2<i32>(_wgslsmith_div_i32(0i, -2147483647i), func_1(vec2<bool>(false, var_1)).a) ^ u_input.a.xx);
}

