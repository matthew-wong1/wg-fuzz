struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    return arg_1;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = select(arg_2.c, vec2<u32>(103u, 18953u), -(~u_input.b.x) == _wgslsmith_div_i32(-1i, u_input.b.x));
    var_0 = _wgslsmith_mult_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(arg_2.c, arg_2.c) >> (~vec2<u32>(10045u, 13843u) % vec2<u32>(32u))) << (abs(~vec2<u32>(arg_1.c.x, 39858u) >> (vec2<u32>(arg_2.c.x, arg_2.c.x) % vec2<u32>(32u))) % vec2<u32>(32u)), arg_1.c);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1240f - arg_0.x), -688f)) + -670f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, 1035f)) * _wgslsmith_f_op_f32(-arg_0.x)))));
    var var_2 = func_2(arg_1.a.x, arg_2);
    var var_3 = _wgslsmith_f_op_f32(exp2(arg_0.x));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(~u_input.b.x, _wgslsmith_div_i32(-26781i, u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(-1i, u_input.b.x)), u_input.b.x)), vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(-u_input.b.zy, u_input.b.xz), -reverseBits(u_input.b.x), u_input.b.x)), -(~vec4<i32>(1i, 1i, 1i, 1i)));
    let var_1 = arg_2;
    let var_2 = vec3<u32>(u_input.a, u_input.a, _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_0.c.x, ~(~u_input.a)), u_input.a));
    var var_3 = vec3<i32>(abs(~12942i), -40100i, -17862i);
    var_3 = vec3<i32>(~0i, 1i, -(~(0i << (~arg_0.c.x % 32u))));
    return Struct_1(arg_0.b, select(select(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1209f, -411f)), arg_0, func_2(arg_0.a.x, Struct_1(arg_0.b, arg_0.a, arg_0.c))).b, !arg_0.a, arg_0.a), !arg_0.b, func_2(false, arg_0).b.x), ~_wgslsmith_mod_vec2_u32(var_2.xy, _wgslsmith_mod_vec2_u32(max(arg_0.c, arg_0.c), var_2.zz)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = func_2(!(!all(vec2<bool>(arg_1.a.x, arg_0.b.x))), func_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(2454f, 1000f, -397f), vec3<f32>(620f, -571f, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(162f, 220f, -714f) * vec3<f32>(-1345f, 671f, -367f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-406f, -876f, -1052f) + vec3<f32>(-671f, 193f, 633f))))), func_2(func_2(arg_0.a.x, Struct_1(vec3<bool>(false, true, true), arg_0.a, vec2<u32>(1u, 69442u))).b.x, arg_1), arg_0));
    let var_1 = func_2(arg_0.b.x, arg_0);
    let var_2 = func_4(Struct_1(!func_4(func_4(var_1, 563f, -186f), 1f, _wgslsmith_f_op_f32(390f * 277f)).b, vec3<bool>(!(var_0.a.x | false), true, true), select(arg_2.zw, max(arg_2.zx, vec2<u32>(0u, 0u)), true) & (select(var_1.c, arg_2.xx, arg_1.a.xz) >> (vec2<u32>(u_input.a, 91729u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1806f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -808f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-346f)))));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))) - _wgslsmith_f_op_f32(f32(-1f) * -139f))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1186f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1048f)) - _wgslsmith_f_op_f32(f32(-1f) * -649f)))) - -293f);
    return Struct_1(!arg_1.a, func_4(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(583f, -1000f)) + _wgslsmith_f_op_f32(870f * -2297f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(845f, 215f)), _wgslsmith_f_op_f32(f32(-1f) * -116f)))), -1000f).b, select(~(~vec2<u32>(var_1.c.x, u_input.a) >> (abs(vec2<u32>(34375u, u_input.a)) % vec2<u32>(32u))), arg_0.c, true || !arg_1.a.x));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = func_5(func_4(func_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1257f, -498f, -815f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(466f, 610f, -738f), vec3<f32>(-951f, 2129f, 1459f))))), Struct_1(vec3<bool>(false, false, true), vec3<bool>(true, true, false), arg_0.zy), func_2(false, Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, true, true), arg_0.yy))), -1013f, 1220f), Struct_1(vec3<bool>(true, true, true), vec3<bool>(true & func_4(Struct_1(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec2<u32>(arg_0.x, arg_0.x)), 991f, -837f).b.x, !all(vec2<bool>(false, true)), !all(vec3<bool>(true, false, true))), vec2<u32>(1u, _wgslsmith_div_u32(select(u_input.a, 4294967295u, false), 32983u))), _wgslsmith_div_vec4_u32(max(~vec4<u32>(u_input.a, 45525u, u_input.a, 59922u), reverseBits(vec4<u32>(u_input.a, 36652u, arg_0.x, u_input.a))), ~vec4<u32>(arg_0.x, u_input.a << (arg_0.x % 32u), ~arg_0.x, 73347u)));
    let var_1 = func_2(false, func_2(!func_4(func_5(Struct_1(vec3<bool>(var_0.b.x, true, var_0.a.x), var_0.b, arg_0.xy), Struct_1(vec3<bool>(false, true, var_0.a.x), var_0.a, vec2<u32>(arg_0.x, 0u)), vec4<u32>(var_0.c.x, u_input.a, 1u, u_input.a)), _wgslsmith_f_op_f32(1788f * 988f), _wgslsmith_f_op_f32(trunc(-804f))).b.x, func_5(Struct_1(!vec3<bool>(true, var_0.b.x, var_0.a.x), !vec3<bool>(var_0.a.x, true, true), var_0.c << (arg_0.zx % vec2<u32>(32u))), Struct_1(vec3<bool>(false, var_0.b.x, var_0.a.x), func_4(Struct_1(vec3<bool>(var_0.b.x, var_0.b.x, var_0.a.x), vec3<bool>(false, false, false), var_0.c), 197f, -298f).a, ~vec2<u32>(62952u, var_0.c.x)), vec4<u32>(reverseBits(u_input.a), 60687u, max(4294967295u, arg_0.x), var_0.c.x))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1703f, -3150f)))) - _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(2037f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -445f)))));
    let var_3 = -709f;
    let var_4 = func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3, _wgslsmith_div_f32(-1073f, var_3), -904f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(925f, var_3, var_3))) - vec3<f32>(-1000f, var_3, 917f)))), var_1, Struct_1(select(!func_4(Struct_1(vec3<bool>(true, false, var_1.a.x), var_0.b, var_0.c), var_3, -902f).b, func_3(vec3<f32>(-528f, -2139f, var_3), var_1, func_3(vec3<f32>(var_3, -304f, -1000f), Struct_1(var_0.b, vec3<bool>(var_1.a.x, true, true), vec2<u32>(u_input.a, 4294967295u)), var_1)).a, !vec3<bool>(var_1.b.x, var_0.a.x, true)), var_0.b, vec2<u32>(4294967295u, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_3, -704f)), func_2(var_1.a.x, var_1), var_1).c.x)));
    return func_2(false, var_4);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<u32>(~(~max(u_input.a, 9929u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(49026u, u_input.a, u_input.a, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) & vec4<u32>(48612u, 0u, u_input.a, 1u), select(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, 4294967295u), vec4<bool>(true, false, false, true)))), ~(~(~u_input.a))));
    let var_1 = _wgslsmith_sub_i32(select(u_input.b.x, -1i, func_1(~vec3<u32>(1u, 27444u, 1u)).a.x) & u_input.b.x, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(1i, abs(2147483647i), max(u_input.b.x, u_input.b.x), u_input.b.x)), max(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -8909i, u_input.b.x, 18833i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i)), _wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.b.x, u_input.b.x, -21695i, -1i), vec4<i32>(u_input.b.x, 1i, -11814i, u_input.b.x)), vec4<i32>(u_input.b.x, 14011i, 0i, u_input.b.x)))));
    var var_2 = false;
    var_0 = Struct_1(!vec3<bool>(any(select(vec4<bool>(true, false, var_0.a.x, false), vec4<bool>(var_0.b.x, var_0.a.x, var_0.b.x, var_0.b.x), vec4<bool>(var_0.a.x, var_0.a.x, true, false))), var_1 <= (0i | u_input.b.x), true), var_0.a, ~var_0.c);
    var_0 = Struct_1(func_1(~vec3<u32>(_wgslsmith_clamp_u32(22520u, var_0.c.x, 0u), var_0.c.x, var_0.c.x)).b, vec3<bool>(_wgslsmith_sub_u32(u_input.a, firstLeadingBit(u_input.a)) == u_input.a, !(!all(vec4<bool>(var_0.a.x, true, false, true))), var_0.b.x), ~max(~var_0.c & var_0.c, (vec2<u32>(var_0.c.x, u_input.a) & vec2<u32>(33163u, var_0.c.x)) & (vec2<u32>(16237u, var_0.c.x) << (vec2<u32>(28238u, 5469u) % vec2<u32>(32u)))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1503f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1455f, 314f)) * _wgslsmith_f_op_f32(-1033f - 468f))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -872f), _wgslsmith_f_op_f32(613f - -2921f)))))), _wgslsmith_f_op_f32(903f * 998f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -765f) + _wgslsmith_f_op_f32(132f + _wgslsmith_f_op_f32(step(-1469f, 1306f))))));
    var_0 = func_2(!(!var_0.a.x), Struct_1(!(!(!var_0.b)), var_0.b, ~func_1(vec3<u32>(9996u, 1u, u_input.a)).c));
    let x = u_input.a;
    s_output = StorageBuffer(0u, u_input.b.x ^ -(~var_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_3.zx)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_3.yz, vec2<f32>(-724f, -1461f))))), func_5(Struct_1(select(var_0.a, vec3<bool>(true, true, true), var_0.a.x), var_0.b, var_0.c), func_5(func_5(func_3(var_3, Struct_1(vec3<bool>(true, var_0.a.x, var_0.b.x), var_0.a, var_0.c), Struct_1(var_0.a, var_0.a, var_0.c)), Struct_1(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(false, true, false), var_0.c), ~vec4<u32>(u_input.a, 50573u, u_input.a, 73991u)), func_5(func_5(Struct_1(var_0.a, vec3<bool>(false, var_0.a.x, false), vec2<u32>(0u, var_0.c.x)), Struct_1(vec3<bool>(false, var_0.b.x, false), var_0.b, vec2<u32>(var_0.c.x, 1u)), vec4<u32>(u_input.a, var_0.c.x, var_0.c.x, 7989u)), Struct_1(var_0.a, var_0.b, vec2<u32>(var_0.c.x, u_input.a)), select(vec4<u32>(u_input.a, var_0.c.x, u_input.a, u_input.a), vec4<u32>(u_input.a, var_0.c.x, 50897u, u_input.a), vec4<bool>(var_0.a.x, false, var_0.a.x, false))), vec4<u32>(var_0.c.x | var_0.c.x, reverseBits(4294967295u), 6290u, 0u)), firstLeadingBit(~vec4<u32>(0u, u_input.a, 11013u, u_input.a))).c.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, 4294967295u, var_0.c.x) | vec3<u32>(1829u, var_0.c.x, 4294967295u)), vec3<u32>(70939u, var_0.c.x, 4073u)), 4294967295u));
}

